# Appliance Safety System

**An ESP32 and 8051-based IoT system for electrical appliance monitoring, protection, and remote control**

| Project information | Details |
|---|---|
| Project name | Appliance Safety System |
| Device ID | AP001 |
| Application name | Appliance Safety |
| Android package | `com.vcs.appliancesafety` |
| Main controller | ESP32 |
| Secondary controller | AT89C5131A (8051 family) |
| Communication | UART, Wi-Fi and MQTT |
| MQTT broker | `broker.emqx.io` |
| MQTT port | `1883` |
| Development tools | Android Studio, VS Code, PlatformIO, SDCC, FLIP |

---

## 1. Project Overview

The Appliance Safety System is an embedded and IoT-based electrical appliance monitoring and protection system. It combines an ESP32 microcontroller, an AT89C5131A 8051 microcontroller, electrical measurement hardware, sensors, and an Android application.

The system monitors electrical parameters, communicates measurement data between controllers, detects abnormal operating conditions, and provides remote monitoring and control through an Android application.

The ESP32 acts as the main communication and monitoring controller. It collects measurements, executes protection logic, communicates with the 8051 through UART, and exchanges information with the Android application through an MQTT broker.

The AT89C5131A handles local appliance interfacing, OLED display updates, relay control, and buzzer control.

The Android application provides a dashboard for monitoring measurements, viewing faults, and controlling supported outputs.

### Main objectives

- Monitor AC voltage and current.
- Calculate and display real power, apparent power, and power factor.
- Measure supply frequency and energy consumption.
- Provide leakage-current and temperature monitoring interfaces.
- Detect abnormal electrical conditions.
- Disconnect the appliance load when protection conditions require it.
- Provide audible fault indication through a buzzer.
- Display measurements and system status locally.
- Enable remote monitoring and control using MQTT.
- Provide fault notifications and a monitoring dashboard on Android.

## 2. System Architecture

The system consists of three major subsystems:

1. ESP32 monitoring and communication controller.
2. AT89C5131A local control and display controller.
3. Android application and MQTT communication interface.

### Block diagram

```text
                 ANDROID APPLICATION
                 Appliance Safety
                        |
                        | MQTT over Wi-Fi
                        |
                 MQTT BROKER
                 broker.emqx.io
                        |
                        | Internet / Wi-Fi
                        |
                    ESP32
              Main Monitoring Controller
                        |
          +-------------+-------------+
          |             |             |
       PZEM AC       Temperature    Leakage
       Meter          Sensor        Sensor
          |             |             |
          +-------------+-------------+
                        |
                  UART Communication
                        |
                 AT89C5131A (8051)
                        |
          +-------------+-------------+
          |             |             |
         OLED          Relay         Buzzer
        Display       Control        Control
```

### Data flow

**Monitoring direction:**

1. The PZEM meter provides electrical measurement data to the ESP32.
2. The ESP32 reads the available sensor inputs.
3. The ESP32 evaluates measurements and protection conditions.
4. Measurement packets are sent to the 8051 through UART.
5. The 8051 updates the OLED and controls the local outputs.
6. The ESP32 publishes telemetry through MQTT.
7. The Android application receives the telemetry and updates its dashboard.

**Control direction:**

1. The user presses a control button in the Android application.
2. The application sends a command through MQTT.
3. The ESP32 receives the command.
4. The ESP32 checks whether the requested operation is permitted.
5. The ESP32 sends the corresponding UART command to the 8051.
6. The 8051 operates the relay or buzzer.
7. The ESP32 requests the latest output status and publishes updated telemetry.

## 3. Hardware Components

### 3.1 Main components

| Component | Purpose |
|---|---|
| ESP32 development board | Main monitoring, protection and MQTT controller |
| AT89C5131A | Local output and OLED controller |
| PZEM AC energy meter | AC voltage, current, power, frequency, PF and energy measurement |
| SSD1306 OLED | Local system information display |
| Relay | Appliance load switching |
| Buzzer | Audible fault indication |
| Temperature sensor | Temperature monitoring |
| Leakage-current sensing circuit | Leakage-current monitoring interface |
| Power supply | Supplies the electronic control system |

