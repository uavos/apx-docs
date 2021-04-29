---
badge: sim
modules:
- shiva
- ports.vcp
- ports.controls
- ahrs
- telemetry
- identity
- vehicle
- script
node: sim
order: 1000
---

# Node simulation

The firmware [package](https://github.com/uavos/apx-ap/releases/latest) includes pre-compiled binary utility for the PC, which uses TCP/IP link to connect to the [GCS](sim) and sensor's source ([simulator](/gcs/sim)).

The utility uses original [APX](/fw) software modules to provide AHRS estimations, telemetry stream, scripting engine, etc. The output controls are sent to the xplane simulator plugin via TCP/IP. In other words, it acts as [`nav`](nav), but runs on a PC and reads sensors data from TCP stream.

When GCS downloads the latest firmware release, it unpacks the utility to `Documents/UAVOS/Firmware/sim`.
