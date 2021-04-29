---
badge: ifc
documents:
- assets/ifc-AP10-footprint.pdf
- assets/ifc-AP9R1-footprint.pdf
- assets/ifc-AP9-footprint.pdf
modules:
- ports.vcp
- ports.controls
- ports.gpio
- ifc.mux
- protocols
- script
node: ifc
order: 10
---

# Interfaces Controller

This is optional component and it can be used to extend AP system with additional interfaces.

Interface Controller Board contains a number of various interfaces and is used to interface AP system to servos, measure voltages, power control,
input and output of different digital and analog signals. This board also contains a number of standard ports: 3V UART, RS485, RS232, CAN, 1-wire, i2c and others, which could be used to communicate with payload devices and to integrate standard avionics. The on-board software allows to extend autopilot system with any number of IFC boards connected to the same CAN network.

The built-in analog multiplexer is used to map logical signal to any of twelve physical ports of the board.

Some modifications of this node have power switches to control power lines, and also may include isolated RS232-485-422 and CAN interfaces.

![IFC](assets/ifc-pcb.png)

## Node Features

* 12x general purpose input/output ports connected to the multiplexer
  * 8 analog inputs (4x high voltage)
  * 2x CAN interfaces
  * 2x UART TTL / RS-232 / RS-485 serial ports with controlled termination
  * 1-wire interface
* 12x 5V drivers (GPO/PWM outputs)
* Power distribution switch 2 in 3 out
* Independent switched power output with integrated Step-Down converter (0.5A, +5V).
* Independent switched power output with integrated Step-Down converter (0.5A, +3.3V).
