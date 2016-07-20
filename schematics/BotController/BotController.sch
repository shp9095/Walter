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
LIBS:BotController
LIBS:BotController-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Snorre"
Date "23. May 2016"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "Jochen Alt"
Comment4 "PowerSupplyBoard"
$EndDescr
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
$Comp
L CP C7
U 1 1 577C4445
P 3050 7450
F 0 "C7" H 3075 7550 50  0000 L CNN
F 1 "100uF" H 3075 7350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 3088 7300 50  0001 C CNN
F 3 "" H 3050 7450 50  0000 C CNN
	1    3050 7450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 576C5127
P 2250 7500
F 0 "C2" H 2275 7600 50  0000 L CNN
F 1 "100nF" H 2275 7400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2288 7350 30  0001 C CNN
F 3 "" H 2250 7500 60  0000 C CNN
	1    2250 7500
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 576C5164
P 2050 7500
F 0 "C1" H 2075 7600 50  0000 L CNN
F 1 "100uF" H 2075 7400 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L13_P3.8" H 2088 7350 30  0001 C CNN
F 3 "" H 2050 7500 60  0000 C CNN
	1    2050 7500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P13
U 1 1 577920F3
P 8700 7300
F 0 "P13" H 8700 7450 50  0000 C CNN
F 1 "PowerEnableIn" V 8800 7300 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-02" H 8700 7300 50  0001 C CNN
F 3 "" H 8700 7300 50  0000 C CNN
	1    8700 7300
	0    1    1    0   
$EndComp
Text Label 4050 3100 0    39   ~ 0
TAL
Text Label 11750 4800 0    39   ~ 0
GND
Text Label 11300 4200 0    39   ~ 0
GND
Text Label 10800 3550 0    39   ~ 0
DIR3
$Comp
L ATMEGA644A-P IC1
U 1 1 576C597B
P 5050 4000
F 0 "IC1" H 4200 5880 50  0000 L BNN
F 1 "ATMEGA644A-P" H 5450 2050 50  0000 L BNN
F 2 "Housings_DIP:DIP-40_W15.24mm" H 5050 4000 50  0001 C CIN
F 3 "" H 5050 4000 50  0000 C CNN
	1    5050 4000
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR01
U 1 1 576CFF3F
P 1200 7800
F 0 "#PWR01" H 1200 7600 50  0001 C CNN
F 1 "GNDPWR" H 1200 7670 50  0000 C CNN
F 2 "" H 1200 7750 60  0000 C CNN
F 3 "" H 1200 7750 60  0000 C CNN
	1    1200 7800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 576CF103
P 1000 7150
F 0 "#FLG02" H 1000 7245 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 7330 50  0000 C CNN
F 2 "" H 1000 7150 60  0000 C CNN
F 3 "" H 1000 7150 60  0000 C CNN
	1    1000 7150
	1    0    0    -1  
$EndComp
Text Label 3050 7150 0    39   ~ 0
+5V
Text Label 11750 4700 0    39   ~ 0
CLK5
Text Label 11750 4600 0    39   ~ 0
DIR5
Text Label 11750 4500 0    39   ~ 0
En5
Text Label 11300 4100 0    39   ~ 0
CLK4
Text Label 11300 4000 0    39   ~ 0
DIR4
Text Label 11300 3900 0    39   ~ 0
EN4
Text Label 10800 3650 0    39   ~ 0
CLK3
Text Label 10800 3450 0    39   ~ 0
EN3
Text Label 10300 3200 0    39   ~ 0
CLK2
Text Label 10300 3100 0    39   ~ 0
DIR2
Text Label 10300 3000 0    39   ~ 0
EN2
Text Label 9900 2700 0    39   ~ 0
GND
$Comp
L CONN_01X04 P11
U 1 1 576C6CB7
P 11950 4650
F 0 "P11" H 11950 4900 50  0000 C CNN
F 1 "Stepper Shoulder" V 12050 4650 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 11950 4650 60  0001 C CNN
F 3 "" H 11950 4650 60  0000 C CNN
	1    11950 4650
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 P10
U 1 1 576C6B2A
P 11500 4050
F 0 "P10" H 11500 4300 50  0000 C CNN
F 1 "Stepper Upperarm" V 11600 4050 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 11500 4050 60  0001 C CNN
F 3 "" H 11500 4050 60  0000 C CNN
	1    11500 4050
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 P9
U 1 1 576C6974
P 11000 3600
F 0 "P9" H 11000 3850 50  0000 C CNN
F 1 "Stepper Forearm" V 11100 3600 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 11000 3600 60  0001 C CNN
F 3 "" H 11000 3600 60  0000 C CNN
	1    11000 3600
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 P8
U 1 1 576C6824
P 10500 3150
F 0 "P8" H 10500 3400 50  0000 C CNN
F 1 "Stepper Ellbow" V 10600 3150 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 10500 3150 60  0001 C CNN
F 3 "" H 10500 3150 60  0000 C CNN
	1    10500 3150
	1    0    0    1   
$EndComp
Text Label 950  7800 0    39   ~ 0
GND
Text Label 7350 6550 0    39   ~ 0
GND
Text Label 9900 2400 0    39   ~ 0
EN1
Text Label 9900 2600 0    39   ~ 0
CLK1
Text Label 9900 2500 0    39   ~ 0
DIR1
$Comp
L CONN_01X04 P5
U 1 1 572E5E87
P 10100 2550
F 0 "P5" H 10100 2800 50  0000 C CNN
F 1 "Stepper 1 WristTurn" V 10200 2550 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 10100 2550 60  0001 C CNN
F 3 "" H 10100 2550 60  0000 C CNN
	1    10100 2550
	1    0    0    1   
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 572B75C3
P 8700 3450
F 0 "P3" H 8700 3700 50  0000 C CNN
F 1 "Encoder Socket 0" V 8800 3450 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 8700 3450 60  0001 C CNN
F 3 "" H 8700 3450 60  0000 C CNN
	1    8700 3450
	1    0    0    1   
