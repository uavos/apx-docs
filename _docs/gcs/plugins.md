---
toc: true
---

# Plugins

All user plugins should be installed in `Documents/UAVOS/Plugins` folder.

## Binary plugins

The application loads plugins provided with the app bundle and any other file from user plugins folder. The supported file types are: `.so`, `dylib`, `.bundle`, `gcs`. If a user plugin has the same name as any app bundle plugin - it overrides the original.

## QML plugins

Any `.qml` file existing in the user plugins root folder will be loaded and created in the QML context of the application.

## Main window layout customization

The main UI layout is defined in `GroundControl.qml`. When this file exists in `Documents/UAVOS/Plugins/main` folder - it overrides the main window layout and UI.

## Examples

See the source code of the GCS application for plugins [examples](https://github.com/uavos/apx-gcs/tree/main/src/Plugins).

## Terminal

UAV commands terminal, [JavaScript](https://wiki.qt.io/JavaScript)/QML based.

## Sounds

Reads out autopilot warnings and messages with defined voice and [TTS](https://en.wikipedia.org/wiki/Speech_synthesis) engines, available to the system, and emits emergency alarm sounds.

## Simulator

Plugin searches for [X-Plane](https://www.x-plane.com) flight simulator installation and performs the following actions:

* copies bundled aircraft models from GCS resources;
* copies XPL plugin to the simulator from GCS bundle;
* launches X-Plane simulator application;
* launches SIL node simulation utility (provided by the firmware package);

## Keyboard Shortcuts

Plugin manages keyboard shortcuts configuration. Any configured keyboard shortcut is triggering JS script evaluation, which is assigned to the shortcut.

F.ex. `B` button press will call `btn_BRAKE()` JS function defined in app bundle system `gcs.js` file resource.

The shortcuts configuration is split in two parts:

* System shortcuts - defined in app bundle, but can be disabled individually or overridden by user shortcuts;
* User shortcuts - completely configured by user;

Additional JS functions can be defined in `Documents/UAVOS/Scripts/gcs.js` user file.

## Firmware Loader

The plugin provides tool for upgrading of [APX nodes](/hw) firmware, or upload to stm32 [bootloader](https://www.st.com/resource/en/application_note/cd00264342-usart-protocol-used-in-the-stm32-bootloader-stmicroelectronics.pdf);

Firmware files are published in [apx-ap](https://github.com/uavos/apx-ap) repository releases and are downloaded automatically by the GCS.

## Joystick interface

The plugin makes [SDL2](https://www.libsdl.org) controls available to the UAV control logic.

## Application updates

Automatic application update support. The plugin is checking for the new releases of the software and makes updates. Currently, the following platforms are supported:

* MacOS via [Sparkle](https://sparkle-project.org/);
* Linux via [AppImage](https://appimage.org);

## Location Service

Geo map tiles downloader and offline cache, optimized for UAV applications.

## Mission Planner

[QML map](https://doc.qt.io/qt-5/qml-qtlocation-map.html) with mission editor.

## Sites

Map view plugin to add named areas to missions and airspaces.

## KML overlay import

Imports Google Earth KML files to the map view. Used to display reference items only, i.e. geofences, airspace planning etc.

## Datalink Inspector

QML widget for inspecting of datalink packets. Displays data packets decoded by the [protocol](protocols) plugin.

## Signals

QML widget to show live chart of defined UAV physical values for easy tuning.

## Video Streaming

[GStreamer](https://gstreamer.freedesktop.org) based video streaming.

* low-latency video display;
* UAV gimbal controls;
* video stream recording.

## Vehicle Configuration Window

UAV parameters tree view and extended editor.

## Telemetry Chart

[QWT](https://qwt.sourceforge.io) based widget to visualize telemetry database records.

## Compass Calibration

Helper widget for hard-iron compass calibration and magnetic disturbances visualization.

## Serial Port Console

A tool to debug and trace serial data from onboard serial ports ([VCP](/fw));

## Servo Configurator

A tool to configure some specific servo drives.

## Mandala Tree View

Tree view window of UAV state in real-time.

## Backend Tree View

GCS application backend objects tree view, used for debugging purposes.

## JavaScript Tree View

GCS application JavaScript context tree view, used for debugging and reference.