### 3.2 ESP32 pin configuration

The following GPIO assignments are based on the current project firmware configuration.

| ESP32 GPIO | Function |
|---|---|
| GPIO16 | PZEM UART RX |
| GPIO17 | PZEM UART TX |
| GPIO26 | UART RX from 8051 |
| GPIO27 | UART TX to 8051 |
| GPIO34 | Leakage sensor analog input |
| GPIO35 | Temperature sensor analog input |

**UART configuration**

| Interface | Baud rate | Format |
|---|---:|---|
| PZEM UART | 9600 | 8-N-1 |
| ESP32–8051 UART | 9600 | 8-N-1 |
| ESP32 USB serial debugging | 115200 | 8-N-1 |

The ESP32 firmware uses a 12-bit ADC reading configuration.

The leakage input is currently disabled in the documented firmware configuration. Its GPIO assignment is reserved for the intended sensor interface.

### 3.3 AT89C5131A connections

The 8051 is responsible for local control and display operations.

Known OLED connections:

| 8051 pin | OLED connection |
|---|---|
| P4.0 | SCL |
| P4.1 | SDA |

OLED details:

- Controller: SSD1306
- Resolution: 128 × 64 pixels
- Interface: Software I²C (bit-banged)
- I²C address byte used in the implementation: `0x78`

The exact relay, buzzer and indicator GPIO assignments should be documented from the final 8051 schematic and firmware pin definitions.

### Important electrical safety

The PZEM module, sensing circuits, relay and mains connections must be installed with appropriate isolation, fusing, creepage and clearance, enclosure protection, and component ratings.

Never connect a mains-referenced measurement output directly to an ESP32 or 8051 GPIO unless the circuit is explicitly designed and verified for safe isolation and voltage levels.

## 4. ESP32 Firmware

### 4.1 Responsibilities

The ESP32 is the primary controller and performs:

- PZEM communication.
- Analog sensor acquisition.
- Electrical parameter processing.
- Protection condition evaluation.
- UART communication with the 8051.
- MQTT connection and reconnection.
- MQTT command reception.
- Telemetry publication.
- Device event publication.
- Output state synchronization.

### 4.2 Development environment

The ESP32 firmware is developed using:

- Visual Studio Code.
- PlatformIO.
- Arduino framework.
- ESP32 Arduino platform.

The current firmware uses the following communication libraries and interfaces:

- Wi-Fi and ESP32 Wi-Fi enterprise support.
- MQTT client interface.
- Hardware UART.
- ADC input interface.
- PZEM Modbus communication.

The exact PZEM library version and PlatformIO dependency versions should be recorded from the final `platformio.ini`.

### 4.3 Wi-Fi connectivity

The firmware supports WPA2-Enterprise Wi-Fi authentication using PEAP.

The Wi-Fi configuration uses:

- SSID.
- Identity.
- Username.
- Password.
- PEAP authentication method.

The identity and username are configured from the project credentials.

The firmware attempts to reconnect when Wi-Fi connectivity is lost.

Credentials are maintained separately in `secrets.h` and must not be committed to a public repository.

### 4.4 PZEM communication

The PZEM meter communicates with the ESP32 through UART.

The documented Modbus configuration is:

| Parameter | Value |
|---|---|
| Modbus address | `0x01` |
| Function code | `0x04` |
| UART baud rate | 9600 |
| Response length | 25 bytes |
| Register count | 10 |

The measurement values are interpreted as follows:

| Measurement | Conversion |
|---|---|
| Voltage | Raw value / 10 |
| Current | Raw 32-bit value / 1000 |
| Real power | Raw 32-bit value / 10 |
| Energy | Raw 32-bit value in Wh |
| Frequency | Raw value / 10 |
| Power factor | Raw value / 100 |

These conversions describe the current firmware's PZEM data interpretation.

