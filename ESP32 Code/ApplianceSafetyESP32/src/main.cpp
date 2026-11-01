#include <Arduino.h>
#include <WiFi.h>
#include <esp_wifi.h>
#include <esp_eap_client.h>
#include <PubSubClient.h>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include "secrets.h"

#define PZEM_RX_PIN 16
#define PZEM_TX_PIN 17
#define PZEM_BAUD 9600

#define MCU_RX_PIN 26
#define MCU_TX_PIN 27
#define MCU_BAUD 9600

#define LEAKAGE_ADC_PIN 34
#define TEMPERATURE_ADC_PIN 35

#define PZEM_ADDRESS 0x01
#define PZEM_RESPONSE_SIZE 25
#define MQTT_BUFFER_SIZE 512

#define PZEM_INTERVAL 1000
#define MCU_DATA_GAP 0
#define MCU_COMMAND_GAP 200
#define MCU_RESPONSE_TIMEOUT 2000
#define MCU_RETRY_LIMIT 3
#define LOW_VOLTAGE_SAMPLE_LIMIT 3
#define NO_POWER_SAMPLE_LIMIT 3
#define NO_POWER_VOLTAGE_LIMIT 50.0f
#define MEASUREMENT_CONFIRM_SAMPLES 3

#define WIFI_RETRY_INTERVAL 15000
#define MQTT_RETRY_INTERVAL 5000

#define PZEM_FAILURE_LIMIT 2
#define PZEM_RECOVERY_LIMIT 1
#define FAULT_RECOVERY_LIMIT 3

#define VOLTAGE_CHANGE_THRESHOLD 10.0f
#define FREQUENCY_CHANGE_THRESHOLD 1.0f
#define CURRENT_CHANGE_THRESHOLD 0.05f
#define POWER_CHANGE_THRESHOLD 10.0f
#define PF_CHANGE_THRESHOLD 0.02f
#define ENERGY_CHANGE_THRESHOLD 0.1f
#define LEAKAGE_CHANGE_THRESHOLD 0.05f
#define TEMPERATURE_CHANGE_THRESHOLD 2.0f

#define OVER_VOLTAGE_LIMIT 253.0f
#define UNDER_VOLTAGE_LIMIT 207.0f

#define VOLTAGE_RECOVERY_MIN 210.0f
#define VOLTAGE_RECOVERY_MAX 250.0f

#define OVER_FREQUENCY_LIMIT 51.0f
#define UNDER_FREQUENCY_LIMIT 49.0f

#define FREQUENCY_RECOVERY_MIN 49.5f
#define FREQUENCY_RECOVERY_MAX 50.5f

#define OVER_CURRENT_LIMIT 10.0f

#define OVER_TEMPERATURE_LIMIT 70.0f
#define TEMPERATURE_RECOVERY_LIMIT 65.0f

#define TEMPERATURE_SENSOR_ENABLED 1
#define LEAKAGE_SENSOR_ENABLED 0

#define MQTT_COMMAND_TOPIC "appliance/AP001/command"
#define MQTT_EVENT_TOPIC "appliance/AP001/event"

HardwareSerial PZEM(1);
HardwareSerial MCU(2);

WiFiClient wifiClient;
PubSubClient mqttClient(wifiClient);

struct PZEMData {
    float voltage;
    float current;
    float power;
    float energyWh;
    float frequency;
    float powerFactor;
    bool valid;
};

struct SensorData {
    float leakage;
    float temperature;
    bool leakageValid;
    bool temperatureValid;
};

struct OutputState {
    bool relay;
    bool buzzer;
    bool valid;
};

PZEMData pzemData = {0, 0, 0, 0, 0, 0, false};
SensorData sensorData = {0, 0, false, false};
OutputState outputState = {false, false, false};

PZEMData lastSentPZEM = {0, 0, 0, 0, 0, 0, false};
SensorData lastSentSensors = {0, 0, false, false};

unsigned long lastPZEMAttempt = 0;
unsigned long lastWiFiAttempt = 0;
unsigned long lastMQTTAttempt = 0;
unsigned long lastMCUCommand = 0;

uint8_t pzemFailureCount = 0;
uint8_t pzemRecoveryCount = 0;
uint8_t lowVoltageCount = 0;
uint8_t noPowerCount = 0;
uint8_t faultRecoveryCount = 0;
uint8_t data1ChangeCount = 0;
uint8_t data2ChangeCount = 0;
uint8_t data3ChangeCount = 0;

bool noPowerFault = false;
bool faultRecoveryActive = false;

bool relayWasOnBeforeFault = false;
bool relayStateCapturedBeforeFault = false;

bool faultRequiresManualRestart = false;

bool data1Sent = false;
bool data2Sent = false;
bool data3Sent = false;

bool zeroData1Pending = false;
bool zeroData2Pending = false;
bool zeroData3Pending = false;

char currentError[24] = "NONE";

uint16_t modbusCRC(const uint8_t *data, uint8_t length) {
    uint16_t crc = 0xFFFF;

    for (uint8_t i = 0; i < length; i++) {
        crc ^= data[i];

        for (uint8_t j = 0; j < 8; j++) {
            if (crc & 1) {
                crc = (crc >> 1) ^ 0xA001;
            } else {
                crc >>= 1;
            }
        }
    }

    return crc;
}

