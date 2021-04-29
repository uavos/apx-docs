---
badge: telemetry
---

# Telemetry streamer

The module provides telemetry stream management.

See the [source code](https://github.com/uavos/apx-lib/tree/main/xbus/telemetry) for implementation details.

## Data flow

In the common scenario, the telemetry stream should be generated in one node, where the most of data is available, and usually it is [`nav`](/hw/nav) node. The module collects all [mandala values](mandala) from the network and local node modules, assembles values to highly packed data stream and transmits it to the network. The [`com`](/hw/com) node in the same network receives the telemetry packet, wraps it to the [identity](identity) and transmits `vehicle.downlink` packet to the GCS.

>The telemetry module collects mandala values only when they are available for the node, it does not [subscribe](mdb) for any mandala field explicitly.

Another example would be when you want to receive some measurements from the GCS ground modem or tracking antenna. F.ex., you need ground modem battery voltage in the GCS instruments. For such scenario, the configured ground modem with its [identity](identity) will have telemetry module configured as `mode=always`, `rate=1Hz` for the GCS to receive all ground modem data once a second.
