---
badge: nav
documents:
- assets/nav-R4-exp-pinouts.pdf
- assets/nav-AP9-footprint.pdf
- assets/nav-AP9R1-footprint.pdf
- assets/nav-AP10-footprint.pdf
modules:
- shiva
- vcp
- controls
- controls.gpio
- ahrs
- protocols
- telemetry
- identity
- vehicle
- script
node: nav
order: 1
---

# Navigation Computer

The main board is the heart of the system. It integrates an Inertial Measurement Unit (IMU) and navigation processor.

## Node Features

* Backup battery, RTC for 2 weeks
* NVRAM non-volatile high-speed memory
* 12x GPIO ports (3V)
* RS232, RS485, 2xCAN interfaces
* Redundant IMU (Gyro + Accelerometer + Compass + Pressure) MEMS MotionTracking Devices
