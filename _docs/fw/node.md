---
badge: node
---

# Node modules tree

This module provides management of requests from the GCS to:

* lookup the tree of node modules;
* display module statistics and errors;
* monitor performance counters of a module;

The purpose of this feature is to check the system health during the integration, f.ex. check data interfaces bandwidth limits, MCUs overload, sensors malfunctions, etc.

The GCS also provides UI for modules inspection under the `Tools` fact of a node.

Each node module could be any of the following:

* device driver, i.e. imu chip, memory, sensor chip, etc.;
* software module which provides some functionality, i.e. ahrs, identity, scripting engine, etc.;
* performance counter, i.e. cpu load counter, data rate counter, etc;

## GCS modules shell

GCS terminal widget can be used to interact with node modules. Any command, started with `sh` will be processed by this module and the result is printed as a vehicle message in the terminal.

The syntax is as follows:

```text
sh [<node name>] [<module name>] [<module name>...] [*] [ls|rst]
```

* **node name** - is the name of a node (f.ex. [`nav`](/hw/nav)) to be accessed. If not specified - the request will be sent to all nodes;
* **module name** - is the name of a module addressed, when several modules are specified, the tree is searched for children modules to match module names;
* **\*** - asterisks will address all underlying modules recursively;
* **ls** - special command which is reporting the modules tree in the terminal;
* **rst** - special command which resets any addressed performance counter(s);

### Examples

* `sh cpu` - will print cpu usage performance counters for all nodes;
* `sh nav cpu` - will print cpu usage performance counter for `nav` node`;
* `sh nav cpu` - will print cpu usage performance counter for `nav` node`;
* `sh nav ahrs *` - will print all `ahrs` related modules and their stats for `nav` node`;
* `sh nav * rst` - resets all performance counters for `nav` node`;
* `sh nav hub ls` - prints modules tree structure under `hub` module for `nav` node`;
* `sh imon` - prints power usage monitors data for all nodes;
