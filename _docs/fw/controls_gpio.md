---
badge: controls.gpio
---

# GPIO ports

The module provides node's GPIO signals management:

* configure GPIO physical driver parameters and mode;
* output digital signal depending on [mandala variable](mandala) value;
* measure signal input parameters and output to mandala variable;

This module works in combination with [controls](controls) module to provide PWM output for servos.

>The multiplier `mult` is applied always before `bias`, for both inputs and outputs when applicable.