$EndComp
Text Label 6050 3200 0    39   ~ 0
ConflictEncoderGND
Text Label 6050 3300 0    39   ~ 0
ConflictEncoderVDD
Text Label 9400 4000 0    39   ~ 0
EncoderVDD
Text Label 9400 4300 0    39   ~ 0
GND
$Comp
L CONN_01X04 P4
U 1 1 572B216F
P 9600 4150
F 0 "P4" H 9600 4400 50  0000 C CNN
F 1 "Encoder Socket" V 9700 4150 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 9600 4150 60  0001 C CNN
F 3 "" H 9600 4150 60  0000 C CNN
	1    9600 4150
	1    0    0    1   
$EndComp
$Comp
L R R4
U 1 1 57271C02
P 9150 3800
F 0 "R4" V 9230 3800 50  0000 C CNN
F 1 "1.5K" V 9150 3800 50  0000 C CNN
F 2 "BotController:R4(7)" V 9080 3800 30  0001 C CNN
F 3 "" H 9150 3800 30  0000 C CNN
	1    9150 3800
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5727190E
P 8950 3800
F 0 "R3" V 9030 3800 50  0000 C CNN
F 1 "1.5K" V 8950 3800 50  0000 C CNN
F 2 "BotController:R4(8)" V 8880 3800 30  0001 C CNN
F 3 "" H 8950 3800 30  0000 C CNN
	1    8950 3800
	1    0    0    -1  
$EndComp
Text Label 9400 4200 0    39   ~ 0
SDA
Text Label 9400 4100 0    39   ~ 0
SCl
$Comp
L CONN_01X04 P2
U 1 1 57261EF0
P 7200 6750
F 0 "P2" H 7200 7000 50  0000 C CNN
F 1 "Herkulex Servo" V 7300 6750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-04" H 7200 6750 60  0001 C CNN
F 3 "" H 7200 6750 60  0000 C CNN
	1    7200 6750
	0    1    1    0   
$EndComp
$Comp
L POT RV1
U 1 1 572524E5
P 3700 4750
F 0 "RV1" H 3700 4650 50  0000 C CNN
F 1 "10K" H 3700 4750 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer-Piher_PT15-V12-5_horizontal" H 3700 4750 60  0001 C CNN
F 3 "" H 3700 4750 60  0000 C CNN
	1    3700 4750
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 57251FC4
P 6400 3400
F 0 "R2" V 6480 3400 50  0000 C CNN
F 1 "1K" V 6400 3400 50  0000 C CNN
F 2 "Discret:R4" V 6330 3400 30  0001 C CNN
F 3 "" H 6400 3400 30  0000 C CNN
	1    6400 3400
	0    1    1    0   
$EndComp
Text Label 6350 6550 1    39   ~ 0
GND
Text Label 6150 6550 1    39   ~ 0
TXD0
Text Label 6250 6550 1    39   ~ 0
RXD0
$Comp
L SW_PUSH SW2
U 1 1 50E56802
P 2450 2300
F 0 "SW2" H 2600 2410 50  0000 C CNN
F 1 "reset" H 2450 2220 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH-12mm" H 2450 2300 60  0001 C CNN
F 3 "" H 2450 2300 60  0001 C CNN
	1    2450 2300
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 AVR1
U 1 1 50E5677B
P 7750 4550
F 0 "AVR1" H 7695 4740 50  0000 C CNN
F 1 "AVR-ISP-6" H 7535 4270 50  0000 L BNN
F 2 "BotController:AVR-ISP-6" V 7255 4540 50  0001 C CNN
F 3 "" H 7750 4550 60  0001 C CNN
	1    7750 4550
	1    0    0    -1  
$EndComp
Text Label 7850 4550 0    30   ~ 0
MOSI
NoConn ~ 4050 2700
Text Label 7600 4550 0    30   ~ 0
SCK
Text Label 7600 4650 0    30   ~ 0
RST
Text Label 6050 5300 0    30   ~ 0
TXD1
Text Label 6050 5200 0    30   ~ 0
RXD1
$Comp
L R R1
U 1 1 50B25329
P 4050 1950
F 0 "R1" V 4130 1950 50  0000 C CNN
F 1 "10K" V 4050 1950 50  0000 C CNN
F 2 "Discret:R4" H 4050 1950 60  0001 C CNN
F 3 "" H 4050 1950 60  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4050 2700
$Comp
L C C15
U 1 1 50E5D492
P 2750 2650
F 0 "C15" H 2800 2750 50  0000 L CNN
F 1 "100nF" H 2800 2550 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 2750 2650 60  0001 C CNN
F 3 "" H 2750 2650 60  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
Text Label 7600 4450 0    30   ~ 0
MISO
$Comp
L C C16
U 1 1 50E7F8BE
P 1700 4050
F 0 "C16" H 1750 4150 50  0000 L CNN
F 1 "100nF" H 1750 3950 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 1700 4050 60  0001 C CNN
F 3 "" H 1700 4050 60  0001 C CNN
	1    1700 4050
	1    0    0    -1  
