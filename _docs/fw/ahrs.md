---
badge: ahrs
---

# Inertial Navigation

The [AHRS](https://en.wikipedia.org/wiki/Attitude_and_heading_reference_system) module estimates different navigation parameters, based on sensor readings from other modules. The estimations are performed with MEKF algorithm, and the dead-reckoning (in case of GPS lost) is based on airspeed sensor readings and current wind estimator values.

The current implementation is capable to provide bandwidth of up to **8KHz** for primary loop controls (stabilization), and **100Hz** for outer loop controls (navigation). The update rate is adjusted automatically, based on available sensors data rate.

The concept of **distributed architecture**, as the basic concept of APX system, assumes, that all sensors monitor their health and supply data to consumers (AHRS) if possible. Then AHRS automatically choose the best option for the data source, and reconfigure itself to adopt to current conditions.

The source for inertial sensors is automatically selected, based on availability, thus making redundancy possible.

The data source is chosen with the following priorities (high to low):

* local node sensors;
* other LAN sensors with explicit priorities;
* sensor data fixes from ground control;

## Estimated parameters

* bodyframe angles;
* global position coordinates;
* bodyframe velocities;
* filtered gyros with compensated drift;
* linear accelerations;
* wind speed and direction (correlator);
* airspeed fused with other sensors;
* vertical speed fused with other sensors;
* compensated variometer, used for gliding with thermals;
* vehicle energy, used for [TECS](http://www.acronymfinder.com/Total-Energy-Control-System-(TECS).html) control;
* slip angle to aid maneuvers and coordinated turns;
* trajectory tangent with different dynamic models;
* sensors malfunction monitor and validation;