bool readPZEM(PZEMData &data) {
    uint8_t request[8] = {
        PZEM_ADDRESS, 0x04,
        0x00, 0x00,
        0x00, 0x0A,
        0x00, 0x00
    };

    uint16_t crc = modbusCRC(request, 6);

    request[6] = crc & 0xFF;
    request[7] = crc >> 8;

    while (PZEM.available()) {
        PZEM.read();
    }

    PZEM.write(request, sizeof(request));
    PZEM.flush();

    uint8_t response[PZEM_RESPONSE_SIZE];
    uint8_t received = 0;

    unsigned long start = millis();

    while (millis() - start < 1500) {
        while (PZEM.available() &&
               received < PZEM_RESPONSE_SIZE) {
            response[received++] = PZEM.read();
        }

        if (received == PZEM_RESPONSE_SIZE) {
            break;
        }

        delay(1);
    }

    if (received != PZEM_RESPONSE_SIZE) {
        return false;
    }

    if (response[0] != PZEM_ADDRESS ||
        response[1] != 0x04 ||
        response[2] != 20) {
        return false;
    }

    uint16_t receivedCRC =
        response[23] | ((uint16_t)response[24] << 8);

    if (receivedCRC != modbusCRC(response, 23)) {
        return false;
    }

    uint16_t registers[10];

    for (uint8_t i = 0; i < 10; i++) {
        registers[i] =
            ((uint16_t)response[3 + i * 2] << 8) |
            response[4 + i * 2];
    }

    uint32_t rawCurrent =
        ((uint32_t)registers[2] << 16) | registers[1];

    uint32_t rawPower =
        ((uint32_t)registers[4] << 16) | registers[3];

    uint32_t rawEnergy =
        ((uint32_t)registers[6] << 16) | registers[5];

    data.voltage = registers[0] / 10.0f;
    data.current = rawCurrent / 1000.0f;
    data.power = rawPower / 10.0f;
    data.energyWh = (float)rawEnergy;
    data.frequency = registers[7] / 10.0f;
    data.powerFactor = registers[8] / 100.0f;
    data.valid = true;

    return true;
}

float readLeakageSensor(bool &valid) {
#if LEAKAGE_SENSOR_ENABLED
    uint32_t raw = analogRead(LEAKAGE_ADC_PIN);

    valid = false;
    return 0.0f;
#else
    valid = false;
    return 0.0f;
#endif
}

float readTemperatureSensor(bool &valid) {
#if TEMPERATURE_SENSOR_ENABLED
    uint32_t total = 0;

    for (uint8_t i = 0; i < 8; i++) {
        total += analogReadMilliVolts(TEMPERATURE_ADC_PIN);
        delay(2);
    }

    float voltage = (total / 8.0f) / 1000.0f;
    float temperature = voltage * 100.0f;

    if (temperature < 0.0f || temperature > 150.0f) {
        valid = false;
        return 0.0f;
    }

    valid = true;
    return temperature;
#else
    valid = false;
    return 0.0f;
#endif
}

void readAdditionalSensors() {
    sensorData.leakage =
        readLeakageSensor(sensorData.leakageValid);

    bool temperatureSampleValid = false;

    float newTemperature =
        readTemperatureSensor(temperatureSampleValid);

    if (temperatureSampleValid) {
        sensorData.temperature = newTemperature;
        sensorData.temperatureValid = true;
    }
}

unsigned long getMCUCommandGap(const char *command) {
    if (strncmp(command, "DATA1,", 6) == 0 ||
        strncmp(command, "DATA2,", 6) == 0 ||
        strncmp(command, "DATA3,", 6) == 0 ||
        strncmp(command, "ERROR,", 6) == 0 ||
        strcmp(command, "STATUS") == 0) {
        return MCU_DATA_GAP;
    }

    return MCU_COMMAND_GAP;
}

void waitForMCUCommandGap(const char *command) {
    unsigned long requiredGap = getMCUCommandGap(command);
    unsigned long elapsed = millis() - lastMCUCommand;

    if (lastMCUCommand != 0 && elapsed < requiredGap) {
        delay(requiredGap - elapsed);
    }
}

bool sendMCUCommand(
    const char *command,
    char *response,
    size_t responseSize,
    unsigned long timeout
) {
    const char *expected = nullptr;

    if (strncmp(command, "ERROR,", 6) == 0) {
        expected = "ACK,ERROR";
    } else if (strcmp(command, "STATUS") == 0) {
        expected = "STATUS,";
    }

    if (expected == nullptr) {
        waitForMCUCommandGap(command);

        MCU.print(command);
        MCU.print("\r\n");
        lastMCUCommand = millis();

        if (response != nullptr && responseSize > 0) {
            response[0] = '\0';
        }

        Serial.print("ESP32 TX: ");
        Serial.println(command);
        return true;
    }

    if (response == nullptr || responseSize == 0) {
        return false;
    }

    for (uint8_t attempt = 0; attempt < MCU_RETRY_LIMIT; attempt++) {
        waitForMCUCommandGap(command);

        if (attempt == 0) {
            while (MCU.available()) {
                MCU.read();
            }
        }

        response[0] = '\0';
        MCU.print(command);
        MCU.print("\r\n");
        lastMCUCommand = millis();

        Serial.print("ESP32 TX: ");
        Serial.println(command);

        size_t index = 0;
        unsigned long start = millis();

        while (millis() - start < timeout) {
            while (MCU.available()) {
                char c = (char)MCU.read();

                if (c == '\n') {
                    response[index] = '\0';

                    if (strncmp(response, expected, strlen(expected)) == 0) {
                        return true;
                    }

                    if (strcmp(response, command) == 0) {
                        Serial.print("8051 command echo: ");
                        Serial.println(response);
                    } else if (index > 0) {
                        Serial.print("8051 received: ");
                        Serial.println(response);
                    }

                    index = 0;
                    response[0] = '\0';
                } else if (c != '\r' && index < responseSize - 1) {
                    response[index++] = c;
                }
            }

            delay(1);
        }

        Serial.print("8051 response timeout, attempt ");
        Serial.print(attempt + 1);
        Serial.print("/");
        Serial.print(MCU_RETRY_LIMIT);
        Serial.print(": ");
        Serial.println(command);
    }

    response[0] = '\0';
    Serial.print("8051 command failed after 3 attempts: ");
    Serial.println(command);
    return false;
}

