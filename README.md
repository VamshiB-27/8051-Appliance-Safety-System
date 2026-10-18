# 8051 Appliance Safety System

An 8051-based appliance protection system designed to monitor electrical parameters, detect abnormal operating conditions, and disconnect the appliance when a fault is detected.

## Project Overview

The 8051 Appliance Safety System is an embedded systems project focused on improving electrical appliance safety through voltage and current monitoring. The system is being developed around the **AT89C5131A microcontroller**, an external ADC, and an OLED display.

The final circuit design, component selection, firmware, and protection thresholds will be determined and verified during development.

## Objectives

- Monitor electrical voltage and current.
- Detect abnormal electrical operating conditions.
- Display measurements and system status on an OLED.
- Disconnect the appliance when a configured fault condition occurs.
- Provide visual or audible fault indications.
- Develop a reliable, microcontroller-based appliance protection system.

## Planned Hardware

| Component | Purpose |
|---|---|
| AT89C5131A | Main microcontroller |
| ADC0808/ADC0809 | Analog-to-digital conversion |
| OLED display | Measurement and status display |
| Voltage sensing circuit | Voltage measurement |
| Current sensing circuit | Current measurement |
| Relay and driver circuit | Appliance disconnection |
| Buzzer and LEDs | Status and fault indication |

*The component list is preliminary and may change during circuit development.*

## Planned Features

- Voltage monitoring
- Current monitoring
- Overvoltage and undervoltage detection
- Overcurrent detection
- OLED-based status display
- Automatic relay disconnection during fault conditions
- Fault indication

## Development Status

**Status: Initial planning and development**

The project is currently in the planning stage. The final schematic, pin assignments, sensing circuits, firmware architecture, calibration procedure, and protection thresholds have not yet been finalized.

Each subsystem will be developed and tested before integration into the complete system.

## Repository Structure

The repository will be organized as development progresses.

- `firmware/` — Microcontroller firmware
- `hardware/` — Circuit diagrams and hardware documentation
- `docs/` — Design notes and system documentation
- `tests/` — Testing procedures and validation results

Directories and files will be added as the project develops.

## Safety Considerations

This project involves electrical voltage and current monitoring. The sensing circuits must provide appropriate isolation, and the relay driver must be designed for the intended load.

The system must not be connected to a live mains-powered appliance until the circuit, isolation, component ratings, fault response, and protection behavior have been verified.

## Future Work

- Finalize the circuit schematic.
- Verify component selection and pin assignments.
- Develop and test ADC interfacing.
- Implement voltage and current measurement.
- Integrate the OLED display.
- Implement and validate fault detection.
- Test relay operation and fail-safe behavior.
- Document the final hardware and firmware.

## License

The project license will be selected and added later.
