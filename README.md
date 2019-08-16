# Blinky
The purpose of this small starter project is to get my feet wet with developing software on Ubuntu for microcontrollers using the GNU Arm 
Embedded Toolchain. The microcontroller I used is the Cypress FM4 S6E2CCAJ0A MCU Pioneer developer kit. I used the Cypress Semiconductor 
Peripheral Driver Library (PDL) and the GNU MCU Eclipse IDE.

This project blinks the blue LED (GPIO P18) continuously at approximately 1Hz using base timer 0 (BT0) in reload timer interrupt mode. At
each interrupt handler checks the state of the LED (ie. on or off) and then inverts it (eg. if LED off, turn LED on). 