bool sendMCUCommand(const char *command) {
    if (strncmp(command, "ERROR,", 6) == 0) {
        char response[96];

        bool received = sendMCUCommand(
            command,
            response,
            sizeof(response),
            MCU_RESPONSE_TIMEOUT
        );

        if (received) {
            Serial.print("8051 ACK: ");
            Serial.println(response);
        } else {
            Serial.print("8051 failed to acknowledge: ");
            Serial.println(command);
        }

        return received;
    }

    for (uint8_t attempt = 0; attempt < MCU_RETRY_LIMIT; attempt++) {
        waitForMCUCommandGap(command);

        while (MCU.available()) {
            MCU.read();
        }

        MCU.print(command);
        MCU.print("\r\n");
        lastMCUCommand = millis();

        Serial.print("ESP32 TX: ");
        Serial.println(command);

        char response[96];
        size_t index = 0;
        unsigned long start = millis();

        while (millis() - start < MCU_RESPONSE_TIMEOUT) {
            while (MCU.available()) {
                char c = (char)MCU.read();

                if (c == '\n') {
                    response[index] = '\0';

                    if (strcmp(response, command) == 0) {
                        Serial.print("8051 command echo ACK: ");
                        Serial.println(response);
                        return true;
                    }

                    if (index > 0) {
                        Serial.print("8051 received: ");
                        Serial.println(response);
                    }

                    index = 0;
                } else if (c != '\r' && index < sizeof(response) - 1) {
                    response[index++] = c;
                }
            }

            delay(1);
        }

        Serial.print("8051 echo timeout, attempt ");
        Serial.print(attempt + 1);
        Serial.print("/");
        Serial.print(MCU_RETRY_LIMIT);
        Serial.print(": ");
        Serial.println(command);
    }

    Serial.print("8051 command failed after 3 echo attempts: ");
    Serial.println(command);
    return false;
}

bool sendMCUDataPacket(const char *command, const char *expectedAck) {
    char response[96];

    for (uint8_t attempt = 0; attempt < MCU_RETRY_LIMIT; attempt++) {
        waitForMCUCommandGap(command);

        if (attempt == 0) {
            while (MCU.available()) {
                MCU.read();
            }
        }

        response[0] = '\0';

        size_t length = strlen(command);
        size_t written = MCU.write((const uint8_t *)command, length);
        MCU.write('\r');
        MCU.write('\n');
        lastMCUCommand = millis();

        if (written != length) {
            Serial.println("8051 UART transmission failed");
            continue;
        }

        Serial.print("ESP32 TX: ");
        Serial.println(command);

        size_t index = 0;
        unsigned long start = millis();

        while (millis() - start < MCU_RESPONSE_TIMEOUT) {
            while (MCU.available()) {
                char c = (char)MCU.read();

                if (c == '\n') {
                    response[index] = '\0';

                    if (strcmp(response, expectedAck) == 0) {
                        Serial.print("8051 ACK: ");
                        Serial.println(response);
                        return true;
                    }

                    if (strcmp(response, command) == 0) {
                        Serial.print("8051 command echo: ");
                        Serial.println(response);
                    } else if (index > 0) {
                        Serial.print("8051 received: ");
                        Serial.println(response);
                    }

                    index = 0;
                    response[0] = '\0';
                } else if (c != '\r' && index < sizeof(response) - 1) {
                    response[index++] = c;
                }
            }

            delay(1);
        }

        Serial.print("8051 ACK timeout, attempt ");
        Serial.print(attempt + 1);
        Serial.print("/");
        Serial.print(MCU_RETRY_LIMIT);
        Serial.print(": ");
        Serial.println(command);
    }

    Serial.print("8051 packet failed after 3 attempts: ");
    Serial.println(command);
    return false;
}

bool sendDATA1() {
    char command[32];

    snprintf(
        command,
        sizeof(command),
        "DATA1,%.1f,%.3f,%.1f,%.2f",
        pzemData.voltage,
        pzemData.current,
        pzemData.power,
        pzemData.powerFactor
    );

    if (!sendMCUDataPacket(command, "ACK,DATA1")) {
        return false;
    }

    lastSentPZEM.voltage = pzemData.voltage;
    lastSentPZEM.current = pzemData.current;
    lastSentPZEM.power = pzemData.power;
    lastSentPZEM.powerFactor = pzemData.powerFactor;
    lastSentPZEM.valid = true;

    data1Sent = true;

    return true;
}

bool sendDATA2() {
    char command[32];

    snprintf(
        command,
        sizeof(command),
        "DATA2,%.1f,%.1f,%.3f",
        pzemData.frequency,
        pzemData.energyWh / 1000.0f,
        sensorData.leakage
    );

    if (!sendMCUDataPacket(command, "ACK,DATA2")) {
        return false;
    }

    lastSentPZEM.frequency = pzemData.frequency;
    lastSentPZEM.energyWh = pzemData.energyWh;

    lastSentSensors.leakage = sensorData.leakage;
    lastSentSensors.leakageValid =
        sensorData.leakageValid;

    data2Sent = true;

    return true;
}

bool sendDATA3() {
    if (!sensorData.temperatureValid) {
        Serial.println("DATA3 skipped: no valid temperature reading available");
        return false;
    }

    char command[32];

    snprintf(
        command,
        sizeof(command),
        "DATA3,%.1f",
        sensorData.temperature
    );

    if (!sendMCUDataPacket(command, "ACK,DATA3")) {
        return false;
    }

    lastSentSensors.temperature =
        sensorData.temperature;

    lastSentSensors.temperatureValid = true;

    data3Sent = true;

    return true;
}

void clearMeasurementValuesForNoPower() {
    pzemData.voltage = 0.0f;
    pzemData.current = 0.0f;
    pzemData.power = 0.0f;
    pzemData.energyWh = 0.0f;
    pzemData.frequency = 0.0f;
    pzemData.powerFactor = 0.0f;
    pzemData.valid = false;

    sensorData.leakage = 0.0f;
    sensorData.leakageValid = false;

    lastSentPZEM.voltage = 0.0f;
    lastSentPZEM.current = 0.0f;
    lastSentPZEM.power = 0.0f;
    lastSentPZEM.energyWh = 0.0f;
    lastSentPZEM.frequency = 0.0f;
    lastSentPZEM.powerFactor = 0.0f;

    lastSentSensors.leakage = 0.0f;
    lastSentSensors.leakageValid = false;
}

