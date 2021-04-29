---
badge: script
---

# WASM engine

This module provides virtual machine to execute WASM scripts onboard. The scripts are [pre-compiled by the GCS](/gcs/scriptcompiler) and stored in node non-volatile memory along with the source code.

## Key features

* Efficient and extremely fast scripting engine;
* LLVM compiler support with modern C++11;
* Native functions to access node resources;
* Functions (events) can be invoked by mission, or per GCS command;

## Usage examples

* Define and automate UAV safety procedures, specific to a vehicle;
* Implement specific payload protocol to communicate via [VCP](ports_vcp);
* Implement custom control algorithm and override autopilot;
* Collect specific sensors data and send it to custom GCS plugin via VCP stream;

>Script examples are available with the [GCS](/gcs) distribution.
