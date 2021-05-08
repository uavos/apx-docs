---
---

# Mandala variables

All parameters of the vehicle state are organized in structured tree of values. The definition of the structure, called `mandala` is described in this section.

Data items are shared between node modules and other nodes by means of publisher/subscriber framework, which is managed by [mdb](mdb) broker.

The tree consists of the following levels:

1. **`class`**: `sns`, `ctr`, `est`, `cmd` (2 bits);
2. **`type`**: `nav`, `env` (1 bit);
3. **`subsystem`**: up to 15 subsystems (4 bits);
4. **`field`**: up to 15 fields (4 bits);

The unique identifier of any value consists of 11 bits. Each packet in the network uses mandala uid to address pub/sub values.

## Data access

Mandala tree is available in GCS Java Script context and facts tree and created for every recognized vehicle.

>GCS UI and JS context have simplified structure, where `type` component is **omitted**. Moreover, on GCS side **radians are converted to degrees**.

F.ex., in [GCS Terminal](/gcs/plugins#terminal), which evaluates in JS context, any mandala value item can be accessed as `class.subsystem.field`.

* `cmd.pos.altitude=800` will set commanded altitude to 800m;
* `ctr.wing.flaps=0.8` extracts flaps to 80%;
* `cmd.proc.mode = proc_mode_TAXI` will enter TAXI procedure;
* `cmd.proc.action = proc_action_next` will trigger the next stage of the current procedure;

## Data synchronization

Since GCS has dedicated mandala tree for every detected vehicle, the data in this tree (values) is synchronized with the current vehicle state by means of:

* [telemetry](telemetry) stream (usually this is the only data source);
* any data packets received and decoded from interfaces;

On the onboard network and between [nodes](/hw) the data is synchronized by [mdb](mdb) module.

Some special mandala fields are synchronized by [bundles](https://github.com/uavos/apx-lib/blob/main/mandala/MandalaBundles.h). This happens when to have atomic data packages is required. F.ex., for IMU sensors data packages or to set commanded position vector (lat,lon).

The fields beyond `cmd.env` group do not have any value associated with them, but are used as UIDs of data packets to implement different [protocols](/gcs/protocols) for data transfer.

## Data structure

{% assign content=site.data.meta.fw.mandala.content %}
{% include mandala.html %}