### 4.5 Sensor acquisition

The ESP32 provides ADC input interfaces for:

- Leakage-current sensing.
- Temperature sensing.

The current configuration has:

- Leakage sensor acquisition disabled.
- Temperature sensor acquisition enabled.

The temperature conversion currently uses a voltage-to-temperature scaling assumption of 100 °C/V. This must be calibrated against the actual sensor model before treating the reading as an accurate temperature measurement.

A disabled leakage sensor must not be represented as a functioning leakage protection feature.

### 4.6 Protection logic

The ESP32 evaluates operating conditions and can request the 8051 to disconnect the relay and activate the buzzer.

The firmware includes fault handling for conditions such as:

- Overcurrent.
- Undervoltage.
- Overvoltage.
- Abnormal frequency.
- No-power condition.
- Other configured measurement faults.

The exact thresholds must be taken from the final firmware constants. They should not be assumed from the Android interface.

**Fault response**

When a fault is detected:

1. The ESP32 records the active fault.
2. The previous relay state is requested from the 8051 where possible.
3. The ESP32 sends `RELAY,OFF`.
4. It controls the buzzer according to the fault type.
5. It sends the fault information to the 8051.
6. It requests updated output status.
7. It publishes a fault event and updated telemetry.

### 4.7 Fault recovery

The firmware includes recovery handling.

- Non-overcurrent faults use safe-condition recovery checks.
- The configured recovery logic requires multiple safe samples.
- Overcurrent faults require manual fault clearing.
- Manual overcurrent clearing is rejected while the measured current remains above the configured limit.
- Relay restoration depends on the previous relay state and the fault recovery conditions.
- The relay is not automatically restored after every fault.

The firmware must remain the authority for protection decisions. The Android application cannot bypass these checks.

### 4.8 UART reliability

The ESP32 sends data packets to the 8051 and waits for acknowledgements.

The data transfer mechanism includes:

- CR/LF packet termination.
- Expected acknowledgement matching.
- Response timeout.
- Retransmission attempts.
- Serial debugging messages.

The data packets are sent only after the corresponding acknowledgement is received.

## 5. AT89C5131A 8051 Firmware

### 5.1 Responsibilities

The 8051 acts as the local appliance control and display controller.

Its main responsibilities are:

- Receive commands and measurement packets from the ESP32.
- Decode UART messages.
- Update the OLED display.
- Control the relay.
- Control the buzzer.
- Maintain output state.
- Report acknowledgements.
- Display fault conditions and measurements.

### 5.2 Development environment

The 8051 development environment includes:

- AT89C5131A microcontroller.
- SDCC compiler.
- FLIP programming utility.
- BatchISP programming workflow.
- Software I²C implementation for the OLED.

### 5.3 OLED display

The SSD1306 128 × 64 OLED is connected through software I²C.

The display presents the available measurement values and system operating information received from the ESP32.

The OLED controller is managed by the 8051 so local information remains available independently of the Android interface.

### 5.4 UART packet reception

The 8051 receives comma-separated ASCII packets.

The packet types are:

| Packet | Information |
|---|---|
| `DATA1` | Voltage, current, real power, power factor |
| `DATA2` | Frequency, energy in kWh, leakage value |
| `DATA3` | Temperature |
| `ERROR` | Active fault information |
| `STATUS` | Request for current output status |
| `RELAY` | Relay control |
| `BUZZER` | Buzzer control |

The 8051 acknowledges supported measurement and fault packets.

### 5.5 Relay and buzzer control

The 8051 receives relay and buzzer commands from the ESP32.

Relay commands:

- `RELAY,ON`
- `RELAY,OFF`

Buzzer commands:

- `BUZZER,ON`
- `BUZZER,OFF`

Fault commands:

- `ERROR,<fault_name>`
- `ERROR,NONE`

The ESP32 remains responsible for protection decisions and determines whether relay activation is permitted.

## 6. ESP32–8051 UART Communication Protocol

Both controllers communicate using UART at 9600 baud, 8-N-1.