$EndComp
NoConn ~ 30200 -14200
NoConn ~ 30200 -14200
$Comp
L FUSE F1
U 1 1 577CA69C
P 1400 8600
F 0 "F1" H 1500 8650 50  0000 C CNN
F 1 "FUSE" H 1300 8550 50  0000 C CNN
F 2 "BotController:FUSE_HOLDER" H 1400 8600 50  0001 C CNN
F 3 "" H 1400 8600 50  0000 C CNN
	1    1400 8600
	1    0    0    -1  
$EndComp
$Comp
L Relay_1xON REL2
U 1 1 577CA69F
P 8050 8650
F 0 "REL2" H 8050 8750 50  0000 C CNN
F 1 "Relay_1xON" H 8050 8550 50  0000 C CNN
F 2 "BotController:RELAIS_HF115F" H 8050 8650 50  0001 C CNN
F 3 "" H 8050 8650 50  0000 C CNN
	1    8050 8650
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 577CA6A5
P 5050 10450
F 0 "C12" H 5075 10550 50  0000 L CNN
F 1 "100nF" H 5075 10350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 5088 10300 50  0001 C CNN
F 3 "" H 5050 10450 50  0000 C CNN
	1    5050 10450
	1    0    0    -1  
$EndComp
$Comp
L LM7809ACT U3
U 1 1 577CA6A6
P 6500 10000
F 0 "U3" H 6300 10200 50  0000 C CNN
F 1 "LM7809ACT" H 6500 10200 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 6500 10100 50  0000 C CIN
F 3 "" H 6500 10000 50  0000 C CNN
	1    6500 10000
	1    0    0    -1  
$EndComp
$Comp
L CP C11
U 1 1 577CA6A7
P 4750 10450
F 0 "C11" H 4775 10550 50  0000 L CNN
F 1 "2200uF" H 4775 10350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 4788 10300 50  0001 C CNN
F 3 "" H 4750 10450 50  0000 C CNN
	1    4750 10450
	1    0    0    -1  
$EndComp
$Comp
L CP C13
U 1 1 577CA6A8
P 6900 10400
F 0 "C13" H 6925 10500 50  0000 L CNN
F 1 "1000uF" H 6925 10300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 6938 10250 50  0001 C CNN
F 3 "" H 6900 10400 50  0000 C CNN
	1    6900 10400
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 577CA6A9
P 7200 10400
F 0 "C14" H 7225 10500 50  0000 L CNN
F 1 "100nF" H 7225 10300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3_P2.5" H 7238 10250 50  0001 C CNN
F 3 "" H 7200 10400 50  0000 C CNN
	1    7200 10400
	1    0    0    -1  
$EndComp
$Comp
L Relay_1xON REL1
U 1 1 577CA6AA
P 7950 9950
F 0 "REL1" H 7950 10050 50  0000 C CNN
F 1 "Relay_1xON" H 7950 9850 50  0000 C CNN
F 2 "BotController:RELAIS_HF115F" H 7950 9950 50  0001 C CNN
F 3 "" H 7950 9950 50  0000 C CNN
	1    7950 9950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P17
U 1 1 577CA6AD
P 5500 9500
F 0 "P17" H 5500 9650 50  0000 C CNN
F 1 "PowerEnableOut" V 5600 9500 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-02" H 5500 9500 50  0001 C CNN
F 3 "" H 5500 9500 50  0000 C CNN
	1    5500 9500
	1    0    0    1   
$EndComp
$Comp
L R R10
U 1 1 577CA6AE
P 6600 9250
F 0 "R10" V 6680 9250 50  0000 C CNN
F 1 "1K" V 6600 9250 50  0000 C CNN
F 2 "Discret:R4" V 6530 9250 50  0001 C CNN
F 3 "" H 6600 9250 50  0000 C CNN
	1    6600 9250
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 577CA6AF
P 6350 9550
F 0 "R8" V 6430 9550 50  0000 C CNN
F 1 "1K" V 6350 9550 50  0000 C CNN
F 2 "Discret:R4" V 6280 9550 50  0001 C CNN
F 3 "" H 6350 9550 50  0000 C CNN
	1    6350 9550
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR03
U 1 1 577CA6B0
P 950 10800
F 0 "#PWR03" H 950 10600 50  0001 C CNN
F 1 "GNDPWR" H 950 10670 50  0000 C CNN
F 2 "" H 950 10750 60  0000 C CNN
F 3 "" H 950 10750 60  0000 C CNN
	1    950  10800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 577CA6B1
P 950 8600
F 0 "#FLG04" H 950 8695 50  0001 C CNN
F 1 "PWR_FLAG" H 950 8780 50  0000 C CNN
F 2 "" H 950 8600 60  0000 C CNN
F 3 "" H 950 8600 60  0000 C CNN
	1    950  8600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P28
U 1 1 577CA6B7
P 11250 8700
F 0 "P28" H 11250 8850 50  0000 C CNN
F 1 "Power Stepper" V 11350 8700 50  0000 C CNN
F 2 "Connect:bornier2" H 11250 8700 50  0001 C CNN
F 3 "" H 11250 8700 50  0000 C CNN
	1    11250 8700
	1    0    0    -1  
