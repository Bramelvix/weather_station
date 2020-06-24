EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5EB82F4D
P 5800 3600
F 0 "A1" H 5800 2511 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5800 2420 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5800 3600 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5800 3600 50  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
$Comp
L ESP8266:ESP-01v090 U2
U 1 1 5EB84DBD
P 3050 3000
F 0 "U2" H 3050 3515 50  0000 C CNN
F 1 "ESP-01v090" H 3050 3424 50  0000 C CNN
F 2 "ESP8266:ESP-01" H 3050 3000 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 3050 3000 50  0001 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 5EB89ED8
P 2000 2800
F 0 "#PWR01" H 2000 2650 50  0001 C CNN
F 1 "+3V3" H 2000 3000 50  0000 C CNN
F 2 "" H 2000 2800 50  0001 C CNN
F 3 "" H 2000 2800 50  0001 C CNN
	1    2000 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5EB8C8FD
P 5250 4650
F 0 "#PWR09" H 5250 4400 50  0001 C CNN
F 1 "GND" H 5255 4477 50  0000 C CNN
F 2 "" H 5250 4650 50  0001 C CNN
F 3 "" H 5250 4650 50  0001 C CNN
	1    5250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4600 5800 4600
Wire Wire Line
	2000 2800 2000 2950
Wire Wire Line
	2000 3150 2100 3150
Wire Wire Line
	2100 2950 2000 2950
Connection ~ 2000 2950
Wire Wire Line
	2000 2950 2000 3150
$Comp
L Sensor_Temperature:DS18B20 U1
U 1 1 5EB91EA2
P 2350 5600
F 0 "U1" H 2120 5646 50  0000 R CNN
F 1 "DS18B20" H 2120 5555 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 5350 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 2200 5850 50  0001 C CNN
	1    2350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5300 3200 5300
Wire Wire Line
	2650 5600 3200 5600
$Comp
L Device:R R1
U 1 1 5EB98485
P 3200 5450
F 0 "R1" H 3270 5496 50  0000 L CNN
F 1 "4.7k" H 3270 5405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3130 5450 50  0001 C CNN
F 3 "~" H 3200 5450 50  0001 C CNN
	1    3200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 5250 4600
Wire Wire Line
	5250 4600 5250 4650
Connection ~ 5800 4600
$Comp
L power:GND #PWR06
U 1 1 5EB9CC4C
P 4400 2850
F 0 "#PWR06" H 4400 2600 50  0001 C CNN
F 1 "GND" H 4405 2677 50  0000 C CNN
F 2 "" H 4400 2850 50  0001 C CNN
F 3 "" H 4400 2850 50  0001 C CNN
	1    4400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5EB9D752
P 2350 5900
F 0 "#PWR03" H 2350 5650 50  0001 C CNN
F 1 "GND" H 2355 5727 50  0000 C CNN
F 2 "" H 2350 5900 50  0001 C CNN
F 3 "" H 2350 5900 50  0001 C CNN
	1    2350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5EB9FEED
P 3200 5300
F 0 "#PWR05" H 3200 5150 50  0001 C CNN
F 1 "+5V" H 3215 5473 50  0000 C CNN
F 2 "" H 3200 5300 50  0001 C CNN
F 3 "" H 3200 5300 50  0001 C CNN
	1    3200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2850 4000 2850
Connection ~ 3200 5300
$Comp
L power:GND #PWR04
U 1 1 5EBAE7E8
P 2750 4800
F 0 "#PWR04" H 2750 4550 50  0001 C CNN
F 1 "GND" H 2755 4627 50  0000 C CNN
F 2 "" H 2750 4800 50  0001 C CNN
F 3 "" H 2750 4800 50  0001 C CNN
	1    2750 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5EBAF804
P 2650 5000
F 0 "#PWR02" H 2650 4850 50  0001 C CNN
F 1 "+5V" H 2650 5150 50  0000 C CNN
F 2 "" H 2650 5000 50  0001 C CNN
F 3 "" H 2650 5000 50  0001 C CNN
	1    2650 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_PHOTO R2
U 1 1 5EBB1E01
P 4950 5450
F 0 "R2" H 5020 5496 50  0000 L CNN
F 1 "R_PHOTO" H 5020 5405 50  0000 L CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch5.08mm_Drill1.3mm" V 5000 5200 50  0001 L CNN
F 3 "~" H 4950 5400 50  0001 C CNN
	1    4950 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5EBB3E7A