### 6.1 Measurement packets

**DATA1**

```text
DATA1,voltage,current,real_power,power_factor
```

Example:

```text
DATA1,223.7,0.032,0.0,0.00
```

Acknowledgement:

```text
ACK,DATA1
```

**DATA2**

```text
DATA2,frequency,energy_kWh,leakage
```

Example:

```text
DATA2,50.1,0.002,0.000
```

Acknowledgement:

```text
ACK,DATA2
```

**DATA3**

```text
DATA3,temperature
```

Example:

```text
DATA3,29.6
```

Acknowledgement:

```text
ACK,DATA3
```

### 6.2 Fault packets

Example:

```text
ERROR,OVER_CURRENT
```

Clear fault:

```text
ERROR,NONE
```

Acknowledgement:

```text
ACK,ERROR
```

### 6.3 Output commands

```text
RELAY,ON
RELAY,OFF
BUZZER,ON
BUZZER,OFF
```

### 6.4 Status response

The 8051 reports the current output state using the following format:

```text
STATUS,RELAY=ON,BUZZER=OFF
```

The actual implementation should retain the same packet spelling and delimiters at both ends.

## 7. MQTT Communication

### 7.1 MQTT broker

The project currently uses the public EMQX broker.

| Parameter | Configuration |
|---|---|
| Broker | `broker.emqx.io` |
| Port | `1883` |
| Protocol | MQTT over TCP |
| Device ID | `AP001` |

The ESP32 uses the MQTT client to publish telemetry and events and subscribe to commands.

The Android application uses Eclipse Paho MQTT.

### 7.2 MQTT topics

| Topic | Direction | Purpose |
|---|---|---|
| `appliance/AP001/telemetry` | ESP32 → Android | Measurement and device status |
| `appliance/AP001/command` | Android → ESP32 | Remote commands |
| `appliance/AP001/event` | ESP32 → Android | Device events and fault events |

The ESP32 subscribes to the command topic and publishes to the telemetry and event topics.

### 7.3 Telemetry format

The telemetry is published as JSON.

Example:

```json
{
  "id": "AP001",
  "vrms": 223.7,
  "irms": 0.032,
  "real_w": 0.0,
  "pf": 0.00,
  "freq_hz": 50.1,
  "energy_wh": 2.0,
  "energy_kwh": 0.002,
  "leakage_a": 0.000,
  "temperature_c": 29.6,
  "pzem_valid": true,
  "leakage_valid": false,
  "temperature_valid": true,
  "relay": true,
  "buzzer": false,
  "error": "NONE"
}
```

The telemetry parser supports the following fields:

| JSON key | Description |
|---|---|
| `id` | Device identifier |
| `vrms` | RMS voltage |
| `irms` | RMS current |
| `real_w` | Real power |
| `apparent_va` | Apparent power, when published |
| `pf` | Power factor |
| `freq_hz` | Supply frequency |
| `energy_wh` | Energy in Wh |
| `leakage_a` | Leakage current in amperes |
| `leak_ma` | Alternative leakage value in mA |
| `temperature_c` | Temperature in °C |
| `pzem_valid` | PZEM measurement validity |
| `leakage_valid` | Leakage measurement validity |
| `temperature_valid` | Temperature measurement validity |
| `relay` | Relay state |
| `buzzer` | Buzzer state |
| `error` | Active fault or `NONE` |

The parser also supports selected alternative field names for compatibility.

### 7.4 MQTT commands

The Android application sends plain-text commands to:

```text
appliance/AP001/command
```

| Command | Action |
|---|---|
| `STATUS` | Request device status |
| `RELAY,ON` | Request relay activation |
| `RELAY,OFF` | Request relay deactivation |
| `BUZZER,ON` | Activate buzzer |
| `BUZZER,OFF` | Deactivate buzzer |
| `FAULT,CLEAR` | Request fault clearing |

Commands are published with QoS 1 and retained messages disabled in the current Android foreground service.

