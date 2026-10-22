
#include <Arduino.h>
#include <WiFi.h>
#include <esp_wifi.h>
#include <esp_eap_client.h>
#include <PubSubClient.h>
#include <string.h>

#include "secrets.h"

#define UART_RX_PIN 16
#define UART_TX_PIN 17
#define UART_BAUD 9600

#define UART_BUFFER_SIZE 512
#define MQTT_BUFFER_SIZE 512

HardwareSerial MCU(2);
WiFiClient wifiClient;
PubSubClient mqttClient(wifiClient);

char uartBuffer[UART_BUFFER_SIZE];
size_t uartIndex = 0;
bool discardUntilTerminator = false;

unsigned long lastWiFiAttempt = 0;
unsigned long lastMqttAttempt = 0;

const unsigned long WIFI_RETRY_INTERVAL = 15000;
const unsigned long MQTT_RETRY_INTERVAL = 5000;

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

    Serial.println("PEAP configuration complete");
    Serial.println("Identity and username configured");
    Serial.println("EAP method: PEAP");

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

void publishUARTLine()
{
    if (uartIndex == 0)
        return;

    uartBuffer[uartIndex] = '\0';

    Serial.print("UART received: ");
    Serial.println(uartBuffer);

    if (WiFi.status() != WL_CONNECTED)
    {
        Serial.println("Message not published: Wi-Fi offline");
        return;
    }

    if (!mqttClient.connected())
    {
        Serial.println("Message not published: MQTT offline");
        return;
    }

    bool published = mqttClient.publish(
        MQTT_TOPIC,
        (const uint8_t *)uartBuffer,
        (unsigned int)uartIndex,
        false
    );

    if (published)
    {
        Serial.print("MQTT publish successful: ");
        Serial.println(MQTT_TOPIC);
    }
    else
    {
        Serial.println("MQTT publish failed");
    }
}

void readUART()
{
    while (MCU.available() > 0)
    {
        char c = (char)MCU.read();

        if (c == '\r' || c == '\n')
        {
            if (discardUntilTerminator)
            {
                discardUntilTerminator = false;
                uartIndex = 0;
                continue;
            }

            if (uartIndex > 0)
            {
                publishUARTLine();
                uartIndex = 0;
            }

            continue;
        }

        if (discardUntilTerminator)
            continue;

        if (uartIndex < UART_BUFFER_SIZE - 1)
        {
            uartBuffer[uartIndex++] = c;
        }
        else
        {
            uartIndex = 0;
            discardUntilTerminator = true;
            Serial.println("UART line too long; discarding message");
        }
    }
}

void setup()
{
    Serial.begin(115200);
    delay(500);

    MCU.begin(
        UART_BAUD,
        SERIAL_8N1,
        UART_RX_PIN,
        UART_TX_PIN
    );

    mqttClient.setServer(MQTT_HOST, MQTT_PORT);
    mqttClient.setBufferSize(MQTT_BUFFER_SIZE);
    mqttClient.setKeepAlive(30);
    mqttClient.setSocketTimeout(3);

    Serial.println();
    Serial.println("Appliance Safety UART-to-MQTT Bridge");

    Serial.print("Device ID: ");
    Serial.println(DEVICE_ID);

    Serial.print("MQTT topic: ");
    Serial.println(MQTT_TOPIC);

    Serial.println("UART2 RX: GPIO16");
    Serial.println("UART2 TX: GPIO17");
    Serial.println("UART baud: 9600");
    Serial.println("Accepted message endings: CR and LF");

    connectWiFi();
}

void loop()
{
    readUART();

    if (WiFi.status() != WL_CONNECTED &&
        millis() - lastWiFiAttempt >= WIFI_RETRY_INTERVAL)
    {
        lastWiFiAttempt = millis();
        connectWiFi();
    }

    if (WiFi.status() == WL_CONNECTED &&
        !mqttClient.connected() &&
        millis() - lastMqttAttempt >= MQTT_RETRY_INTERVAL)
    {
        lastMqttAttempt = millis();
        connectMQTT();
    }

    if (mqttClient.connected())
        mqttClient.loop();

    delay(2);
}