$EndComp
Text Label 4050 3100 0    39   ~ 0
TAL
Text Label 11750 4800 0    39   ~ 0
GND
Text Label 11300 4200 0    39   ~ 0
GND
Text Label 10800 3550 0    39   ~ 0
DIR3
Text Label 3050 7150 0    39   ~ 0
+5V
Text Label 11750 4700 0    39   ~ 0
CLK5
Text Label 11750 4600 0    39   ~ 0
DIR5
Text Label 11750 4500 0    39   ~ 0
En5
Text Label 11300 4100 0    39   ~ 0
CLK4
Text Label 11300 4000 0    39   ~ 0
DIR4
Text Label 11300 3900 0    39   ~ 0
EN4
Text Label 10800 3650 0    39   ~ 0
CLK3
Text Label 10800 3450 0    39   ~ 0
EN3
Text Label 10300 3200 0    39   ~ 0
CLK2
Text Label 10300 3100 0    39   ~ 0
DIR2
Text Label 10300 3000 0    39   ~ 0
EN2
Text Label 9900 2700 0    39   ~ 0
GND
Text Label 950  7800 0    39   ~ 0
GND
Text Label 7350 6550 0    39   ~ 0
GND
Text Label 9900 2400 0    39   ~ 0
EN1
Text Label 9900 2600 0    39   ~ 0
CLK1
Text Label 9900 2500 0    39   ~ 0
DIR1
Text Label 6050 3200 0    39   ~ 0
ConflictEncoderGND
Text Label 6050 3300 0    39   ~ 0
ConflictEncoderVDD
Text Label 9400 4000 0    39   ~ 0
EncoderVDD
Text Label 9400 4300 0    39   ~ 0
GND
Text Label 9400 4200 0    39   ~ 0
SDA
Text Label 9400 4100 0    39   ~ 0
SCl
Text Label 6350 6550 1    39   ~ 0
GND
Text Label 6150 6550 1    39   ~ 0
TXD0
Text Label 6250 6550 1    39   ~ 0
RXD0
Text Label 7850 4550 0    30   ~ 0
MOSI
NoConn ~ 4050 2700
Text Label 7600 4550 0    30   ~ 0
SCK
Text Label 7600 4650 0    30   ~ 0
RST
Text Label 6050 5300 0    30   ~ 0
TXD1
Text Label 6050 5200 0    30   ~ 0
RXD1
NoConn ~ 4050 2700
Text Label 7600 4450 0    30   ~ 0
MISO
$Comp
L 7805 U1
U 1 1 576C4E44
P 2650 7200
F 0 "U1" H 2800 7004 60  0000 C CNN
F 1 "7805" H 2650 7400 60  0000 C CNN
F 2 "BotController:78XX-TO-220" H 2650 7200 60  0001 C CNN
F 3 "" H 2650 7200 60  0000 C CNN
	1    2650 7200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 576D01C9
P 1200 7800
F 0 "#FLG05" H 1200 7895 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 7980 50  0000 C CNN
F 2 "" H 1200 7800 60  0000 C CNN
F 3 "" H 1200 7800 60  0000 C CNN
	1    1200 7800
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 577DA305
P 5850 10200
F 0 "R6" V 5930 10200 50  0000 C CNN
F 1 "120" V 5850 10200 50  0000 C CNN
F 2 "Discret:R4" V 5780 10200 50  0001 C CNN
F 3 "" H 5850 10200 50  0000 C CNN
	1    5850 10200
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 577DA475
P 5850 8950
F 0 "R5" V 5930 8950 50  0000 C CNN
F 1 "120" V 5850 8950 50  0000 C CNN
F 2 "Discret:R4" V 5780 8950 50  0001 C CNN
F 3 "" H 5850 8950 50  0000 C CNN
	1    5850 8950
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BCE Q2
U 1 1 577DCCD1
P 7100 9250
F 0 "Q2" H 7400 9300 50  0000 R CNN
F 1 "Q_NPN_BCE" H 7700 9200 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7300 9350 50  0001 C CNN
F 3 "" H 7100 9250 50  0000 C CNN
	1    7100 9250
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q1
U 1 1 577DD172
P 6750 9550
F 0 "Q1" H 7050 9600 50  0000 R CNN
F 1 "Q_NPN_BCE" H 7350 9500 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 6950 9650 50  0001 C CNN
F 3 "" H 6750 9550 50  0000 C CNN
	1    6750 9550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P12
U 1 1 577AEBA5
P 1150 9600
F 0 "P12" H 1150 9850 50  0000 C CNN
F 1 "POWER_IN" V 1300 9600 50  0000 C CNN
F 2 "Connect:bornier4" H 1150 9600 50  0001 C CNN
F 3 "" H 1150 9600 50  0000 C CNN
	1    1150 9600
	1    0    0    -1  
$EndComp
Text Label 950  9750 0    39   ~ 0
GND
Text Label 950  9650 0    39   ~ 0
5V
Text Label 950  9550 0    39   ~ 0
12V
Text Label 950  9450 0    39   ~ 0
24V
$Comp
L CONN_01X03 P6
U 1 1 577B0A3C
P 750 7700
F 0 "P6" H 750 7900 50  0000 C CNN
F 1 "Power In uC Servo" V 850 7700 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-03" H 750 7700 50  0001 C CNN
F 3 "" H 750 7700 50  0000 C CNN
	1    750  7700
	-1   0    0    1   
$EndComp
Text Label 950  7700 0    39   ~ 0
VDDuC
Text Label 950  7600 0    39   ~ 0
VDDServo
$Comp
L CONN_01X03 P7
U 1 1 577B22DC
P 10900 10400
F 0 "P7" H 10900 10600 50  0000 C CNN
F 1 "Power Out uC Servo" V 11000 10400 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK_6410-03" H 10900 10400 50  0001 C CNN
F 3 "" H 10900 10400 50  0000 C CNN
	1    10900 10400
	1    0    0    1   
$EndComp
Text Label 10700 10400 0    39   ~ 0
VDD_uC
Text Label 10700 10300 0    39   ~ 0
VDD_Servo
NoConn ~ 950  9650
$Comp
L D_Schottky D5
U 1 1 577B9BDA
P 1850 9550
F 0 "D5" H 1850 9650 50  0000 C CNN
F 1 "1N5822" H 1850 9450 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 1850 9550 50  0001 C CNN
F 3 "" H 1850 9550 50  0000 C CNN
	1    1850 9550
	-1   0    0    1   