The ESP32 must interpret the commands using the same plain-text protocol.

### 7.5 Events

The event topic is:

```text
appliance/AP001/event
```

Events can include device connection, fault occurrence, fault recovery and relay activation rejection.

## 8. Android Application

### 8.1 Application information

| Parameter | Value |
|---|---|
| Application name | Appliance Safety |
| Package | `com.vcs.appliancesafety` |
| Minimum SDK | 31 |
| Compile SDK | 36 |
| Target SDK | 36 |
| Java version | 11 |
| MQTT library | Eclipse Paho MQTT |
| Application language | Java |
| Layout | XML |

The launcher icon uses the Appliance Safety shield design.

### 8.2 Application responsibilities

The Android application provides:

- MQTT connection management.
- Live telemetry reception.
- Electrical measurement dashboard.
- Relay control.
- Buzzer control.
- Fault status display.
- Fault clearing request.
- Device status request.
- Fault notifications.
- Last device response timestamp.
- Persistent MQTT connection through a foreground service.

### 8.3 Android architecture

The current implementation uses a single MQTT connection managed by `MqttForegroundService`.

```text
MainActivity
    |
    | Android Service Intents
    |
MqttForegroundService
    |
    | Eclipse Paho MQTT
    |
MQTT Broker
    |
    +---- Telemetry subscription
    |
    +---- Command publication
```

The service is responsible for maintaining the MQTT connection.

The activity communicates with the service using intents and receives updates through its registered broadcast receiver.

The older standalone `MqttManager.java` implementation should not be started alongside the foreground service. Running two independent MQTT clients for the same application can cause duplicate connections and inconsistent state.

### 8.4 Android source files

| File | Responsibility |
|---|---|
| `MainActivity.java` | Main dashboard, buttons, UI updates and notifications |
| `MqttForegroundService.java` | Persistent MQTT connection, subscriptions and command publication |
| `TelemetryParser.java` | JSON telemetry parsing and validation |
| `ApplianceTelemetry.java` | Measurement and output-state data model |
| `activity_main.xml` | Dashboard layout |
| `AndroidManifest.xml` | Permissions, application and service declarations |

### 8.5 Dashboard

The application displays:

- AC voltage.
- AC current.
- Real power.
- Apparent power.
- Power factor.
- Frequency.
- Energy information when supplied.
- Leakage current.
- Temperature.
- Relay state.
- Buzzer state.
- Active fault.
- MQTT connection status.
- Last device response time.

Leakage and temperature are displayed side by side.

### 8.6 Output state colors

The dashboard uses different colors to make the output state easy to identify.

| Output | State | Text color |
|---|---|---|
| Relay | ON | Blue |
| Relay | OFF | Violet |
| Buzzer | ON | Red |
| Buzzer | OFF | Blue |

Button colors:

| Button | Color |
|---|---|
| Relay ON | Blue |
| Relay OFF | Violet |
| Buzzer ON | Blue |
| Buzzer OFF | Green |

### 8.7 Fault notifications

The application can show notifications when a new fault is received.

The fault information is taken from the telemetry payload.

The Android app displays the reported state; it does not independently determine whether the electrical system is safe.

### 8.8 MQTT service behaviour

The foreground service:

- Connects to the configured broker.
- Subscribes to the telemetry topic.
- Publishes allowed commands.
- Uses QoS 1 for commands.
- Does not retain command messages.
- Queues commands while MQTT is reconnecting.
- Reports publish success and failure.
- Saves the most recent telemetry payload and receipt time.
- Broadcasts telemetry and connection events to the activity.

The displayed last-device-response time is the time the application last received telemetry. It is not a separate timestamp generated by the ESP32 when a command arrives.

### 8.9 Android permissions

The manifest includes the permissions required by the current implementation:

- `INTERNET`
- `ACCESS_NETWORK_STATE`
- `CHANGE_NETWORK_STATE`
- `FOREGROUND_SERVICE`
- `FOREGROUND_SERVICE_CONNECTED_DEVICE`
- `POST_NOTIFICATIONS`

