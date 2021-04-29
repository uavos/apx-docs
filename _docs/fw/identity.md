---
badge: identity
---

# Vehicle Identity

The module provides vehicle identification and isolation in multi-vehicle configurations.

The vehicle is seen by the GCS through some interface, which is usually a radio or some wireless device with limited bandwidth. This, the data transmitted to the GCS must be optimized and filtered. This module filters the node data by allowing only certain [mandala IDs](mandala) to be transmitted to the external interface:

* telemetry stream;
* network management responses;
* VCP data (when configured);

The module has `mode` parameter, which sets the external interface for the GCS datalink, and which has different set of options for each node.

F.ex., the onboard radio modem ([`com`](/hw/com) node) can have the `mode` parameter set to `radio`, and the ground modem will have the `mode` set to `usb`. Then the GCS with the connected ground modem via USB, will recognize two vehicles (identities) - ground and onboard.
