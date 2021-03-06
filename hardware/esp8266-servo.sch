EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:esp8266-servo-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X04 J4
U 1 1 58F09150
P 7300 1500
F 0 "J4" H 7300 1750 50  0000 C CNN
F 1 "ESP8266" H 7300 1250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04_Pitch2.54mm" H 7300 300 50  0001 C CNN
F 3 "" H 7300 300 50  0001 C CNN
	1    7300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1350 6800 1350
Wire Wire Line
	6600 1550 7050 1550
Wire Wire Line
	7050 1650 6800 1650
Wire Wire Line
	7550 1350 7900 1350
Wire Wire Line
	7550 1450 7800 1450
Wire Wire Line
	7900 1550 7550 1550
Wire Wire Line
	7550 1650 7800 1650
Text Label 6800 1350 0    60   ~ 0
RXD
Text Label 6800 1450 0    60   ~ 0
GPIO0
Text Label 6800 1650 0    60   ~ 0
GND
Text Label 7600 1350 0    60   ~ 0
3V3
Text Label 7600 1450 0    60   ~ 0
RST
Text Label 7550 1550 0    60   ~ 0
CH_PD
Text Label 7600 1650 0    60   ~ 0
TXD
$Comp
L BARREL_JACK J1
U 1 1 58F0927C
P 5000 2500
F 0 "J1" H 5000 2695 50  0000 C CNN
F 1 "BARREL_JACK" H 5000 2345 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 5000 2500 50  0001 C CNN
F 3 "" H 5000 2500 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2400 5400 2400
Wire Wire Line
	5400 2400 5400 2200
Wire Wire Line
	5300 2500 5400 2500
Wire Wire Line
	5400 2500 5400 2750
Wire Wire Line
	5300 2600 5400 2600
Connection ~ 5400 2600
$Comp
L VDD #PWR01
U 1 1 58F093A2
P 5400 2200
F 0 "#PWR01" H 5400 2050 50  0001 C CNN
F 1 "VDD" H 5400 2350 50  0000 C CNN
F 2 "" H 5400 2200 50  0001 C CNN
F 3 "" H 5400 2200 50  0001 C CNN
	1    5400 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58F09489
P 5400 2750
F 0 "#PWR02" H 5400 2500 50  0001 C CNN
F 1 "GND" H 5400 2600 50  0000 C CNN
F 2 "" H 5400 2750 50  0001 C CNN
F 3 "" H 5400 2750 50  0001 C CNN
	1    5400 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58F094A1
P 6800 1700
F 0 "#PWR03" H 6800 1450 50  0001 C CNN
F 1 "GND" H 6800 1550 50  0000 C CNN
F 2 "" H 6800 1700 50  0001 C CNN
F 3 "" H 6800 1700 50  0001 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1650 6800 1700
$Comp
L LM1117-3.3 U1
U 1 1 58F09550
P 5050 1350
F 0 "U1" H 5150 1100 50  0000 C CNN
F 1 "LM1117-3.3" H 5050 1600 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5050 1350 50  0001 C CNN
F 3 "" H 5050 1350 50  0001 C CNN
	1    5050 1350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 58F09586
P 4400 1250
F 0 "#PWR04" H 4400 1100 50  0001 C CNN
F 1 "VDD" H 4400 1400 50  0000 C CNN
F 2 "" H 4400 1250 50  0001 C CNN
F 3 "" H 4400 1250 50  0001 C CNN
	1    4400 1250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR05
U 1 1 58F095F0
P 5550 1250
F 0 "#PWR05" H 5550 1100 50  0001 C CNN
F 1 "+3V3" H 5550 1390 50  0000 C CNN
F 2 "" H 5550 1250 50  0001 C CNN
F 3 "" H 5550 1250 50  0001 C CNN
	1    5550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1250 4400 1350
Wire Wire Line
	4400 1350 4750 1350
Wire Wire Line
	5350 1350 5550 1350
Wire Wire Line
	5550 1350 5550 1250
