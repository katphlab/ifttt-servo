# Controlling Servo motor using IFTTT and MQTT
This project uses IFTTT and MQTT to remotely control a Servo motor using ESP8266 only <br>

## Required Software
- [NodeMCU Firmware](https://nodemcu-build.com/), build your own, I chose MQTT and CJOS in addition to defaults, make sure that your firmware size is less than your module flash size. My flash size is 4Mbit, and firmware size is 405KB
- [NodeMCU Flasher](https://github.com/nodemcu/nodemcu-flasher), for flashing the NodeMCU firmware
- [ESPlorer](https://esp8266.ru/esplorer/)

## Required Hardware
- USB-UART converter, an Arduino can be used as well for this purpose
- ESP8266, are available for low cost from amazon or aliexpress
- Servo, I'm using SG90 servo motor
- Jumper wires and a Breadboard for connections<br>

### For layout and setup instructions, refer to sources in credits

# All credits to the following sources<br>
- Controlling servo motor using ESP8266 is explained at [RoboMero](http://www.roboremo.com/esp8266-servo.html)<br>
- Using IFTTT and MQTT is explained in [this](https://www.hackster.io/devicehub-net/do-button-from-ifttt-home-automation-example-494a1a) hackster project
- NodeMCU Team