void sendZeroMeasurementsToMCU() {
    zeroData1Pending = true;
    zeroData2Pending = true;
    zeroData3Pending = true;

    data1Sent = false;
    data2Sent = false;
    data3Sent = false;
}

void serviceZeroMeasurementsToMCU() {
    static bool completionReported = false;

    if (!faultRecoveryActive ||
        strcmp(currentError, "NO_POWER") != 0) {
        completionReported = false;
        return;
    }

    if (zeroData1Pending) {
        if (sendMCUDataPacket(
                "DATA1,0.0,0.000,0.0,0.00",
                "ACK,DATA1")) {
            zeroData1Pending = false;
            data1Sent = true;

            lastSentPZEM.voltage = 0.0f;
            lastSentPZEM.current = 0.0f;
            lastSentPZEM.power = 0.0f;
            lastSentPZEM.powerFactor = 0.0f;
            lastSentPZEM.valid = true;
        }
        return;
    }

    if (zeroData2Pending) {
        if (sendMCUDataPacket(
                "DATA2,0.0,0.0,0.000",
                "ACK,DATA2")) {
            zeroData2Pending = false;
            data2Sent = true;

            lastSentPZEM.frequency = 0.0f;
            lastSentPZEM.energyWh = 0.0f;
            lastSentSensors.leakage = 0.0f;
            lastSentSensors.leakageValid = false;
        }
        return;
    }

    if (zeroData3Pending) {
        if (!sensorData.temperatureValid) {
            return;
        }

        char command[24];

        snprintf(
            command,
            sizeof(command),
            "DATA3,%.1f",
            sensorData.temperature
        );

        if (sendMCUDataPacket(command, "ACK,DATA3")) {
            zeroData3Pending = false;
            data3Sent = true;

            lastSentSensors.temperature =
                sensorData.temperature;
            lastSentSensors.temperatureValid = true;
            data3ChangeCount = 0;
        }
        return;
    }

    if (!completionReported) {
        Serial.println("NO_POWER: zero PZEM measurements and actual temperature acknowledged by 8051");
        completionReported = true;
    }
}

void setError(const char *errorName);
void publishTelemetry(bool forcePublish);
void publishNoPowerTelemetry();
void publishEvent(const char *eventName);

void enterNoPowerFault() {
    bool alreadyNoPower =
        faultRecoveryActive &&
        strcmp(currentError, "NO_POWER") == 0;

    noPowerFault = true;
    pzemRecoveryCount = 0;
    faultRecoveryCount = 0;
    noPowerCount = 0;
    lowVoltageCount = 0;

    clearMeasurementValuesForNoPower();

    if (!alreadyNoPower) {
        setError("NO_POWER");
        sendZeroMeasurementsToMCU();
        publishNoPowerTelemetry();
        publishEvent("NO_POWER");
    }
}

void sendChangedMeasurements() {
    if (!pzemData.valid) {
        return;
    }

    bool changed1 =
        fabsf(pzemData.voltage - lastSentPZEM.voltage)
            >= VOLTAGE_CHANGE_THRESHOLD ||
        fabsf(pzemData.current - lastSentPZEM.current)
            >= CURRENT_CHANGE_THRESHOLD ||
        fabsf(pzemData.power - lastSentPZEM.power)
            >= POWER_CHANGE_THRESHOLD ||
        fabsf(pzemData.powerFactor - lastSentPZEM.powerFactor)
            >= PF_CHANGE_THRESHOLD;

    bool changed2 =
        fabsf(pzemData.frequency - lastSentPZEM.frequency)
            >= FREQUENCY_CHANGE_THRESHOLD ||
        fabsf(pzemData.energyWh - lastSentPZEM.energyWh)
            >= ENERGY_CHANGE_THRESHOLD * 1000.0f ||
        (sensorData.leakageValid &&
         (!lastSentSensors.leakageValid ||
          fabsf(sensorData.leakage - lastSentSensors.leakage)
            >= LEAKAGE_CHANGE_THRESHOLD));

    bool changed3 =
        sensorData.temperatureValid &&
        (!lastSentSensors.temperatureValid ||
         fabsf(sensorData.temperature -
               lastSentSensors.temperature)
            >= TEMPERATURE_CHANGE_THRESHOLD);

    if (!data1Sent || changed1) {
        if (data1ChangeCount < MEASUREMENT_CONFIRM_SAMPLES) {
            data1ChangeCount++;
        }
    } else {
        data1ChangeCount = 0;
    }

    if (!data2Sent || changed2) {
        if (data2ChangeCount < MEASUREMENT_CONFIRM_SAMPLES) {
            data2ChangeCount++;
        }
    } else {
        data2ChangeCount = 0;
    }

    if (sensorData.temperatureValid &&
        (!data3Sent || changed3)) {
        if (data3ChangeCount < MEASUREMENT_CONFIRM_SAMPLES) {
            data3ChangeCount++;
        }
    } else {
        data3ChangeCount = 0;
    }

    if (data1ChangeCount >= MEASUREMENT_CONFIRM_SAMPLES) {
        if (sendDATA1()) {
            data1ChangeCount = 0;
        }
    }

    if (data2ChangeCount >= MEASUREMENT_CONFIRM_SAMPLES) {
        if (sendDATA2()) {
            data2ChangeCount = 0;
        }
    }

    if (data3ChangeCount >= MEASUREMENT_CONFIRM_SAMPLES) {
        if (sendDATA3()) {
            data3ChangeCount = 0;
        }
    }
}

