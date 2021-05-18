---
badge: mdb
---

# Data Broker

This module provides data synchronization in network and pub/sub management.

[Mandala variables](mandala) can be either `publisher` or `subscriber`. A publisher will not broadcast data if there's no subscribers. A subscriber will periodically search for available publishers, to find better source of data in case there's any redundancy layers.
