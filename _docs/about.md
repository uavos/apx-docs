---
label: about
---

# Technical Documentation

The [APX Automatic Control System](hw) provides hardware and flight controls abstraction layer for your *Unmanned Vehicle*, making it able to operate fully autonomous.

The system has distributed architecture, all nodes are linked together through Controller Area Network (CAN) interfaces. There may be several boards of the same type connected to the same system, making multiple levels of [redundancy](https://en.wikipedia.org/wiki/Redundancy_(engineering)) and provide overall scalability of the system.

The Ground Control Software is open source, but the Autopilot firmware is proprietary.
