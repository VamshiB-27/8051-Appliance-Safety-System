#include <Arduino.h>
#include <WiFi.h>
#include <esp_wifi.h>
#include <esp_eap_client.h>
#include <PubSubClient.h>
#include <string.h>
#include <stdio.h>

#include "secrets.h"

#define PZEM_RX_PIN 16
#define PZEM_TX_PIN 17
#define PZEM_BAUD 9600
#define PZEM_ADDRESS 0x01

#define MQTT_BUFFER_SIZE 512
#define PZEM_RESPONSE_SIZE 25

HardwareSerial PZEM(1);

WiFiClient wifiClient;
PubSubClient mqttClient(wifiClient);

unsigned long lastWiFiAttempt = 0;
unsigned long lastMqttAttempt = 0;
unsigned long lastPzemAttempt = 0;

const unsigned long WIFI_RETRY_INTERVAL = 15000;
const unsigned long MQTT_RETRY_INTERVAL = 5000;
const unsigned long PZEM_INTERVAL = 2000;

struct PZEMData
{
    float voltage;
    float current;
    float power;
    float energyWh;
    float frequency;
    float powerFactor;
    bool valid;
};

PZEMData pzemData = {0, 0, 0, 0, 0, 0, false};

uint16_t modbusCRC(const uint8_t *data, size_t length)
{
    uint16_t crc = 0xFFFF;

    for (size_t i = 0; i < length; i++)
    {
        crc ^= data[i];

        for (uint8_t bit = 0; bit < 8; bit++)
        {
            if (crc & 1)
                crc = (crc >> 1) ^ 0xA001;
            else
                crc >>= 1;
        }
    }

    return crc;
}

bool configureEnterprise()
{
    esp_err_t err;

    Serial.println("Configuring WPA2-Enterprise PEAP");

    err = esp_eap_client_set_identity(
        (const uint8_t *)WIFI_IDENTITY,
        strlen(WIFI_IDENTITY)
    );

    if (err != ESP_OK)
    {
        Serial.printf("Identity configuration failed: 0x%x\n", err);
        return false;
    }

    err = esp_eap_client_set_username(
        (const uint8_t *)WIFI_IDENTITY,
        strlen(WIFI_IDENTITY)
    );

    if (err != ESP_OK)
    {
        Serial.printf("Username configuration failed: 0x%x\n", err);
        return false;
    }

    err = esp_eap_client_set_password(
        (const uint8_t *)WIFI_PASSWORD,
        strlen(WIFI_PASSWORD)
    );

    if (err != ESP_OK)
    {
        Serial.printf("Password configuration failed: 0x%x\n", err);
        return false;
    }

    err = esp_eap_client_set_eap_methods(ESP_EAP_TYPE_PEAP);

    if (err != ESP_OK)
    {
        Serial.printf("EAP method configuration failed: 0x%x\n", err);
        return false;
    }

    err = esp_wifi_sta_enterprise_enable();

    if (err != ESP_OK)
    {
        Serial.printf("Enterprise enable failed: 0x%x\n", err);
        return false;
    }

    return true;
}

bool connectWiFi()
{
    if (WiFi.status() == WL_CONNECTED)
        return true;

    Serial.println("Connecting to IITDH Wi-Fi");

    WiFi.mode(WIFI_MODE_STA);
    WiFi.setAutoReconnect(true);

    if (!configureEnterprise())
        return false;

    WiFi.begin(WIFI_SSID);

    unsigned long start = millis();

    while (WiFi.status() != WL_CONNECTED &&
           millis() - start < 30000)
    {
        delay(250);
    }

    if (WiFi.status() != WL_CONNECTED)
    {
        Serial.printf(
            "Wi-Fi connection failed. Status: %d\n",
            WiFi.status()
        );
        return false;
    }

    Serial.println("Wi-Fi connected");
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());

    Serial.print("RSSI: ");
    Serial.print(WiFi.RSSI());
    Serial.println(" dBm");

    return true;
}

bool connectMQTT()
{
    if (mqttClient.connected())
        return true;

    if (WiFi.status() != WL_CONNECTED)
        return false;

    uint64_t chipId = ESP.getEfuseMac();
    char clientId[40];

    snprintf(
        clientId,
        sizeof(clientId),
        "%s-%04X%08X",
        DEVICE_ID,
        (uint16_t)(chipId >> 32),
        (uint32_t)chipId
    );

    Serial.print("Connecting to MQTT broker... ");

    if (mqttClient.connect(clientId))
    {
        Serial.println("connected");
        return true;
    }

    Serial.print("MQTT connection failed. State: ");
    Serial.println(mqttClient.state());

    return false;
}

