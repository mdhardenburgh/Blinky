# Blinky
The purpose of this small starter project is to get my feet wet with developing software on Ubuntu for microcontrollers using the GNU Arm 
Embedded Toolchain. The microcontroller I used is the Cypress FM4 S6E2CCAJ0A MCU Pioneer developer kit. I used the Cypress Semiconductor 
Peripheral Driver Library (PDL) and the GNU MCU Eclipse IDE.

This project blinks the blue LED (GPIO P18) continuously at approximately 1Hz using base timer 0 (BT0) in reload timer interrupt mode. At
each interrupt handler checks the state of the LED (ie. on or off) and then inverts it (eg. if LED off, turn LED on). 

### NOTE before building project:
The CMSIS device family pack for this device is outdated and will cause build errors. To fix this, please go to project-> properties-> C/C++ Build-> Settings(expand submenu tree). In the includes section of GNU ARM Cross Assembler, GNU ARM Cross C Compiler, and GNU ARM Cross C++ Compiler delete the include paths and include system paths "${cmsis_pack_root}/Keil/FM4_DFP/1.6.0/Device/S6E2CC/Include". After doing this click "Apply and Close" and click yes if it asks to re-index your project.

Next, in project explorer menu, expand the submenu Blinky->RTE->CMSIS and Blinky->RTE->Device->S6E2CCAJ0A. You will see files that are crossed out such as mcu.h, s6e2ccxj.h and core_cm4.h. For each crossed out file, right-click and open "Properties". The menu should be open already to C/C++ Build-> Settings. Uncheck "Exclude resource from build". Click "Apply and Close"

After this is done you should be able to build the project properly and load it to the board. 
