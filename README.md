# epaper-clock
Motorcycle epaper clock that should update display once a minute, including time with automatic timezone update, NTP time syncing when connected to a wifi (perhaps eventually Bluetooth on your phone), temperature, and when ignition is on, will be backlit when too dark to read.  Othewise with ignition off, will run off LiIon battery and go into deep sleep for a minute at a time

When mounting your epaper display, remember epaper is susceptible to UV light, and your bike may be outside in the sun 12 hours a day, so find a case with some UV blocking glass on front to put your clock in (and let me know where you sourced such a thing from).

# Dependencies:

Compile on the commandline with https://github.com/plerup/makeEspArduino.git Currently works only up until commit fb748959db7b69f9353b6c052d0471d730cd6830 (HEAD, tag: 5.4.3), because of bug plerup/makeEspArduino#155

Fire up an Arduino GUI and install these libraries:
 - Adafruit GFX Library
 - RTClib
 - Adafruit_LED_Backpack

Some common routines, makefile templates and syslog calls that all of my esp8266/32 devices use:
 - https://github.com/spacelama/template (checked out into a directory called "template32", and checked out into the esp32 branch)
 - https://github.com/spacelama/Syslog

Install those in the parent directory to where you've downloaded this.

# Configure:
Configure the variables in ../template32/Makefile per the template there in Makefile.customise-and-move-to-Makefile

# Install:
Perhaps change the UPLOAD_PORT and .DEFAULT_GOAL in Makefile

run `make`

You'll probably need `.DEFAULT_GOAL := flash` with `UPLOAD_PORT := /dev/ttyUSB???` initally until you have a valid image on your device.  Then if you've configured variables correctly and you can talk to the device on the network, you can revert thereon back to `.DEFALT_GOAL := ota`
