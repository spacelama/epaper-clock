ESP_ADDR=esp32-arduino
# defauilt anyway: ESP_PORT=3232

#WIFI_SSID="asd"
#WIFI_SSID2="bsd"

BOARD = lolin32
# ttgo-lora32-v1
# esp32
CHIP = esp32
# on the lolin32 board (but not my other esp32 boards), flashing at full 921600 doesn't start - with communication error.  likely hardware fix is this, or just upload slower: https://randomnerdtutorials.com/solved-failed-to-connect-to-esp32-timed-out-waiting-for-packet-header/
UPLOAD_SPEED = 460800

# EXCLUDE_DIRS=$(wildcard $(ARDUINO_LIBS)/*/tests) $(ARDUINO_LIBS)/ESP8266SdFat $(ARDUINO_LIBS)/SDFS
EXCLUDE_DIRS=XXXXXXXXXXXXXXXX

include $(HOME)/Arduino/template/Makefile

#.DEFAULT_GOAL := ota
.DEFAULT_GOAL := flash