$Comp
L GND #PWR06
U 1 1 58F0967E
P 5050 1800
F 0 "#PWR06" H 5050 1550 50  0001 C CNN
F 1 "GND" H 5050 1650 50  0000 C CNN
F 2 "" H 5050 1800 50  0001 C CNN
F 3 "" H 5050 1800 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1650 5050 1800
$Comp
L C C1
U 1 1 58F096E5
P 4650 1600
F 0 "C1" H 4675 1700 50  0000 L CNN
F 1 "10uF" H 4675 1500 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4688 1450 50  0001 C CNN
F 3 "" H 4650 1600 50  0001 C CNN
	1    4650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1750 5450 1750
Connection ~ 5050 1750
Wire Wire Line
	4650 1450 4650 1350
Connection ~ 4650 1350
$Comp
L C C2
U 1 1 58F097A8
P 5450 1550
F 0 "C2" H 5475 1650 50  0000 L CNN
F 1 "10uF" H 5475 1450 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5488 1400 50  0001 C CNN
F 3 "" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1400 5450 1350
Connection ~ 5450 1350
Wire Wire Line
	5450 1750 5450 1700
$Comp
L +3V3 #PWR07
U 1 1 58F09873
P 7900 1250
F 0 "#PWR07" H 7900 1100 50  0001 C CNN
F 1 "+3V3" H 7900 1390 50  0000 C CNN
F 2 "" H 7900 1250 50  0001 C CNN
F 3 "" H 7900 1250 50  0001 C CNN
	1    7900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1250 7900 1550
$Comp
L CONN_01X03 J3
U 1 1 58F098E8
P 7050 3000
F 0 "J3" H 7050 3200 50  0000 C CNN
F 1 "SERVO" V 7150 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7050 3000 50  0001 C CNN
F 3 "" H 7050 3000 50  0001 C CNN
	1    7050 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58F09973
P 6750 3200
F 0 "#PWR08" H 6750 2950 50  0001 C CNN
F 1 "GND" H 6750 3050 50  0000 C CNN
F 2 "" H 6750 3200 50  0001 C CNN
F 3 "" H 6750 3200 50  0001 C CNN
	1    6750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3100 6750 3100
Wire Wire Line
	6750 3100 6750 3200
$Comp
L VDD #PWR09
U 1 1 58F099E4
P 6350 2800
F 0 "#PWR09" H 6350 2650 50  0001 C CNN
F 1 "VDD" H 6350 2950 50  0000 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3000 6350 3000
Wire Wire Line
	6350 3000 6350 2800
Wire Wire Line
	6400 2900 6850 2900
Text Label 6400 2900 0    60   ~ 0
SERVO_SIG
Text Label 6600 1550 0    60   ~ 0
SERVO_SIG
Connection ~ 7900 1350
$Comp
L CONN_01X04 J5
U 1 1 58F0A478
P 9350 1450
F 0 "J5" H 9350 1700 50  0000 C CNN
F 1 "CONN_01X04" V 9450 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9350 1450 50  0001 C CNN
F 3 "" H 9350 1450 50  0001 C CNN
	1    9350 1450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR011
U 1 1 58F0A4E7
P 8850 1200
F 0 "#PWR011" H 8850 1050 50  0001 C CNN
F 1 "+3V3" H 8850 1340 50  0000 C CNN
F 2 "" H 8850 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
Text Label 8850 1600 0    60   ~ 0
TXD
$Comp
L GND #PWR012
U 1 1 58F0A56E
P 8750 1700
F 0 "#PWR012" H 8750 1450 50  0001 C CNN
F 1 "GND" H 8750 1550 50  0000 C CNN
F 2 "" H 8750 1700 50  0001 C CNN
F 3 "" H 8750 1700 50  0001 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1300 8750 1700
Text Label 8850 1500 0    60   ~ 0
RXD
Wire Wire Line
	9150 1300 8750 1300
Connection ~ 8750 1600
Wire Wire Line
	9150 1400 8850 1400
Wire Wire Line
	8850 1400 8850 1200
Wire Wire Line
	9150 1500 8850 1500
Wire Wire Line
	9150 1600 8850 1600
Wire Wire Line
	7050 1450 6800 1450
$EndSCHEMATC