void publishEvent(const char *eventName) {
    if (!mqttClient.connected()) {
        return;
    }

    char payload[256];

    snprintf(
        payload,
        sizeof(payload),
        "{\"id\":\"%s\",\"event\":\"%s\",\"error\":\"%s\"}",
        DEVICE_ID,
        eventName,
        currentError
    );

    mqttClient.publish(MQTT_EVENT_TOPIC, payload, true);
}

void publishNoPowerTelemetry() {
    if (!mqttClient.connected()) {
        Serial.println("MQTT unavailable: NO_POWER telemetry will be sent after reconnect");
        return;
    }

    char payload[MQTT_BUFFER_SIZE];

    snprintf(
        payload,
        sizeof(payload),
        "{"
        "\"id\":\"%s\","
        "\"vrms\":0.0,"
        "\"irms\":0.000,"
        "\"real_w\":0.0,"
        "\"pf\":0.00,"
        "\"freq_hz\":0.0,"
        "\"energy_wh\":0.0,"
        "\"energy_kwh\":0.000,"
        "\"leakage_a\":0.000,"
        "\"temperature_c\":%.1f,"
        "\"pzem_valid\":false,"
        "\"leakage_valid\":false,"
        "\"temperature_valid\":%s,"
        "\"relay\":false,"
        "\"buzzer\":false,"
        "\"error\":\"NO_POWER\""
        "}",
        DEVICE_ID,
        sensorData.temperature,
        sensorData.temperatureValid ? "true" : "false"
    );

    if (mqttClient.publish(MQTT_TOPIC, payload, true)) {
        Serial.println("MQTT NO_POWER telemetry published");
        Serial.println(payload);
    } else {
        Serial.println("MQTT NO_POWER telemetry publish failed");
    }
}

void publishTelemetry(bool forcePublish) {
    if (!mqttClient.connected()) {
        return;
    }

    static PZEMData previousPZEM = {};
    static SensorData previousSensors = {};
    static bool previousInitialized = false;
    static bool previousPZEMValid = false;

    bool changed = forcePublish || !previousInitialized;

    if (!changed) {
        changed |= pzemData.valid != previousPZEMValid;

        if (pzemData.valid && previousPZEMValid) {
            changed |=
                fabsf(pzemData.voltage - previousPZEM.voltage)
                >= VOLTAGE_CHANGE_THRESHOLD;

            changed |=
                fabsf(pzemData.frequency - previousPZEM.frequency)
                >= FREQUENCY_CHANGE_THRESHOLD;

            changed |=
                fabsf(pzemData.current - previousPZEM.current)
                >= CURRENT_CHANGE_THRESHOLD;

            changed |=
                fabsf(pzemData.power - previousPZEM.power)
                >= POWER_CHANGE_THRESHOLD;

            changed |=
                fabsf(pzemData.powerFactor - previousPZEM.powerFactor)
                >= PF_CHANGE_THRESHOLD;

            changed |=
                fabsf(pzemData.energyWh - previousPZEM.energyWh)
                >= ENERGY_CHANGE_THRESHOLD * 1000.0f;
        }

        changed |=
            sensorData.temperatureValid !=
            previousSensors.temperatureValid;

        if (sensorData.temperatureValid &&
            previousSensors.temperatureValid) {
            changed |=
                fabsf(sensorData.temperature -
                      previousSensors.temperature)
                >= TEMPERATURE_CHANGE_THRESHOLD;
        }
    }

    if (!changed) {
        return;
    }

    char payload[MQTT_BUFFER_SIZE];

    snprintf(
        payload,
        sizeof(payload),
        "{"
        "\"id\":\"%s\","
        "\"vrms\":%.1f,"
        "\"irms\":%.3f,"
        "\"real_w\":%.1f,"
        "\"pf\":%.2f,"
        "\"freq_hz\":%.1f,"
        "\"energy_wh\":%.1f,"
        "\"energy_kwh\":%.3f,"
        "\"leakage_a\":%.3f,"
        "\"temperature_c\":%.1f,"
        "\"pzem_valid\":%s,"
        "\"leakage_valid\":%s,"
        "\"temperature_valid\":%s,"
        "\"relay\":%s,"
        "\"buzzer\":%s,"
        "\"error\":\"%s\""
        "}",
        DEVICE_ID,
        pzemData.voltage,
        pzemData.current,
        pzemData.power,
        pzemData.powerFactor,
        pzemData.frequency,
        pzemData.energyWh,
        pzemData.energyWh / 1000.0f,
        sensorData.leakage,
        sensorData.temperature,
        pzemData.valid ? "true" : "false",
        sensorData.leakageValid ? "true" : "false",
        sensorData.temperatureValid ? "true" : "false",
        outputState.valid && outputState.relay ? "true" : "false",
        outputState.valid && outputState.buzzer ? "true" : "false",
        currentError
    );

    if (mqttClient.publish(MQTT_TOPIC, payload, true)) {
        previousPZEM = pzemData;
        previousSensors = sensorData;
        previousPZEMValid = pzemData.valid;
        previousInitialized = true;

        Serial.println("MQTT telemetry published");
        Serial.println(payload);
    }
}