P 4950 5300
F 0 "#PWR07" H 4950 5150 50  0001 C CNN
F 1 "+5V" H 4965 5473 50  0000 C CNN
F 2 "" H 4950 5300 50  0001 C CNN
F 3 "" H 4950 5300 50  0001 C CNN
	1    4950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5EBB5068
P 4950 5900
F 0 "#PWR08" H 4950 5650 50  0001 C CNN
F 1 "GND" H 4955 5727 50  0000 C CNN
F 2 "" H 4950 5900 50  0001 C CNN
F 3 "" H 4950 5900 50  0001 C CNN
	1    4950 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5600 4300 5600
$Comp
L Device:R R3
U 1 1 5EBB7BB4
P 4950 5750
F 0 "R3" H 5020 5796 50  0000 L CNN
F 1 "220" H 5020 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4880 5750 50  0001 C CNN
F 3 "~" H 4950 5750 50  0001 C CNN
	1    4950 5750
	1    0    0    -1  
$EndComp
Connection ~ 4950 5600
Wire Wire Line
	3200 5600 3550 5600
Connection ~ 3200 5600
Connection ~ 4000 2850
Wire Wire Line
	4000 2850 3950 2850
Wire Wire Line
	2100 2850 2100 2450
Wire Wire Line
	4000 3150 4350 3150
Wire Wire Line
	5300 3700 5100 3700
Text GLabel 5100 3700 0    50   Input ~ 0
D7
Text GLabel 2550 4800 3    50   Input ~ 0
D7
Text GLabel 4350 3150 0    50   Input ~ 0
D1
Text GLabel 5050 3100 0    50   Input ~ 0
D1
Wire Wire Line
	5050 3100 5300 3100
Text GLabel 2100 2450 0    50   Input ~ 0
D0
Text GLabel 5050 3000 0    50   Input ~ 0
D0
Wire Wire Line
	5300 3000 5050 3000
Text GLabel 6650 3700 0    50   Input ~ 0
A1
Wire Wire Line
	6650 3700 6300 3700
Text GLabel 4300 5600 0    50   Input ~ 0
A1
Text GLabel 3550 5600 0    50   Input ~ 0
D8
Text GLabel 5100 3800 0    50   Input ~ 0
D8
Wire Wire Line
	5100 3800 5300 3800
$Comp
L power:GND #PWR0101
U 1 1 5EBE325F
P 6300 5300
F 0 "#PWR0101" H 6300 5050 50  0001 C CNN
F 1 "GND" H 6305 5127 50  0000 C CNN
F 2 "" H 6300 5300 50  0001 C CNN
F 3 "" H 6300 5300 50  0001 C CNN
	1    6300 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5EBE3A43
P 6050 5600
F 0 "#PWR0102" H 6050 5450 50  0001 C CNN
F 1 "+5V" H 6065 5773 50  0000 C CNN
F 2 "" H 6050 5600 50  0001 C CNN
F 3 "" H 6050 5600 50  0001 C CNN
	1    6050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5300 6550 5300
Wire Wire Line
	6550 5300 6550 5500
Wire Wire Line
	6550 5600 6050 5600
Text GLabel 6650 3600 0    50   Input ~ 0
A0
Text GLabel 6350 5700 0    50   Input ~ 0
A0
Wire Wire Line
	6350 5700 6550 5700
Wire Wire Line
	6650 3600 6300 3600
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5EBE9631
P 6750 5600
F 0 "J1" H 6858 5881 50  0000 C CNN
F 1 "Soil Moisture" H 6858 5790 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6750 5600 50  0001 C CNN
F 3 "~" H 6750 5600 50  0001 C CNN
	1    6750 5600
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5EBF2988
P 6000 2500
F 0 "#PWR0103" H 6000 2350 50  0001 C CNN
F 1 "+5V" H 6015 2673 50  0000 C CNN
F 2 "" H 6000 2500 50  0001 C CNN
F 3 "" H 6000 2500 50  0001 C CNN
	1    6000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2500 6000 2600
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5EB91891
P 2650 4300
F 0 "J2" V 2712 4444 50  0000 L CNN
F 1 "DHT" V 2803 4444 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 4300 50  0001 C CNN
F 3 "~" H 2650 4300 50  0001 C CNN
	1    2650 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 4500 2750 4800
