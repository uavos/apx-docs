---
---

# Autopilot hardware

All units and components `nodes` of the APX system connected to the CAN network. The network supports CAN protocols version 2.0A and B. It has been designed to manage a high number of incoming messages efficiently with a minimum CPU load. It also meets the priority requirements for transmit messages.

* Supports CAN protocol version 2.0 A, B Active
* Bit rates up to 1 Mbit/s
* Supports the Time Triggered Communication option Transmission

Additional devices, payloads and standard avionics can be integrated to the system through dedicated [interface device](ifc).

The application can establish any number of isolated networks for reliability and to provide redundancy layers.

## Supported configurations

* Standard airplane
* VTOL UAVs (helicopter, or any kind of rotary-wing aircraft, multi-rotors, etc.)
* Atmospheric Satellite or HAPS (formation)
* Blimps
* USVs (boats)
* UGVs (cars)
* Programmable logic controller functionality

## Autopilot features

* Very small size and light weight.
* ESD protection, -40..+80C operation.
* Leading edge components and technologies.
* Redundancy capability.
* Virtual Machine on key nodes for user program extensions onboard.
* Automatic take-off and automatic landing.
* Telemetry >10Hz with compressed stream, >100km LOS.
* AHRS linear accelerations compensation without GPS.
* [Dead-reckoning](https://en.wikipedia.org/wiki/Dead_reckoning), flight and navigation without GPS.
* Onboard wind speed and direction estimation.
* Ability to run user code for UAV control onboard.
* Bluetooth communication for maintenance.
* HIL/SIL [simulation](/gcs/sim) with X-plane flight simulator.
* GoogleEarth integration.
* Software extensions and customization (SDK).
* Onboard equipment flexibility and expandability (CAN network).
* Real-time controls override through telemetry channel (RC remote).
* Interfaces for external high-precision IMU.
* Controls big UAVs (options with IP67 enclosures).