$EndComp
$Comp
L D D10
U 1 1 577BA26E
P 8350 9100
F 0 "D10" H 8350 9200 50  0000 C CNN
F 1 "Diode" H 8350 9000 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 8350 9100 50  0001 C CNN
F 3 "" H 8350 9100 50  0000 C CNN
	1    8350 9100
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 577BA673
P 8200 10450
F 0 "D1" H 8200 10550 50  0000 C CNN
F 1 "Diode" H 8200 10350 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 8200 10450 50  0001 C CNN
F 3 "" H 8200 10450 50  0000 C CNN
	1    8200 10450
	0    1    1    0   
$EndComp
$Comp
L LM7809ACT U2
U 1 1 577BC8BD
P 9450 9450
F 0 "U2" H 9250 9650 50  0000 C CNN
F 1 "LM7809ACT" H 9450 9650 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 9450 9550 50  0000 C CIN
F 3 "" H 9450 9450 50  0000 C CNN
	1    9450 9450
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 577BCA05
P 10000 9650
F 0 "C3" H 10025 9750 50  0000 L CNN
F 1 "220uF" H 10025 9550 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 10038 9500 50  0001 C CNN
F 3 "" H 10000 9650 50  0000 C CNN
	1    10000 9650
	1    0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 577C12FB
P 3850 2050
F 0 "D4" H 3850 2150 50  0000 C CNN
F 1 "D" H 3850 1950 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3850 2050 50  0001 C CNN
F 3 "" H 3850 2050 50  0000 C CNN
	1    3850 2050
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 577C1DF8
P 7050 2050
F 0 "D2" H 7050 2150 50  0000 C CNN
F 1 "LED" H 7050 1950 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 7050 2050 50  0001 C CNN
F 3 "" H 7050 2050 50  0000 C CNN
	1    7050 2050
	0    1    1    0   
$EndComp
$Comp
L QUARZ_OSSCILATOR X1
U 1 1 577C2B91
P 3250 3150
F 0 "X1" H 3250 3400 50  0000 C CNN
F 1 "QUARZ_OSSCILATOR" V 3350 3150 50  0000 C CNN
F 2 "BotController:OSC_DIP14" H 3250 3150 50  0001 C CNN
F 3 "" H 3250 3150 50  0000 C CNN
	1    3250 3150
	0    -1   -1   0   
$EndComp
Text Label 8650 7100 1    39   ~ 0
PowerSupplyStepper
Text Label 8750 7100 1    39   ~ 0
PowerSupplyServo
Text Label 5300 9450 2    39   ~ 0
PowerOnServo
Text Label 5300 9550 2    39   ~ 0
PowerOnStepper
$Comp
L CP C4
U 1 1 577EA13B
P 5850 8700
F 0 "C4" H 5875 8800 50  0000 L CNN
F 1 "10uF" H 5875 8600 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 5888 8550 50  0001 C CNN
F 3 "" H 5850 8700 50  0000 C CNN
	1    5850 8700
	0    -1   -1   0   
$EndComp
$Comp
L CP C5
U 1 1 577EAD10
P 5850 10450
F 0 "C5" H 5875 10550 50  0000 L CNN
F 1 "10uF" H 5875 10350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 5888 10300 50  0001 C CNN
F 3 "" H 5850 10450 50  0000 C CNN
	1    5850 10450
	0    -1   -1   0   
$EndComp
Text Label 5950 6550 2    39   ~ 0
LoggerTX
NoConn ~ 6050 5500
$Comp
L CONN_01X05 P1
U 1 1 578AACAB
P 6150 6750
F 0 "P1" H 6150 7050 50  0000 C CNN
F 1 "2x Serial" V 6250 6750 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_5pin_straight" H 6150 6750 50  0001 C CNN
F 3 "" H 6150 6750 50  0000 C CNN
	1    6150 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	29500 -12950 29500 -13950
Wire Wire Line
	29500 -13950 23450 -13950
Connection ~ 3050 7800
Wire Wire Line
	3050 7800 3050 7600
Connection ~ 3050 7150
Wire Wire Line
	2050 7350 2050 7150
Wire Wire Line
	2250 7150 2250 7350
Wire Wire Line
	1000 7150 2050 7150
Wire Wire Line
	2050 7150 2250 7150
Wire Wire Line
	2050 7800 2050 7650
Wire Wire Line
	2250 7800 2250 7650
Wire Wire Line
	2650 7800 2650 7450
Connection ~ 2050 7150
Wire Wire Line
	9900 2700 9900 6200
Wire Wire Line
	9900 6200 9900 6350
Wire Wire Line
	9400 1700 9400 4000
Wire Wire Line
	8650 5150 8650 7100
Wire Wire Line
	7100 5150 8650 5150
Wire Wire Line
	7100 3600 7100 5150
Wire Wire Line
	6050 3600 7100 3600
Wire Wire Line
	8750 5200 8750 7100
Wire Wire Line
	7200 5200 8750 5200
Wire Wire Line
	7200 3500 7200 5200
Wire Wire Line
	6050 3500 7200 3500
Wire Wire Line
	11600 5600 6050 5600
Wire Wire Line
	11500 5700 6050 5700
Wire Wire Line
	11500 4600 11500 5700
Wire Wire Line
	11400 4500 11750 4500
Wire Wire Line
	11400 5100 11400 4500