void publishStatus() {
    if (!mqttClient.connected()) {
        return;
    }

    char payload[MQTT_BUFFER_SIZE];

    snprintf(
        payload,
        sizeof(payload),
        "{"
        "\"id\":\"%s\","
        "\"vrms\":%.1f,"
        "\"irms\":%.3f,"
        "\"real_w\":%.1f,"
        "\"pf\":%.2f,"
        "\"freq_hz\":%.1f,"
        "\"energy_wh\":%.1f,"
        "\"energy_kwh\":%.3f,"
        "\"leakage_a\":%.3f,"
        "\"temperature_c\":%.1f,"
        "\"pzem_valid\":%s,"
        "\"leakage_valid\":%s,"
        "\"temperature_valid\":%s,"
        "\"relay\":%s,"
        "\"buzzer\":%s,"
        "\"error\":\"%s\""
        "}",
        DEVICE_ID,
        lastSentPZEM.voltage,
        lastSentPZEM.current,
        lastSentPZEM.power,
        lastSentPZEM.powerFactor,
        lastSentPZEM.frequency,
        lastSentPZEM.energyWh,
        lastSentPZEM.energyWh / 1000.0f,
        lastSentSensors.leakage,
        lastSentSensors.temperature,
        pzemData.valid ? "true" : "false",
        lastSentSensors.leakageValid ? "true" : "false",
        lastSentSensors.temperatureValid ? "true" : "false",
        outputState.valid && outputState.relay ? "true" : "false",
        outputState.valid && outputState.buzzer ? "true" : "false",
        currentError
    );

    mqttClient.publish(MQTT_TOPIC, payload, true);

    Serial.println("MQTT STATUS response:");
    Serial.println(payload);
}

bool updateOutputStateFromStatus(const char *response) {
    outputState.valid = false;

    if (strstr(response, "STATUS,") == nullptr) {
        return false;
    }

    if (strstr(response, "RELAY=ON") != nullptr) {
        outputState.relay = true;
    } else if (strstr(response, "RELAY=OFF") != nullptr) {
        outputState.relay = false;
    } else {
        return false;
    }

    if (strstr(response, "BUZZER=ON") != nullptr) {
        outputState.buzzer = true;
    } else if (strstr(response, "BUZZER=OFF") != nullptr) {
        outputState.buzzer = false;
    } else {
        return false;
    }

    outputState.valid = true;
    return true;
}

bool requestMCUStatus() {
    char response[96];

    outputState.valid = false;

    if (sendMCUCommand(
            "STATUS",
            response,
            sizeof(response),
            MCU_RESPONSE_TIMEOUT)) {

        bool validStatus = updateOutputStateFromStatus(response);

        Serial.print("8051 STATUS: ");
        Serial.println(response);

        return validStatus;
    }

    return false;
}

void requestStatus() {
    requestMCUStatus();
    publishStatus();
}

void setRelay(bool state) {
    if (state &&
        (noPowerFault ||
         faultRecoveryActive ||
         faultRequiresManualRestart ||
         strcmp(currentError, "NONE") != 0)) {

        Serial.println("Relay ON rejected: active fault");
        publishEvent("RELAY_ON_REJECTED");
        return;
    }

    sendMCUCommand(state ? "RELAY,ON" : "RELAY,OFF");

    requestStatus();
}

void setBuzzer(bool state) {
    sendMCUCommand(state ? "BUZZER,ON" : "BUZZER,OFF");
    requestStatus();
}

void setError(const char *errorName) {
    bool isOverCurrent =
        strcmp(errorName, "OVER_CURRENT") == 0;

    if (!faultRecoveryActive) {
        bool statusReceived = requestMCUStatus();

        relayStateCapturedBeforeFault =
            statusReceived && outputState.valid;

        relayWasOnBeforeFault =
            relayStateCapturedBeforeFault && outputState.relay;

        if (relayStateCapturedBeforeFault) {
            Serial.print("Relay state captured before fault: ");
            Serial.println(relayWasOnBeforeFault ? "ON" : "OFF");
        } else {
            Serial.println("Could not read relay state before fault; relay will remain OFF after recovery");
        }

        faultRecoveryActive = true;
        faultRequiresManualRestart = isOverCurrent;
    } else if (isOverCurrent) {
        faultRequiresManualRestart = true;
    }

    if (strcmp(currentError, errorName) == 0) {
        return;
    }

    strncpy(
        currentError,
        errorName,
        sizeof(currentError) - 1
    );

    currentError[sizeof(currentError) - 1] = '\0';

    faultRecoveryCount = 0;

    Serial.print("FAULT: ");
    Serial.println(currentError);

    sendMCUCommand("RELAY,OFF");

    if (isOverCurrent ||
        strcmp(errorName, "NO_POWER") == 0) {
        sendMCUCommand("BUZZER,OFF");
    } else {
        sendMCUCommand("BUZZER,ON");
    }

    char command[32];

    snprintf(
        command,
        sizeof(command),
        "ERROR,%s",
        currentError
    );

    sendMCUCommand(command);

    requestStatus();

    publishEvent("FAULT");
    publishTelemetry(true);
}

void clearError(bool manualClear) {
    if (!faultRecoveryActive ||
        strcmp(currentError, "NONE") == 0) {
        return;
    }

    if (faultRequiresManualRestart && !manualClear) {
        return;
    }

    if (!sendMCUCommand("ERROR,NONE")) {
        Serial.println("Fault clear not completed: 8051 did not acknowledge ERROR,NONE");
        return;
    }

    strcpy(currentError, "NONE");

    sendMCUCommand("BUZZER,OFF");

    if (relayStateCapturedBeforeFault &&
        relayWasOnBeforeFault &&
        !faultRequiresManualRestart &&
        !noPowerFault) {

        Serial.println("Restoring previous relay ON state");

        sendMCUCommand("RELAY,ON");
    } else {
        Serial.println("Relay remains OFF after recovery");
    }

    requestStatus();

    publishEvent("FAULT_CLEARED");
    publishTelemetry(true);

    relayWasOnBeforeFault = false;
    relayStateCapturedBeforeFault = false;
    faultRequiresManualRestart = false;
    faultRecoveryActive = false;
    faultRecoveryCount = 0;

    zeroData1Pending = false;
    zeroData2Pending = false;
    zeroData3Pending = false;

    data1Sent = false;
    data2Sent = false;
    data3Sent = false;

    data1ChangeCount = 0;
    data2ChangeCount = 0;
    data3ChangeCount = 0;
}

bool voltageIsSafeForRecovery() {
    return pzemData.voltage >= VOLTAGE_RECOVERY_MIN &&
           pzemData.voltage <= VOLTAGE_RECOVERY_MAX;
}

