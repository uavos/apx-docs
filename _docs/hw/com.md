---
badge: com
documents:
- assets/com-AP9R1-footprint.pdf
- assets/com-AP9-footprint.pdf
- assets/com-AP10-footprint.pdf
- assets/com-DLF1-footprint.pdf
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
node: com
order: 20
---

# Datalink Radio

The telemetry data and command line is transferred to the GCU through this node.

The radio modem module used for data transmission between GCU and UAVs is [Microhard's 900/400MHz OEM radio modem](http://microhardcorp.com). The interface board has compact dimensions of the modem and is designed to provide power supply to the modem and to interface it to the CAN bus.

On the GCU side, the system uses the same radio hardware as onboard.

## Node Features

* 100 km LOS range
* 230 Kbaud data rate
* 12x GPIO ports (3V)
* RS232, RS485, 2xCAN interfaces
* PC USB interface (USB powered)
* Bluetooth 4.0/BTLE radio