Wire Wire Line
	6500 5100 11400 5100
Wire Wire Line
	11100 5000 6400 5000
Wire Wire Line
	11100 4100 11100 5000
Wire Wire Line
	6700 4500 6050 4500
Wire Wire Line
	6700 4900 6700 4500
Wire Wire Line
	11050 4900 6700 4900
Wire Wire Line
	11050 4000 11050 4900
Wire Wire Line
	6750 4600 6050 4600
Wire Wire Line
	6750 4750 6750 4600
Wire Wire Line
	10500 4750 6750 4750
Wire Wire Line
	6600 4700 6050 4700
Wire Wire Line
	6600 4850 6600 4700
Wire Wire Line
	10700 4850 6600 4850
Wire Wire Line
	10700 3650 10700 4850
Wire Wire Line
	10600 4800 6050 4800
Wire Wire Line
	10600 3550 10600 4800
Wire Wire Line
	10850 3550 10600 3550
Wire Wire Line
	10500 3900 10500 4750
Wire Wire Line
	9600 3000 9600 3450
Wire Wire Line
	6050 3000 9600 3000
Wire Wire Line
	9800 2900 9800 3200
Wire Wire Line
	6050 2800 10200 2800
Wire Wire Line
	6050 2900 9800 2900
Wire Wire Line
	9700 2700 6050 2700
Wire Wire Line
	9800 3200 10300 3200
Wire Wire Line
	9700 3000 10300 3000
Wire Wire Line
	9700 2700 9700 3000
Connection ~ 8400 4100
Wire Wire Line
	8400 3400 8400 4100
Connection ~ 8500 4200
Wire Wire Line
	8500 3500 8500 4200
Wire Wire Line
	6100 2300 6100 1850
Wire Wire Line
	6050 2300 6100 2300
Wire Wire Line
	7050 3400 6550 3400
Wire Wire Line
	6050 3400 6250 3400
Connection ~ 5050 1700
Wire Wire Line
	5050 1700 5050 2000
Connection ~ 1000 7150
Connection ~ 1200 7800
Wire Wire Line
	5050 6200 5050 6000
Wire Wire Line
	4850 6200 4850 6000
Wire Wire Line
	11600 4700 11600 5600
Wire Wire Line
	11750 4700 11600 4700
Wire Wire Line
	11500 4600 11750 4600
Wire Wire Line
	6500 4300 6050 4300
Wire Wire Line
	6500 5100 6500 4300
Wire Wire Line
	11300 4100 11100 4100
Wire Wire Line
	11050 4000 11300 4000
Wire Wire Line
	6400 5000 6400 4400
Wire Wire Line
	6400 4400 6050 4400
Wire Wire Line
	10500 3900 11300 3900
Wire Wire Line
	10800 3650 10700 3650
Wire Wire Line
	9600 3450 10800 3450
Wire Wire Line
	8500 3400 8400 3400
Wire Wire Line
	7300 3600 8500 3600
Wire Wire Line
	7300 3200 7300 3600
Wire Wire Line
	6050 3200 7300 3200
Wire Wire Line
	10200 2800 10200 3100
Wire Wire Line
	10200 3100 10300 3100
Connection ~ 11300 6200
Wire Wire Line
	11750 6200 11750 4800
Connection ~ 10800 6200
Wire Wire Line
	11300 6200 11300 4200
Connection ~ 10300 6200
Wire Wire Line
	10800 6200 10800 3750
Connection ~ 9900 6200
Wire Wire Line
	10300 6200 10300 3300
Wire Wire Line
	950  6950 7250 6950
Wire Wire Line
	7250 6950 7250 6550
Connection ~ 2650 7800
Connection ~ 3050 1700
Wire Wire Line
	3050 1700 3050 7150
Wire Wire Line
	3050 7150 3050 7300
Connection ~ 2250 7800
Connection ~ 2050 7800
Wire Wire Line
	950  7800 1200 7800
Wire Wire Line
	1200 7800 1750 7800
Wire Wire Line
	1750 7800 2050 7800
Wire Wire Line
	2050 7800 2250 7800
Wire Wire Line
	2250 7800 2650 7800
Wire Wire Line
	2650 7800 3050 7800
Wire Wire Line
	3050 7800 3900 7800
Wire Wire Line
	7350 6200 7350 6550
Connection ~ 7350 6200
Wire Wire Line
	6050 2400 9900 2400
Wire Wire Line
	6050 2500 9900 2500
Wire Wire Line
	6050 2600 9900 2600
Connection ~ 9400 6200
Wire Wire Line
	6050 3300 8500 3300
Connection ~ 9150 1700
Wire Wire Line
	9150 1700 9150 3650
Wire Wire Line
	9150 3650 8950 3650
Connection ~ 9150 4200
Wire Wire Line
	9150 4200 9150 3950
Connection ~ 8950 4100
Wire Wire Line
	8950 4100 8950 3950
Wire Wire Line
	9400 6200 9400 4300
Wire Wire Line
	6050 4200 8500 4200
Wire Wire Line
	8500 4200 9150 4200
Wire Wire Line
	9150 4200 9400 4200
Wire Wire Line
	6050 4100 8400 4100
Wire Wire Line
	8400 4100 8950 4100
Wire Wire Line
	8950 4100 9400 4100
Wire Wire Line
	7050 5300 7050 6550
Wire Wire Line
	6050 5300 7050 5300
Wire Wire Line
	7150 5200 6050 5200
Wire Wire Line
	7150 6550 7150 5200
Wire Wire Line
	6100 1850 2950 1850
Wire Wire Line
	2950 1850 2950 4750