bool frequencyIsSafeForRecovery() {
    return pzemData.frequency >= FREQUENCY_RECOVERY_MIN &&
           pzemData.frequency <= FREQUENCY_RECOVERY_MAX;
}

bool activeFaultConditionCleared() {
    if (!pzemData.valid) {
        return false;
    }

    if (strcmp(currentError, "NO_POWER") == 0) {
        return voltageIsSafeForRecovery();
    }

    if (strcmp(currentError, "PZEM_COMM_ERROR") == 0) {
        return pzemData.valid &&
               pzemRecoveryCount >= PZEM_RECOVERY_LIMIT &&
               voltageIsSafeForRecovery();
    }

    if (strcmp(currentError, "OVER_VOLTAGE") == 0 ||
        strcmp(currentError, "UNDER_VOLTAGE") == 0) {
        return voltageIsSafeForRecovery();
    }

    if (strcmp(currentError, "OVER_FREQUENCY") == 0 ||
        strcmp(currentError, "UNDER_FREQUENCY") == 0) {
        return frequencyIsSafeForRecovery();
    }

    if (strcmp(currentError, "OVER_TEMPERATURE") == 0) {
        return sensorData.temperatureValid &&
               sensorData.temperature <=
                   TEMPERATURE_RECOVERY_LIMIT;
    }

    return false;
}

void processFaultRecovery() {
    if (!faultRecoveryActive ||
        faultRequiresManualRestart) {
        return;
    }

    if (activeFaultConditionCleared()) {
        if (faultRecoveryCount < FAULT_RECOVERY_LIMIT) {
            faultRecoveryCount++;
        }

        if (faultRecoveryCount >= FAULT_RECOVERY_LIMIT) {
            noPowerFault = false;
            clearError(false);
        }
    } else {
        faultRecoveryCount = 0;
    }
}

void detectProtectionFaults() {
    if (!pzemData.valid || faultRecoveryActive) {
        return;
    }

    if (pzemData.voltage > OVER_VOLTAGE_LIMIT) {
        lowVoltageCount = 0;
        noPowerCount = 0;
        setError("OVER_VOLTAGE");
        return;
    }

    if (pzemData.voltage <= NO_POWER_VOLTAGE_LIMIT) {
        if (noPowerCount < 255) {
            noPowerCount++;
        }

        lowVoltageCount = 0;

        if (noPowerCount >= NO_POWER_SAMPLE_LIMIT) {
            enterNoPowerFault();
        }

        return;
    }

    noPowerCount = 0;

    if (pzemData.voltage < UNDER_VOLTAGE_LIMIT) {
        if (lowVoltageCount < 255) {
            lowVoltageCount++;
        }

        if (lowVoltageCount >= LOW_VOLTAGE_SAMPLE_LIMIT) {
            setError("UNDER_VOLTAGE");
        }

        return;
    }

    lowVoltageCount = 0;
    noPowerCount = 0;

    if (pzemData.frequency > OVER_FREQUENCY_LIMIT) {
        setError("OVER_FREQUENCY");
        return;
    }

    if (pzemData.frequency > 0.0f &&
        pzemData.frequency < UNDER_FREQUENCY_LIMIT) {
        setError("UNDER_FREQUENCY");
        return;
    }

    if (pzemData.current > OVER_CURRENT_LIMIT) {
        setError("OVER_CURRENT");
        return;
    }

    if (sensorData.temperatureValid &&
        sensorData.temperature > OVER_TEMPERATURE_LIMIT) {
        setError("OVER_TEMPERATURE");
        return;
    }
}

void handlePZEMFailure() {
    if (pzemFailureCount < 255) {
        pzemFailureCount++;
    }

    pzemData.valid = false;
    pzemRecoveryCount = 0;

    if (pzemFailureCount >= PZEM_FAILURE_LIMIT) {
        Serial.println("PZEM communication lost for 2 consecutive attempts: treating as NO_POWER");
        enterNoPowerFault();
    } else {
        publishTelemetry(false);
    }
}

void handlePZEMRecovery() {
    pzemFailureCount = 0;

    if (pzemRecoveryCount < 255) {
        pzemRecoveryCount++;
    }
}

void processNoPowerTemperatureUpdate() {
    if (!faultRecoveryActive ||
        strcmp(currentError, "NO_POWER") != 0 ||
        !sensorData.temperatureValid ||
        zeroData3Pending) {
        return;
    }

    bool changed =
        !lastSentSensors.temperatureValid ||
        fabsf(sensorData.temperature -
              lastSentSensors.temperature)
            >= TEMPERATURE_CHANGE_THRESHOLD;

    if (!changed) {
        data3ChangeCount = 0;
        return;
    }

    if (data3ChangeCount < MEASUREMENT_CONFIRM_SAMPLES) {
        data3ChangeCount++;
    }

    if (data3ChangeCount >= MEASUREMENT_CONFIRM_SAMPLES) {
        if (sendDATA3()) {
            data3ChangeCount = 0;
            Serial.println("NO_POWER: updated actual temperature sent to 8051");
        }
    }
}

void processPZEM() {
    PZEMData newData;

    if (readPZEM(newData)) {
        pzemData = newData;

        handlePZEMRecovery();

        readAdditionalSensors();

        detectProtectionFaults();

        processFaultRecovery();

        if (!faultRecoveryActive) {
            sendChangedMeasurements();
        } else if (strcmp(currentError, "NO_POWER") == 0) {
            processNoPowerTemperatureUpdate();
        }

        publishTelemetry(false);

        Serial.printf(
            "V=%.1f V I=%.3f A P=%.1f W PF=%.2f F=%.1f Hz E=%.1f Wh T=%.1f C\n",
            pzemData.voltage,
            pzemData.current,
            pzemData.power,
            pzemData.powerFactor,
            pzemData.frequency,
            pzemData.energyWh,
            sensorData.temperature
        );
    } else {
        readAdditionalSensors();
        handlePZEMFailure();

        if (faultRecoveryActive &&
            strcmp(currentError, "NO_POWER") == 0) {
            processNoPowerTemperatureUpdate();
        }

        Serial.printf(
            "PZEM read failed (%u/%u), retained temperature=%.1f C valid=%s\n",
            pzemFailureCount,
            PZEM_FAILURE_LIMIT,
            sensorData.temperature,
            sensorData.temperatureValid ? "true" : "false"
        );
    }
}