bool readPZEM()
{
    uint8_t request[8] = {
        PZEM_ADDRESS,
        0x04,
        0x00,
        0x00,
        0x00,
        0x0A,
        0x00,
        0x00
    };

    uint16_t crc = modbusCRC(request, 6);
    request[6] = crc & 0xFF;
    request[7] = (crc >> 8) & 0xFF;

    while (PZEM.available())
        PZEM.read();

    PZEM.write(request, sizeof(request));
    PZEM.flush();

    uint8_t response[PZEM_RESPONSE_SIZE];
    size_t received = 0;
    unsigned long start = millis();

    while (millis() - start < 1000)
    {
        while (PZEM.available())
        {
            int value = PZEM.read();

            if (value < 0)
                break;

            uint8_t b = (uint8_t)value;

            Serial.printf("%02X ", b);

            if (received < sizeof(response))
                response[received++] = b;
        }

        delay(1);
    }

    Serial.println();

    if (received != PZEM_RESPONSE_SIZE)
    {
        Serial.printf(
            "PZEM timeout: received %u of %u bytes\n",
            (unsigned int)received,
            (unsigned int)PZEM_RESPONSE_SIZE
        );

        return false;
    }

    if (response[0] != PZEM_ADDRESS ||
        response[1] != 0x04 ||
        response[2] != 20)
    {
        Serial.println("PZEM response header invalid");
        return false;
    }

    uint16_t receivedCRC =
        (uint16_t)response[23] |
        ((uint16_t)response[24] << 8);

    uint16_t calculatedCRC = modbusCRC(response, 23);

    if (receivedCRC != calculatedCRC)
    {
        Serial.println("PZEM CRC error");
        return false;
    }

    uint16_t reg[10];

    for (uint8_t i = 0; i < 10; i++)
    {
        reg[i] =
            ((uint16_t)response[3 + i * 2] << 8) |
            response[4 + i * 2];
    }

    uint32_t currentRaw =
        ((uint32_t)reg[2] << 16) | reg[1];

    uint32_t powerRaw =
        ((uint32_t)reg[4] << 16) | reg[3];

    uint32_t energyRaw =
        ((uint32_t)reg[6] << 16) | reg[5];

    pzemData.voltage = reg[0] / 10.0f;
    pzemData.current = currentRaw / 1000.0f;
    pzemData.power = powerRaw / 10.0f;
    pzemData.energyWh = (float)energyRaw;
    pzemData.frequency = reg[7] / 10.0f;
    pzemData.powerFactor = reg[8] / 100.0f;
    pzemData.valid = true;

    return true;
}

void printPZEMData()
{
    Serial.println();
    Serial.println("----- PZEM MEASUREMENTS -----");

    Serial.printf("Voltage     : %.1f V\n", pzemData.voltage);
    Serial.printf("Current     : %.3f A\n", pzemData.current);
    Serial.printf("Active power: %.1f W\n", pzemData.power);
    Serial.printf("Frequency   : %.1f Hz\n", pzemData.frequency);
    Serial.printf("Power factor: %.2f\n", pzemData.powerFactor);
    Serial.printf("Energy      : %.0f Wh\n", pzemData.energyWh);

    Serial.println("-----------------------------");
}

void publishTelemetry()
{
    if (!pzemData.valid)
        return;

    char payload[MQTT_BUFFER_SIZE];

    snprintf(
        payload,
        sizeof(payload),
        "{\"id\":\"%s\",\"vrms\":%.1f,\"irms\":%.3f,"
        "\"real_w\":%.1f,\"pf\":%.2f,\"freq_hz\":%.1f,"
        "\"energy_wh\":%.0f,\"pzem_valid\":true}",
        DEVICE_ID,
        pzemData.voltage,
        pzemData.current,
        pzemData.power,
        pzemData.powerFactor,
        pzemData.frequency,
        pzemData.energyWh
    );

    if (WiFi.status() != WL_CONNECTED)
    {
        Serial.println("MQTT publish skipped: Wi-Fi offline");
        return;
    }

    if (!mqttClient.connected())
    {
        Serial.println("MQTT publish skipped: broker disconnected");
        return;
    }

    if (mqttClient.publish(MQTT_TOPIC, payload))
    {
        Serial.print("MQTT published: ");
        Serial.println(payload);
    }
    else
    {
        Serial.println("MQTT publish failed");
    }
}

void setup()
{
    Serial.begin(115200);
    delay(500);

    PZEM.begin(
        PZEM_BAUD,
        SERIAL_8N1,
        PZEM_RX_PIN,
        PZEM_TX_PIN
    );

    mqttClient.setServer(MQTT_HOST, MQTT_PORT);
    mqttClient.setBufferSize(MQTT_BUFFER_SIZE);
    mqttClient.setKeepAlive(30);
    mqttClient.setSocketTimeout(3);

    Serial.println();
    Serial.println("Appliance Safety - PZEM Test");
    Serial.println("ESP32-WROOM-32D");
    Serial.println("PZEM UART RX: GPIO16");
    Serial.println("PZEM UART TX: GPIO17");
    Serial.println("PZEM baud: 9600, 8N1");
    Serial.println("PZEM address: 0x01");

    connectWiFi();
}

void loop()
{
    unsigned long now = millis();

    if (WiFi.status() != WL_CONNECTED &&
        now - lastWiFiAttempt >= WIFI_RETRY_INTERVAL)
    {
        lastWiFiAttempt = now;
        connectWiFi();
    }

    if (WiFi.status() == WL_CONNECTED &&
        !mqttClient.connected() &&
        now - lastMqttAttempt >= MQTT_RETRY_INTERVAL)
    {
        lastMqttAttempt = now;
        connectMQTT();
    }

    if (mqttClient.connected())
        mqttClient.loop();

    if (now - lastPzemAttempt >= PZEM_INTERVAL)
    {
        lastPzemAttempt = now;

        if (readPZEM())
        {
            printPZEMData();
            publishTelemetry();
        }
        else
        {
            pzemData.valid = false;
        }
    }

    delay(2);
}