Wire Wire Line
	2950 4750 3550 4750
Connection ~ 3700 3500
Connection ~ 3700 1700
Connection ~ 3700 6200
Wire Wire Line
	3700 6200 3700 5000
Wire Wire Line
	3700 1700 3700 3500
Wire Wire Line
	3700 3500 3700 4500
Wire Wire Line
	4050 3500 3700 3500
Connection ~ 7050 1700
Wire Wire Line
	7050 1700 7050 1850
Wire Wire Line
	7050 2250 7050 3400
Wire Wire Line
	6150 5100 6150 6550
Wire Wire Line
	6050 5100 6150 5100
Wire Wire Line
	6250 5000 6050 5000
Wire Wire Line
	6250 5000 6250 6550
Connection ~ 6350 6200
Wire Wire Line
	6350 6200 6350 6550
Wire Wire Line
	1200 6200 1700 6200
Wire Wire Line
	1700 6200 2150 6200
Wire Wire Line
	2150 6200 2750 6200
Wire Wire Line
	2750 6200 3450 6200
Wire Wire Line
	3450 6200 3700 6200
Wire Wire Line
	3700 6200 4850 6200
Wire Wire Line
	4850 6200 5050 6200
Wire Wire Line
	5050 6200 6350 6200
Wire Wire Line
	6350 6200 7350 6200
Wire Wire Line
	7350 6200 8150 6200
Wire Wire Line
	8150 6200 9400 6200
Wire Wire Line
	9400 6200 9900 6200
Wire Wire Line
	9900 6200 10300 6200
Wire Wire Line
	10300 6200 10800 6200
Wire Wire Line
	10800 6200 11300 6200
Wire Wire Line
	11300 6200 11750 6200
Wire Wire Line
	7500 3900 6050 3900
Wire Wire Line
	7500 3900 7500 4550
Wire Wire Line
	7500 4550 7600 4550
Wire Wire Line
	8150 4550 7850 4550
Wire Wire Line
	1200 1700 1700 1700
Wire Wire Line
	1700 1700 3050 1700
Wire Wire Line
	3050 1700 3450 1700
Wire Wire Line
	3450 1700 3700 1700
Wire Wire Line
	3700 1700 3850 1700
Wire Wire Line
	3850 1700 4050 1700
Wire Wire Line
	4050 1700 4850 1700
Wire Wire Line
	4850 1700 5050 1700
Wire Wire Line
	5050 1700 7050 1700
Wire Wire Line
	7050 1700 7850 1700
Wire Wire Line
	7850 1700 9150 1700
Wire Wire Line
	9150 1700 9400 1700
Wire Wire Line
	2750 2300 3850 2300
Wire Wire Line
	3850 2300 3950 2300
Wire Wire Line
	3950 2300 4050 2300
Connection ~ 3850 1700
Connection ~ 3850 2300
Wire Wire Line
	3850 1700 3850 1900
Wire Wire Line
	3850 2200 3850 2300
Wire Wire Line
	8150 4650 8150 6200
Connection ~ 7850 1700
Wire Wire Line
	4050 1700 4050 1800
Wire Wire Line
	1700 1700 3050 1700
Wire Wire Line
	3050 1700 3450 1700
Wire Wire Line
	3450 1700 3700 1700
Wire Wire Line
	3700 1700 3850 1700
Wire Wire Line
	3850 1700 4050 1700
Wire Wire Line
	4050 1700 4850 1700
Wire Wire Line
	4850 1700 5050 1700
Wire Wire Line
	5050 1700 7050 1700
Connection ~ 1700 6200
Wire Wire Line
	1700 4200 1700 6200
Wire Wire Line
	1700 6200 1700 7800
Wire Wire Line
	8150 3700 8150 4550
Wire Wire Line
	7600 3800 7600 4450
Connection ~ 2750 6200
Wire Wire Line
	2750 6200 2750 2800
Connection ~ 2150 6200
Wire Wire Line
	2150 6200 2150 2300
Wire Wire Line
	3950 2300 3950 5950
Wire Wire Line
	7850 1700 7850 4450
Wire Wire Line
	8150 3700 6050 3700
Connection ~ 8150 6200
Connection ~ 5050 6200
Connection ~ 3450 6200
Wire Wire Line
	3450 6200 3450 3600
Wire Wire Line
	4050 3100 4050 3100
Connection ~ 4850 1700
Wire Wire Line
	4050 2300 4050 2100
Wire Wire Line
	3450 1700 3450 2950
Connection ~ 3450 1700
Connection ~ 4050 1700
Connection ~ 4850 6200
Connection ~ 3950 2300
Wire Wire Line
	7850 4650 8150 4650
Wire Wire Line
	7600 5950 7600 4650
Wire Wire Line
	3950 5950 7600 5950
Wire Wire Line
	2750 2300 2750 2500
Wire Wire Line
	4850 1700 4850 2000
Wire Wire Line
	6050 3800 7600 3800
Wire Wire Line
	1700 1700 1700 3900
Connection ~ 1700 1700
Wire Wire Line
	950  9750 950  10800
Wire Wire Line
	950  8600 1150 8600
Wire Wire Line
	1650 8400 7550 8400
Wire Wire Line
	7550 8400 10050 8400
Wire Wire Line
	10700 10800 10700 10500
Wire Wire Line
	8550 8650 11050 8650
Wire Wire Line
	7550 8400 7550 8650
Wire Wire Line
	1650 8600 1650 8400
Connection ~ 7550 8400
Wire Wire Line
	5050 10800 5050 10600
Connection ~ 5050 10800
Wire Wire Line
	5050 9950 5050 10300