Wire Wire Line
	2650 4500 2650 5000
Wire Wire Line
	2550 4500 2550 4800
NoConn ~ 6300 3800
NoConn ~ 6300 3900
NoConn ~ 6300 4000
NoConn ~ 6300 4100
NoConn ~ 6300 4200
NoConn ~ 6300 4300
NoConn ~ 5300 4300
NoConn ~ 5300 4200
NoConn ~ 5300 4100
NoConn ~ 5300 4000
NoConn ~ 5300 3900
NoConn ~ 5300 3600
NoConn ~ 5300 3500
NoConn ~ 5300 3400
NoConn ~ 5300 3300
NoConn ~ 5300 3200
NoConn ~ 6300 3400
NoConn ~ 6300 3100
NoConn ~ 6300 3000
NoConn ~ 5900 2600
NoConn ~ 5700 2600
NoConn ~ 4000 2950
NoConn ~ 4000 3050
NoConn ~ 2100 3050
$Comp
L Connector:USB_B_Micro J3
U 1 1 5EBA5954
P 1500 3800
F 0 "J3" H 1557 4267 50  0000 C CNN
F 1 "USB_B_Micro" H 1557 4176 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 1650 3750 50  0001 C CNN
F 3 "~" H 1650 3750 50  0001 C CNN
	1    1500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5EBA778F
P 2000 3600
F 0 "#PWR011" H 2000 3450 50  0001 C CNN
F 1 "+5V" V 2015 3728 50  0000 L CNN
F 2 "" H 2000 3600 50  0001 C CNN
F 3 "" H 2000 3600 50  0001 C CNN
	1    2000 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EBA84CD
P 1500 4350
F 0 "#PWR010" H 1500 4100 50  0001 C CNN
F 1 "GND" H 1505 4177 50  0000 C CNN
F 2 "" H 1500 4350 50  0001 C CNN
F 3 "" H 1500 4350 50  0001 C CNN
	1    1500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4200 1500 4350
Wire Wire Line
	1800 3600 2000 3600
NoConn ~ 1800 3800
NoConn ~ 1800 3900
NoConn ~ 1800 4000
NoConn ~ 1400 4200
$Comp
L Regulator_Switching:LM2596S-ADJ_module U3
U 1 1 5EBBAD3B
P 3050 1900
F 0 "U3" H 3050 2267 50  0000 C CNN
F 1 "LM2596S-ADJ_module" H 3050 2176 50  0000 C CNN
F 2 "Converter_DCDC:LM2596module" H 3100 1650 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 3050 1900 50  0001 C CNN
	1    3050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5EBBBAD1
P 2350 1800
F 0 "#PWR0104" H 2350 1650 50  0001 C CNN
F 1 "+5V" V 2365 1928 50  0000 L CNN
F 2 "" H 2350 1800 50  0001 C CNN
F 3 "" H 2350 1800 50  0001 C CNN
	1    2350 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EBBCBF7
P 2350 2000
F 0 "#PWR0105" H 2350 1750 50  0001 C CNN
F 1 "GND" V 2355 1872 50  0000 R CNN
F 2 "" H 2350 2000 50  0001 C CNN
F 3 "" H 2350 2000 50  0001 C CNN
	1    2350 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EBBD6A5
P 3700 2000
F 0 "#PWR0106" H 3700 1750 50  0001 C CNN
F 1 "GND" V 3705 1872 50  0000 R CNN
F 2 "" H 3700 2000 50  0001 C CNN
F 3 "" H 3700 2000 50  0001 C CNN
	1    3700 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5EBBDFD3
P 3700 1800
F 0 "#PWR0107" H 3700 1650 50  0001 C CNN
F 1 "+3.3V" V 3715 1928 50  0000 L CNN
F 2 "" H 3700 1800 50  0001 C CNN
F 3 "" H 3700 1800 50  0001 C CNN
	1    3700 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1800 3550 1800
Wire Wire Line
	3550 2000 3700 2000
Wire Wire Line
	2350 2000 2550 2000
Wire Wire Line
	2550 1800 2350 1800
$EndSCHEMATC
