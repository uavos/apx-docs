---
badge: gps
documents:
- assets/gps-AP10-footprint.pdf
- assets/gps-AP9R1-footprint.pdf
- assets/gps-RS1-footprint.pdf
- assets/gps-AP9-footprint.pdf
modules: []
node: gps
order: 2
---

# GNSS Receiver

The board uses the latest concurrent reception of GPS/QZSS, GLONASS, BeiDou MAX-M8 module and a passive built-in antenna.

There is no need for HF cables to the antenna and receiver.

There could be several GPS devices connected to the same system, located on different sides of the UAV for reliability of navigation (f.ex. some VTOLs).

In addition, GPS module have redundant Compass Module (3-axis magnetic field sensor) which can be used as a source for the AHRS (integrated to NAV node). This allows to avoid strong magnetic disturbances in sensitive applications (f.ex. Helicopters).

## Node Features

* Concurrent GPS receiver;
* Passive antenna;
* Nine-Axis (Gyro + Accelerometer + Compass) inertial sensors;
