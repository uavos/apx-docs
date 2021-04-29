---
badge: mod
---

# Core modules

Each hardware node is provided with core modules:

* `conf` - node parameters manager, providing parameters dictionary, values and synchronization features to the GCS;
* `hub` - communication interfaces hub to manage PHY interfaces and route data packets in the networks;
* `mdb` - real-time database to manage low-latency publisher/subscriber relationships, shares `mandala` items data between other components, and manages data synchronization between nodes;
* `mod` - modules manager, allowing deep inspection of every module and collecting statistical data of a node in a tree like structure;
* `node` - generic node management module, providing basic Network Management functionality, node identification, and hardware information;
* `storage` - node data storage manager provides non-volatile memory management with fall-backs and redundancy capability to store data files, such as parameters, missions, scripts, etc.;
* `syslog` - manager for status messages delivery to the GCS;
* `tasks` - a task manager and sequencer for different modules of the system, general abstraction layer from a platform OS;

## Loader state

Each node can upgrade its firmware over-the-air (OTA).