The MQTT foreground service is declared as a connected-device foreground service.

The exact foreground-service requirements should be checked against the Android version and device on which the application is installed.

## 9. Software Requirements and Setup

### 9.1 ESP32 setup

1. Install Visual Studio Code.
2. Install the PlatformIO extension.
3. Open the ESP32 firmware project.
4. Check the ESP32 board configuration.
5. Configure `secrets.h`.
6. Verify the PZEM and UART pin assignments.
7. Verify the MQTT broker and topic names.
8. Build the firmware.
9. Upload it to the ESP32.
10. Open the serial monitor at 115200 baud.

Example credential configuration:

```c
#define WIFI_SSID "YOUR_WIFI_SSID"
#define WIFI_IDENTITY "YOUR_IDENTITY"
#define WIFI_PASSWORD "YOUR_PASSWORD"

#define MQTT_HOST "broker.emqx.io"
#define MQTT_PORT 1883

#define DEVICE_ID "AP001"
```

The actual topic constants must match the topic names documented in this README.

Never publish actual Wi-Fi passwords or private credentials in a public repository.

### 9.2 8051 setup

1. Install SDCC.
2. Install the FLIP programming utility.
3. Open the 8051 firmware project.
4. Verify the AT89C5131A target configuration.
5. Verify OLED I²C pins.
6. Verify UART configuration.
7. Build the firmware.
8. Program the microcontroller using the configured programming workflow.
9. Connect the ESP32 UART interface.
10. Verify the acknowledgement messages.

### 9.3 Android setup

1. Install Android Studio.
2. Open the Appliance Safety Android project.
3. Allow Gradle synchronization to complete.
4. Verify the MQTT dependency.
5. Verify the application package name.
6. Verify the manifest service and permissions.
7. Build the application.
8. Install it on the Android device.
9. Grant notification permission if requested.
10. Start the application and verify MQTT connectivity.

The Android application must use the same device ID, broker and MQTT topics as the ESP32 firmware.

## 10. Testing and Validation

The following tests should be performed before the final project demonstration.

| Test | Expected behaviour |
|---|---|
| ESP32 startup | Initialization messages appear in serial monitor |
| Wi-Fi connection | ESP32 obtains network connectivity |
| MQTT connection | ESP32 connects to broker |
| MQTT telemetry | JSON telemetry appears on the telemetry topic |
| Android connection | App displays MQTT connected |
| Voltage measurement | Dashboard displays voltage |
| Current measurement | Dashboard displays current |
| Frequency measurement | Dashboard displays frequency |
| Relay ON | ESP32 receives command and requests relay activation |
| Relay OFF | Relay is switched off |
| Buzzer ON | Buzzer is activated |
| Buzzer OFF | Buzzer is deactivated |
| Fault detection | Relay is disconnected according to protection logic |
| Fault notification | Android displays fault information |
| Fault clear | Firmware accepts or rejects the request according to safety conditions |
| UART communication | 8051 acknowledges valid data packets |
| MQTT disconnection | Service attempts reconnection |
| Device restart | System reconnects and resumes monitoring |

### MQTTX verification

MQTTX can be used to monitor the system independently of the Android application.

Subscribe to:

```text
appliance/AP001/telemetry
appliance/AP001/event
appliance/AP001/command
```

For command verification, publish the following plain-text message to the command topic:

```text
RELAY,OFF
```

The ESP32 should receive the message and process the command.

For telemetry verification, inspect the JSON payload on the telemetry topic.

## 11. Current Implementation Status and Limitations

The following points describe the implementation state documented during development. They should be updated after final hardware validation.

### Implemented in the project architecture

- ESP32 and 8051 UART communication.
- PZEM communication interface.
- MQTT telemetry publication.
- MQTT command subscription.
- Android MQTT foreground service.
- Android telemetry parsing.
- Dashboard measurements and output states.
- Relay and buzzer control commands.
- Fault reporting and fault-clear request handling.
- OLED display interface.
- UART acknowledgement and retry mechanism.
- Wi-Fi reconnection handling.
- MQTT reconnection handling.

