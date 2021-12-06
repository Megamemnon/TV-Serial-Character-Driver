# TV-Serial-Character-Driver
Spin program for Propeller chip to provide NTSC composite signal of Serial input

This program was tested on a Propeller Project Board with the following configuration

Pin 12 ---- 1.1K Ohm resistor ----|

Pin 13 ---- 560 Ohm resistor  ----|---- center pin of RCA Female connector (for NTSC Out)

Pin 14 ---- 270 Ohm resistor  ----|
                                  
                                  
Pin 30 (TX) ---- Pin 0 of Teensy 4.1 (RX)

Pin 31 (RX) ---- Pin 1 of Teensy 4.1 (TX)


See uLisp Machine repo (https://github.com/Megamemnon/uLisp-Machine) for configuration of the Teensy 4.1

So why is this repo separate?? Because this is a trivial project that anyone can use to add NTSC/Composite video out to any microcontroller project. There's nothing specific to my use of this tool in the uLisp Machine project.