void mqttCallback(
    char *topic,
    byte *payload,
    unsigned int length
) {
    char message[128];

    if (length >= sizeof(message)) {
        return;
    }

    memcpy(message, payload, length);
    message[length] = '\0';

    Serial.print("MQTT command: ");
    Serial.println(message);

    if (strcmp(message, "STATUS") == 0) {
        requestStatus();
    }
    else if (strcmp(message, "RELAY,ON") == 0) {
        setRelay(true);
    }
    else if (strcmp(message, "RELAY,OFF") == 0) {
        setRelay(false);
    }
    else if (strcmp(message, "BUZZER,ON") == 0) {
        setBuzzer(true);
    }
    else if (strcmp(message, "BUZZER,OFF") == 0) {
        setBuzzer(false);
    }
    else if (strcmp(message, "FAULT,CLEAR") == 0) {
        if (strcmp(currentError, "OVER_CURRENT") == 0) {
            if (pzemData.valid &&
                pzemData.current <= OVER_CURRENT_LIMIT) {
                clearError(true);
            } else {
                Serial.println(
                    "Manual clear rejected: current still high"
                );
            }
        }
    }
}

void configureEnterprise() {
    esp_eap_client_set_identity(
        (uint8_t *)WIFI_IDENTITY,
        strlen(WIFI_IDENTITY)
    );

    esp_eap_client_set_username(
        (uint8_t *)WIFI_IDENTITY,
        strlen(WIFI_IDENTITY)
    );

    esp_eap_client_set_password(
        (uint8_t *)WIFI_PASSWORD,
        strlen(WIFI_PASSWORD)
    );

    esp_eap_client_set_eap_methods(ESP_EAP_TYPE_PEAP);

    esp_wifi_sta_enterprise_enable();
}

void connectWiFi() {
    if (WiFi.status() == WL_CONNECTED) {
        return;
    }

    Serial.println("Connecting to WiFi...");

    WiFi.disconnect(true);
    WiFi.mode(WIFI_MODE_STA);
    WiFi.setAutoReconnect(true);

    configureEnterprise();

    WiFi.begin(WIFI_SSID);

    unsigned long start = millis();

    while (WiFi.status() != WL_CONNECTED &&
           millis() - start < 30000) {
        delay(500);
        Serial.print(".");
    }

    Serial.println();

    if (WiFi.status() == WL_CONNECTED) {
        Serial.println("WiFi connected");
        Serial.print("IP: ");
        Serial.println(WiFi.localIP());
        Serial.print("RSSI: ");
        Serial.println(WiFi.RSSI());
    } else {
        Serial.println("WiFi connection failed");
    }
}

void connectMQTT() {
    if (mqttClient.connected() ||
        WiFi.status() != WL_CONNECTED) {
        return;
    }

    char clientId[64];

    snprintf(
        clientId,
        sizeof(clientId),
        "%s-%llX",
        DEVICE_ID,
        ESP.getEfuseMac()
    );

    Serial.println("Connecting to MQTT...");

    if (mqttClient.connect(clientId)) {
        Serial.println("MQTT connected");

        mqttClient.subscribe(MQTT_COMMAND_TOPIC);

        publishEvent("DEVICE_CONNECTED");

        if (strcmp(currentError, "NO_POWER") == 0) {
            publishNoPowerTelemetry();
        } else {
            publishTelemetry(true);
        }
    } else {
        Serial.print("MQTT connection failed: ");
        Serial.println(mqttClient.state());
    }
}

void setup() {
    Serial.begin(115200);

    delay(500);

    Serial.println();
    Serial.println("================================");
    Serial.println("APPLIANCE SAFETY SYSTEM");
    Serial.println("ESP32 CONTROLLER");
    Serial.println("================================");

    analogReadResolution(12);

    analogSetPinAttenuation(
        TEMPERATURE_ADC_PIN,
        ADC_11db
    );

    PZEM.begin(
        PZEM_BAUD,
        SERIAL_8N1,
        PZEM_RX_PIN,
        PZEM_TX_PIN
    );

    MCU.begin(
        MCU_BAUD,
        SERIAL_8N1,
        MCU_RX_PIN,
        MCU_TX_PIN
    );

    mqttClient.setServer(MQTT_HOST, MQTT_PORT);
    mqttClient.setCallback(mqttCallback);
    mqttClient.setBufferSize(MQTT_BUFFER_SIZE);
    mqttClient.setKeepAlive(30);
    mqttClient.setSocketTimeout(3);

    connectWiFi();

    lastPZEMAttempt = millis();
    lastWiFiAttempt = millis();
    lastMQTTAttempt = millis();

    Serial.println("ESP32 initialization complete");
}

void loop() {
    unsigned long now = millis();

    if (WiFi.status() != WL_CONNECTED) {
        if (now - lastWiFiAttempt >= WIFI_RETRY_INTERVAL) {
            lastWiFiAttempt = now;
            connectWiFi();
        }
    }

    if (WiFi.status() == WL_CONNECTED &&
        !mqttClient.connected()) {

        if (now - lastMQTTAttempt >= MQTT_RETRY_INTERVAL) {
            lastMQTTAttempt = now;
            connectMQTT();
        }
    }

    if (mqttClient.connected()) {
        mqttClient.loop();
    }

    serviceZeroMeasurementsToMCU();

    if (now - lastPZEMAttempt >= PZEM_INTERVAL) {
        lastPZEMAttempt = now;
        processPZEM();
    }

    delay(1);
}