### Configurations requiring hardware verification

- Leakage-current sensor acquisition is disabled in the current documented configuration.
- Temperature conversion uses a provisional 100 °C/V assumption and requires sensor calibration.
- PZEM communication failure alone does not prove that mains power is absent; it can also indicate communication, wiring or meter-supply problems.
- Voltage-collapse and frequency thresholds must be validated against the actual supply and measurement hardware.
- All protection thresholds must be verified against the final firmware constants and hardware ratings.
- The complete ESP32, 8051 and Android system must be tested together before claiming final safety performance.

The project is a prototype and educational monitoring and protection system. It must not be treated as a certified safety device or a replacement for a correctly rated electrical protection system.

## 12. Security Considerations

The current prototype uses the public broker:

```text
broker.emqx.io:1883
```

This is suitable for development and demonstrations but does not provide the authentication and access isolation required for a production deployment.

For production:

- Use a private MQTT broker.
- Enable MQTT authentication.
- Use TLS encryption.
- Configure per-device credentials.
- Restrict topic access using broker ACLs.
- Avoid publishing sensitive information.
- Protect Wi-Fi credentials.
- Validate command origin and device identity.
- Use a secure firmware update process.

The current Android manifest enables cleartext traffic for the prototype. Production deployment should use encrypted MQTT transport and review the application's network security configuration.

## 13. Future Improvements

Possible extensions include:

- Enable and calibrate the leakage-current sensor.
- Add calibrated temperature monitoring.
- Add historical measurement graphs.
- Add energy-consumption statistics.
- Add fault history storage.
- Add multiple appliance support.
- Add device pairing and authentication.
- Add secure MQTT communication.
- Add threshold configuration through the Android application.
- Add an improved local fault-history interface.
- Add PCB integration and enclosure design.
- Perform formal electrical safety and reliability testing.

## 14. Project Directory Structure

The following is a recommended logical organization. Actual directory names may differ in the current repositories.

```text
Appliance-Safety-System/
|
+-- Android-App/
|   |
|   +-- app/
|       |
|       +-- src/main/
|           |
|           +-- java/com/vcs/appliancesafety/
|           |   |
|           |   +-- MainActivity.java
|           |   +-- MqttForegroundService.java
|           |   +-- TelemetryParser.java
|           |   +-- ApplianceTelemetry.java
|           |
|           +-- res/
|           |   |
|           |   +-- layout/
|           |   +-- drawable/
|           |   +-- mipmap-*/
|           |
|           +-- AndroidManifest.xml
|
+-- ESP32-Firmware/
|   |
|   +-- src/
|   |   +-- main.cpp
|   |
|   +-- include/
|   |   +-- secrets.h
|   |
|   +-- platformio.ini
|
+-- 8051-Firmware/
|   |
|   +-- main.c
|   +-- oled.c
|   +-- oled.h
|   +-- uart.c
|   +-- uart.h
|   +-- build.bat
|
+-- Hardware/
|   |
|   +-- Circuit-Diagram/
|   +-- PCB/
|   +-- Datasheets/
|
+-- README.md
```

## 15. Conclusion

The Appliance Safety System integrates embedded electronics, electrical measurement, microcontroller-based protection, wireless communication and Android application development.

The ESP32 provides measurement acquisition, protection processing and MQTT connectivity. The AT89C5131A provides local display and output control. The Android application provides remote monitoring and control through an MQTT-based communication architecture.

The project demonstrates the integration of embedded systems, UART communication, MQTT, Android development, electrical sensing and fault-handling techniques in a single appliance monitoring platform.

---

**Project:** Appliance Safety System  
**Device ID:** AP001  
**Application:** Appliance Safety  
**Primary controller:** ESP32  
**Secondary controller:** AT89C5131A  
**Communication:** UART + MQTT  
**Status:** Prototype / Mini-project implementation