Wire Wire Line
	4750 10800 4750 10600
Connection ~ 4750 10800
Connection ~ 6500 10800
Wire Wire Line
	6900 9950 6900 10250
Wire Wire Line
	6900 10800 6900 10550
Connection ~ 6900 10800
Wire Wire Line
	6900 9950 7200 9950
Wire Wire Line
	7200 9950 7450 9950
Wire Wire Line
	7200 9950 7200 10250
Wire Wire Line
	7200 10800 7200 10550
Connection ~ 7200 10800
Connection ~ 7200 9950
Wire Wire Line
	8450 9950 10700 9950
Wire Wire Line
	7750 9050 7750 9250
Wire Wire Line
	7750 9250 8350 9250
Wire Wire Line
	7750 8950 7750 8850
Wire Wire Line
	7750 8850 8350 8850
Wire Wire Line
	8200 10600 7650 10600
Wire Wire Line
	10500 10400 10700 10400
Wire Wire Line
	6900 9250 6750 9250
Wire Wire Line
	6550 9550 6500 9550
Wire Wire Line
	5300 9550 6200 9550
Wire Wire Line
	5300 9450 5300 9250
Wire Wire Line
	5300 9250 6450 9250
Wire Wire Line
	6500 10800 6500 10250
Wire Wire Line
	7650 10600 7650 10350
Wire Wire Line
	6000 10200 7650 10200
Wire Wire Line
	7650 10200 8200 10200
Wire Wire Line
	7650 10250 7650 10200
Connection ~ 7650 10200
Wire Wire Line
	6850 10800 6850 9750
Connection ~ 6850 10800
Wire Wire Line
	6850 9750 7200 9750
Wire Wire Line
	7200 9750 7200 9450
Wire Wire Line
	6000 8950 7750 8950
Wire Wire Line
	7750 9050 7200 9050
Wire Wire Line
	7650 10350 7550 10350
Wire Wire Line
	7550 10350 7550 9350
Wire Wire Line
	7550 9350 6850 9350
Connection ~ 5050 9950
Wire Wire Line
	11050 10800 11050 8750
Connection ~ 10700 10800
Wire Wire Line
	4750 9950 5050 9950
Wire Wire Line
	5050 9950 6100 9950
Wire Wire Line
	2000 9550 4750 9550
Wire Wire Line
	4750 8950 4750 9550
Wire Wire Line
	4750 9550 4750 9950
Wire Wire Line
	4750 9950 4750 10300
Connection ~ 4750 9950
Connection ~ 4750 9550
Wire Wire Line
	4750 8950 5700 8950
Wire Wire Line
	5700 8700 5700 8950
Wire Wire Line
	5700 8950 5700 10200
Wire Wire Line
	5700 10200 5700 10450
Wire Wire Line
	950  8600 950  9450
Wire Wire Line
	950  7700 1000 7700
Wire Wire Line
	1000 7700 1000 7150
Wire Wire Line
	950  7600 950  6950
Wire Wire Line
	10700 9950 10700 10300
Wire Wire Line
	950  10800 4750 10800
Wire Wire Line
	4750 10800 5050 10800
Wire Wire Line
	5050 10800 6500 10800
Wire Wire Line
	6500 10800 6850 10800
Wire Wire Line
	6850 10800 6900 10800
Wire Wire Line
	6900 10800 7200 10800
Wire Wire Line
	7200 10800 9450 10800
Wire Wire Line
	9450 10800 10000 10800
Wire Wire Line
	10000 10800 10350 10800
Wire Wire Line
	10350 10800 10700 10800
Wire Wire Line
	10700 10800 11050 10800
Wire Wire Line
	950  9550 1700 9550
Wire Wire Line
	8350 8850 8350 8950
Wire Wire Line
	8200 10200 8200 10300
Wire Wire Line
	4750 9400 4750 9550
Wire Wire Line
	4750 9550 4750 9950
Wire Wire Line
	4750 9400 9050 9400
Wire Wire Line
	9450 9700 9450 10800
Connection ~ 9450 10800
Wire Wire Line
	9850 9400 10000 9400
Wire Wire Line
	10000 9400 10350 9400
Wire Wire Line
	10350 9400 10500 9400
Wire Wire Line
	10000 9400 10000 9500
Wire Wire Line
	10000 9800 10000 10800
Connection ~ 10000 10800
Wire Wire Line
	10500 9400 10500 10400
Connection ~ 10000 9400
Wire Wire Line
	3100 2950 3100 2900
Wire Wire Line
	3100 2900 4050 2900
Wire Wire Line
	4050 2900 4050 3100
Wire Wire Line
	1700 7800 1750 7800
Connection ~ 1750 7800
Connection ~ 5700 8950
Wire Wire Line
	6000 8700 6000 8950
Connection ~ 5700 10200
Wire Wire Line
	6000 10450 6000 10200
Wire Wire Line
	5950 6550 5950 6050
Wire Wire Line
	5950 6050 6400 6050
Wire Wire Line
	6400 6050 6400 5400
Wire Wire Line
	6400 5400 6050 5400
NoConn ~ 6050 6550
$Comp
L C C?
U 1 1 578BFFF7
P 10350 10150
F 0 "C?" H 10375 10250 50  0000 L CNN
F 1 "100nF" H 10375 10050 50  0000 L CNN
F 2 "" H 10388 10000 50  0000 C CNN
F 3 "" H 10350 10150 50  0000 C CNN
	1    10350 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 10000 10350 9400
Connection ~ 10350 9400
Wire Wire Line
	10350 10300 10350 10800
Connection ~ 10350 10800
$EndSCHEMATC
