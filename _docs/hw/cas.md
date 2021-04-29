---
badge: cas
documents:
- assets/cas-AP10-footprint.pdf
- assets/cas-AP9-footprint.pdf
modules: []
node: cas
order: 3
---

# Pitot probe

Temperature compensated, high-accuracy sensor, connects to the pitot tube of the aircraft. This sensor is required for auto-landing and flights without GPS.

Altitude sensor is integrated with accelerometers and fused by MEKF to achieve 1cm resolution and fast response for variometer.

Pitot Tube's heater control is equipped with ADC and power switch to stabilize the temperature.

## Node Features

* Pitot tube heater control circuit
* RS485 interface (NMEA, raw data)
* Temperature compensation (AT/RT)
