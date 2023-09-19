---
badge: controls
---

# Controls mixer

This module is used to mix different [mandala values](mandala) to control channels.

If several controls are assigned to the same channel, the output of channel is the sum of all outputs.

The module provides array of controls. Each control, when enabled, does the following:

* multiplies input variable value by `mult` factor;
* applies `diff` multiplier;
* limits slew rate according to `speed` value;
* adds result to the assigned `channel value`;

After processing all enabled controls, the module processes the control channels:

* adds `ch_zero` bias to the `channel value`;
* limits value by `ch_min` and `ch_max`;
* publishes value to underlying subscribers, like [gpio](controls_gpio) or [protocols](protocols).

The [gpio](controls_gpio) module can output physical signals for servo drives based on `channel value`s. The channel number corresponds to gpio number. The corresponding gpio pin must have `bind` property not set.

## Configuration examples

* differential ailerons: `diff=-1.2` on the left and `diff=1.2` on the right aileron control;
* flaps: `speed=0.8`, `ch_min=0`, `ch_max=100`, `ch_zero=0`;
* throttle: `mult=2`, `ch_min=-100`, `ch_max=100`, `ch_zero=-100`:

Since most of the variables related to controls have values from -1 to +1 (or 0 to 1), the `mult` parameter must be adjusted to consider servo mechanical limits set in `ch_min` and `ch_max` to span the whole variable value range to the limited output channel range. F.ex., when you have `ch_min=0` and `ch_max=20` mechanical limits for throttle, which has the range of 0 to 1, the `mult` has to be set to 0.2 to have fill span of input value in effect.
