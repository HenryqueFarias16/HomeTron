EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HomeOsh"
Date "2020-09-01"
Rev "3.0"
Comp "Osh Technology"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:R R2
U 1 1 5EC6F385
P 950 1900
F 0 "R2" V 1155 1900 50  0000 C CNN
F 1 "10k" V 1064 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 950 1900 50  0001 C CNN
F 3 "~" H 950 1900 50  0001 C CNN
	1    950  1900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5EC75838
P 3250 2600
F 0 "#PWR05" H 3250 2350 50  0001 C CNN
F 1 "GND" H 3255 2427 50  0000 C CNN
F 2 "" H 3250 2600 50  0001 C CNN
F 3 "" H 3250 2600 50  0001 C CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5EC75C6A
P 3250 750
F 0 "#PWR04" H 3250 600 50  0001 C CNN
F 1 "+3.3V" H 3265 923 50  0000 C CNN
F 2 "" H 3250 750 50  0001 C CNN
F 3 "" H 3250 750 50  0001 C CNN
	1    3250 750 
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R3
U 1 1 5EC79F3E
P 700 2300
F 0 "R3" V 495 2300 50  0000 C CNN
F 1 "10k" V 586 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 700 2300 50  0001 C CNN
F 3 "~" H 700 2300 50  0001 C CNN
	1    700  2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1000 3250 750 
Wire Wire Line
	3250 2500 3250 2600
$Comp
L power:+3.3V #PWR03
U 1 1 5EC7F396
P 950 1600
F 0 "#PWR03" H 950 1450 50  0001 C CNN
F 1 "+3.3V" H 965 1773 50  0000 C CNN
F 2 "" H 950 1600 50  0001 C CNN
F 3 "" H 950 1600 50  0001 C CNN
	1    950  1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EC800F6
P 700 2550
F 0 "#PWR06" H 700 2300 50  0001 C CNN
F 1 "GND" H 705 2377 50  0000 C CNN
F 2 "" H 700 2550 50  0001 C CNN
F 3 "" H 700 2550 50  0001 C CNN
	1    700  2550
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R1
U 1 1 5EC7AA6F
P 1300 1850
F 0 "R1" V 1095 1850 50  0000 C CNN
F 1 "10k" V 1186 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1300 1850 50  0001 C CNN
F 3 "~" H 1300 1850 50  0001 C CNN
	1    1300 1850
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5EC84E59
P 1300 1600
F 0 "#PWR01" H 1300 1450 50  0001 C CNN
F 1 "+3.3V" H 1315 1773 50  0000 C CNN
F 2 "" H 1300 1600 50  0001 C CNN
F 3 "" H 1300 1600 50  0001 C CNN
	1    1300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EC85277
P 1300 2650
F 0 "#PWR02" H 1300 2400 50  0001 C CNN
F 1 "GND" H 1305 2477 50  0000 C CNN
F 2 "" H 1300 2650 50  0001 C CNN
F 3 "" H 1300 2650 50  0001 C CNN
	1    1300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2650 1300 2600
$Comp
L Switch:SW_Push_SPDT SW3
U 1 1 5EC87475
P 1900 950
F 0 "SW3" H 1900 1235 50  0000 C CNN
F 1 "SS12D00" H 1900 1144 50  0000 C CNN
F 2 "Connector_TE-Connectivity:TE_826576-3_1x03_P1mm_Vertical" H 1900 950 50  0001 C CNN
F 3 "~" H 1900 950 50  0001 C CNN
	1    1900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EC8A4FC
P 2150 1050
F 0 "#PWR07" H 2150 800 50  0001 C CNN
F 1 "GND" H 2155 877 50  0000 C CNN
F 2 "" H 2150 1050 50  0001 C CNN
F 3 "" H 2150 1050 50  0001 C CNN
	1    2150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1050 2100 1050
$Comp
L Device:Fuse F1
U 1 1 5EC8E87A
P 1550 3700
F 0 "F1" H 1610 3746 50  0000 L CNN
F 1 "1A" H 1610 3655 50  0000 L CNN
F 2 "Fuse:Fuse_0805_2012Metric" V 1480 3700 50  0001 C CNN
F 3 "~" H 1550 3700 50  0001 C CNN
	1    1550 3700
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5EC8EFB2
P 6000 2250
F 0 "Q1" H 6191 2296 50  0000 L CNN
F 1 "BC547" H 6191 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6200 2175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6000 2250 50  0001 L CNN
	1    6000 2250
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D1
U 1 1 5EC91513
P 6100 1650
F 0 "D1" H 6100 1867 50  0000 C CNN
F 1 "DIODE" H 6100 1776 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6100 1650 50  0001 C CNN
F 3 "~" H 6100 1650 50  0001 C CNN
F 4 "Y" H 6100 1650 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 6100 1650 50  0001 L CNN "Spice_Primitive"
	1    6100 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5ECDD205
P 850 900
F 0 "J4" H 930 892 50  0000 L CNN
F 1 "Cp2102" H 930 801 50  0000 L CNN
F 2 "Connector_Wuerth:Wuerth_WR-WTB_64800611622_1x06_P2.50mm_Vertical" H 850 900 50  0001 C CNN
F 3 "~" H 850 900 50  0001 C CNN
	1    850  900 
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U3
U 1 1 5ECE7401
P 3300 3600
F 0 "U3" H 3300 3842 50  0000 C CNN
F 1 "LM1117-3.3" H 3300 3751 50  0000 C CNN
F 2 "Package_DIP:R-PDSO-G4" H 3300 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3300 3600 50  0001 C CNN
	1    3300 3600
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C2
U 1 1 5ECEECD0
P 3700 3850
F 0 "C2" H 3878 3896 50  0000 L CNN
F 1 "10uF" H 3878 3805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 3700 3850 50  0001 C CNN
F 3 "~" H 3700 3850 50  0001 C CNN
	1    3700 3850
	1    0    0    -1  
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 5EC8DE55
P 2200 3800
F 0 "PS1" H 2200 4125 50  0000 C CNN
F 1 "HLK-PM01" H 2200 4034 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 2200 3500 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 2600 3450 50  0001 C CNN
	1    2200 3800
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C1
U 1 1 5EC90652
P 2800 3850
F 0 "C1" H 2978 3896 50  0000 L CNN
F 1 "10uF" H 2978 3805 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 2800 3850 50  0001 C CNN
F 3 "~" H 2800 3850 50  0001 C CNN
	1    2800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3700 2600 3600
Wire Wire Line
	2600 3600 2800 3600
Wire Wire Line
	2600 3900 2600 4100
Wire Wire Line
	2600 4100 2800 4100
Connection ~ 2800 4100
Wire Wire Line
	3600 3600 3700 3600
Wire Wire Line
	2800 4100 3300 4100
Wire Wire Line
	3000 3600 2800 3600
Connection ~ 2800 3600
Wire Wire Line
	3300 3900 3300 4100
Connection ~ 3300 4100
Wire Wire Line
	3300 4100 3700 4100
$Comp
L power:GND #PWR0101
U 1 1 5ED00074
P 3300 4150
F 0 "#PWR0101" H 3300 3900 50  0001 C CNN
F 1 "GND" H 3305 3977 50  0000 C CNN
F 2 "" H 3300 4150 50  0001 C CNN
F 3 "" H 3300 4150 50  0001 C CNN
	1    3300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4150 3300 4100
$Comp
L power:+3.3V #PWR0102
U 1 1 5ED03756
P 3700 3550
F 0 "#PWR0102" H 3700 3400 50  0001 C CNN
F 1 "+3.3V" H 3715 3723 50  0000 C CNN
F 2 "" H 3700 3550 50  0001 C CNN
F 3 "" H 3700 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3550 3700 3600
Connection ~ 3700 3600
$Comp
L power:+3.3V #PWR0103
U 1 1 5ED0AA2F
P 1150 700
F 0 "#PWR0103" H 1150 550 50  0001 C CNN
F 1 "+3.3V" H 1165 873 50  0000 C CNN
F 2 "" H 1150 700 50  0001 C CNN
F 3 "" H 1150 700 50  0001 C CNN
	1    1150 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5ED0B143
P 1150 1100
F 0 "#PWR0104" H 1150 850 50  0001 C CNN
F 1 "GND" H 1155 927 50  0000 C CNN
F 2 "" H 1150 1100 50  0001 C CNN
F 3 "" H 1150 1100 50  0001 C CNN
	1    1150 1100
	1    0    0    -1  
$EndComp
Text GLabel 1100 900  2    50   Input ~ 0
Tx
Text GLabel 1100 1000 2    50   Input ~ 0
Rx
Wire Wire Line
	1050 700  1150 700 
Wire Wire Line
	1050 900  1100 900 
Wire Wire Line
	1050 1000 1100 1000
Text GLabel 3950 1300 2    50   Input ~ 0
Tx
Text GLabel 3950 1500 2    50   Input ~ 0
Rx
Wire Wire Line
	3950 1300 3850 1300
Wire Wire Line
	1300 2100 1300 2150
Text GLabel 2600 1200 0    50   Input ~ 0
Rst
Wire Wire Line
	2600 1200 2650 1200
Text GLabel 1500 2150 2    50   Input ~ 0
Rst
Wire Wire Line
	1500 2150 1300 2150
Connection ~ 1300 2150
Wire Wire Line
	1300 2150 1300 2200
Text GLabel 1650 950  0    50   Input ~ 0
Gpio0
Text GLabel 3950 1200 2    50   Input ~ 0
Gpio0
Wire Wire Line
	1700 950  1650 950 
Wire Wire Line
	3950 1200 3850 1200
Wire Wire Line
	3850 1500 3950 1500
Text GLabel 3950 1800 2    50   Input ~ 0
Gpio12
Text GLabel 3950 2000 2    50   Input ~ 0
Gpio14
Text GLabel 3950 2200 2    50   Input ~ 0
Gpio16
Text GLabel 3950 2100 2    50   Input ~ 0
Gpio15
Text GLabel 700  1700 1    50   Input ~ 0
Gpio15
Wire Wire Line
	700  2050 700  1700
Text GLabel 2550 1400 0    50   Input ~ 0
EN
Wire Wire Line
	2650 1400 2550 1400
Wire Wire Line
	950  1600 950  1650
Text GLabel 950  2550 3    50   Input ~ 0
EN
Wire Wire Line
	950  2150 950  2550
$Comp
L RF_Module:ESP-12E U1
U 1 1 5EC6D494
P 3250 1800
F 0 "U1" H 3250 2781 50  0000 C CNN
F 1 "ESP-12E" H 3250 2690 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 3250 1800 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 2900 1900 50  0001 C CNN
	1    3250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1800 3850 1800
Wire Wire Line
	3950 2000 3850 2000
Wire Wire Line
	3950 2100 3850 2100
Wire Wire Line
	3850 2200 3950 2200
$Comp
L pspice:R R5
U 1 1 5ED545DF
P 5550 2250
F 0 "R5" V 5345 2250 50  0000 C CNN
F 1 "1k" V 5436 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5550 2250 50  0001 C CNN
F 3 "~" H 5550 2250 50  0001 C CNN
	1    5550 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 1350 6100 1350
Wire Wire Line
	6100 1350 6100 1500
Wire Wire Line
	6100 1800 6100 1950
Wire Wire Line
	6100 1950 6400 1950
$Comp
L power:GND #PWR0105
U 1 1 5ED62C03
P 6100 2550
F 0 "#PWR0105" H 6100 2300 50  0001 C CNN
F 1 "GND" H 6105 2377 50  0000 C CNN
F 2 "" H 6100 2550 50  0001 C CNN
F 3 "" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2550 6100 2450
Wire Wire Line
	6100 2050 6100 1950
Connection ~ 6100 1950
Text GLabel 5100 2250 0    50   Input ~ 0
Gpio16
Wire Wire Line
	5300 2250 5100 2250
$Comp
L power:+5V #PWR0106
U 1 1 5ED6DDCE
P 6100 1250
F 0 "#PWR0106" H 6100 1100 50  0001 C CNN
F 1 "+5V" H 6115 1423 50  0000 C CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "" H 6100 1250 50  0001 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1250 6100 1350
Connection ~ 6100 1350
$Comp
L Device:LED D2
U 1 1 5EC90C1C
P 5300 2450
F 0 "D2" H 5293 2666 50  0000 C CNN
F 1 "LED" H 5293 2575 50  0000 C CNN
F 2 "LED_SMD:LED_PLCC_2835" H 5300 2450 50  0001 C CNN
F 3 "~" H 5300 2450 50  0001 C CNN
	1    5300 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 2300 5300 2250
Connection ~ 5300 2250
$Comp
L power:GND #PWR0107
U 1 1 5ED76134
P 5300 2650
F 0 "#PWR0107" H 5300 2400 50  0001 C CNN
F 1 "GND" H 5305 2477 50  0000 C CNN
F 2 "" H 5300 2650 50  0001 C CNN
F 3 "" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2650 5300 2600
Text GLabel 6700 1250 1    50   Input ~ 0
Nf
Text GLabel 6800 2000 3    50   Input ~ 0
C
Wire Wire Line
	6900 1250 6900 1350
Wire Wire Line
	6800 2000 6800 1950
$Comp
L pspice:R R4
U 1 1 5EDB906A
P 1800 1850
F 0 "R4" V 1595 1850 50  0000 C CNN
F 1 "10k" V 1686 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1800 1850 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5EDB9074
P 1800 1600
F 0 "#PWR0111" H 1800 1450 50  0001 C CNN
F 1 "+3.3V" H 1815 1773 50  0000 C CNN
F 2 "" H 1800 1600 50  0001 C CNN
F 3 "" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5EDB907E
P 1800 2650
F 0 "#PWR0112" H 1800 2400 50  0001 C CNN
F 1 "GND" H 1805 2477 50  0000 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 1800 2600
Wire Wire Line
	1800 2100 1800 2150
Text GLabel 2000 2150 2    50   Input ~ 0
Gpio16
Wire Wire Line
	2000 2150 1800 2150
Connection ~ 1800 2150
Wire Wire Line
	1800 2150 1800 2200
Wire Wire Line
	6700 1250 6700 1350
$Comp
L Switch:SW_Push SW1
U 1 1 5EC7E2EB
P 1300 2400
F 0 "SW1" H 1300 2685 50  0000 C CNN
F 1 "B3U-1000P-B" H 1300 2594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P-B" H 1300 2600 50  0001 C CNN
F 3 "~" H 1300 2600 50  0001 C CNN
	1    1300 2400
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5EDB9060
P 1800 2400
F 0 "SW2" H 1800 2685 50  0000 C CNN
F 1 "B3U-1000P-B" H 1800 2594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P-B" H 1800 2600 50  0001 C CNN
F 3 "~" H 1800 2600 50  0001 C CNN
	1    1800 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3700 1750 3700
Text GLabel 1350 3500 0    50   Input ~ 0
Fusivel
Wire Wire Line
	1350 3500 1750 3500
Wire Wire Line
	1750 3500 1750 3700
Connection ~ 1750 3700
Wire Wire Line
	1750 3700 1800 3700
Text GLabel 6900 1250 1    50   Input ~ 0
Na
Text GLabel 1350 3700 0    50   Input ~ 0
Fase
Text GLabel 1400 3900 0    50   Input ~ 0
Neutro
Wire Wire Line
	1350 3700 1400 3700
Wire Wire Line
	1800 3900 1400 3900
Wire Wire Line
	1050 1100 1150 1100
$Comp
L Relay:FINDER-34.51 K1
U 1 1 5F53711A
P 6600 1650
F 0 "K1" H 7030 1696 50  0000 L CNN
F 1 "FINDER-34.51" H 7030 1605 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Finder_34.51_Vertical" H 7740 1610 50  0001 C CNN
F 3 "https://gfinder.findernet.com/public/attachments/34/EN/S34USAEN.pdf" H 6600 1650 50  0001 C CNN
	1    6600 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5ECD654B
P 9300 2150
F 0 "J2" H 9380 2192 50  0000 L CNN
F 1 "300V/10A" H 9380 2101 50  0000 L CNN
F 2 "Connector_TE-Connectivity:Tblock3.10x10mm" H 9300 2150 50  0001 C CNN
F 3 "~" H 9300 2150 50  0001 C CNN
	1    9300 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9600 2250 9500 2250
Wire Wire Line
	9600 2150 9500 2150
Wire Wire Line
	9600 2050 9500 2050
Text GLabel 9600 2050 2    50   Input ~ 0
Na-Interruptor
Text GLabel 9600 2250 2    50   Input ~ 0
Nf-Interruptor
Text GLabel 9600 2150 2    50   Input ~ 0
C-Interrruptor
Text GLabel 5350 3900 0    50   Input ~ 0
Retorno
Text GLabel 5350 3300 0    50   Input ~ 0
NeutroOut
Wire Wire Line
	5400 3900 5400 3950
Wire Wire Line
	5350 3900 5400 3900
Wire Wire Line
	5350 3300 5750 3300
Wire Wire Line
	5750 3950 5400 3950
Wire Wire Line
	5750 3350 5750 3300
Wire Wire Line
	6900 4000 6900 3850
Wire Wire Line
	5450 4000 6900 4000
Wire Wire Line
	5450 3650 5450 4000
Wire Wire Line
	6050 3650 6350 3650
Text GLabel 7900 3750 2    50   Input ~ 0
Gpio14
Wire Wire Line
	7550 3850 7550 3900
Wire Wire Line
	7500 3850 7550 3850
$Comp
L power:GND #PWR0110
U 1 1 5EDA4DA4
P 7550 3900
F 0 "#PWR0110" H 7550 3650 50  0001 C CNN
F 1 "GND" H 7555 3727 50  0000 C CNN
F 2 "" H 7550 3900 50  0001 C CNN
F 3 "" H 7550 3900 50  0001 C CNN
	1    7550 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0109
U 1 1 5ED9FF9D
P 7800 3250
F 0 "#PWR0109" H 7800 3100 50  0001 C CNN
F 1 "+3.3V" H 7815 3423 50  0000 C CNN
F 2 "" H 7800 3250 50  0001 C CNN
F 3 "" H 7800 3250 50  0001 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5ED9FAA3
P 7800 4250
F 0 "#PWR0108" H 7800 4000 50  0001 C CNN
F 1 "GND" H 7805 4077 50  0000 C CNN
F 2 "" H 7800 4250 50  0001 C CNN
F 3 "" H 7800 4250 50  0001 C CNN
	1    7800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3750 7800 3750
Wire Wire Line
	7500 3750 7800 3750
Connection ~ 7800 3750
$Comp
L pspice:R R7
U 1 1 5ED99E75
P 7800 3500
F 0 "R7" V 7595 3500 50  0000 C CNN
F 1 "10k" V 7686 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7800 3500 50  0001 C CNN
F 3 "~" H 7800 3500 50  0001 C CNN
	1    7800 3500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 5ED99433
P 7800 4000
F 0 "C3" H 7978 4046 50  0000 L CNN
F 1 "1uF" H 7978 3955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 7800 4000 50  0001 C CNN
F 3 "~" H 7800 4000 50  0001 C CNN
	1    7800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3650 6900 3650
$Comp
L pspice:R R6
U 1 1 5ED93EE5
P 6600 3650
F 0 "R6" V 6395 3650 50  0000 C CNN
F 1 "300k" V 6486 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6600 3650 50  0001 C CNN
F 3 "~" H 6600 3650 50  0001 C CNN
	1    6600 3650
	0    -1   -1   0   
$EndComp
$Comp
L Diode_Bridge:MBL110S D3
U 1 1 5EC91AC8
P 5750 3650
F 0 "D3" H 6094 3696 50  0000 L CNN
F 1 "MBL110S" H 6094 3605 50  0000 L CNN
F 2 "Diode_SMD:Diode_Bridge_Vishay_MBLS" H 5900 3775 50  0001 L CNN
F 3 "http://www.vishay.com/docs/89959/mbl104s.pdf" H 5750 3650 50  0001 C CNN
	1    5750 3650
	1    0    0    -1  
$EndComp
$Comp
L Isolator:4N25 U2
U 1 1 5EC8F653
P 7200 3750
F 0 "U2" H 7200 4075 50  0000 C CNN
F 1 "4N25" H 7200 3984 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_SMDSocket_SmallPads" H 7000 3550 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 7200 3750 50  0001 L CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
Text GLabel 9650 2650 2    50   Input ~ 0
Fase
Text GLabel 9650 2750 2    50   Input ~ 0
Neutro
Text GLabel 9600 2500 2    50   Input ~ 0
Retorno
Text GLabel 9600 2400 2    50   Input ~ 0
NeutroOut
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5ECE375D
P 9300 2400
F 0 "J3" H 9380 2392 50  0000 L CNN
F 1 "300V/10A" H 9380 2301 50  0000 L CNN
F 2 "Connector_TE-Connectivity:Tblock10x10mm" H 9300 2400 50  0001 C CNN
F 3 "~" H 9300 2400 50  0001 C CNN
	1    9300 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 2400 9600 2400
Wire Wire Line
	9600 2500 9500 2500
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5EC74C0C
P 9300 2650
F 0 "J1" H 9380 2642 50  0000 L CNN
F 1 "300V/10A" H 9380 2551 50  0000 L CNN
F 2 "Connector_TE-Connectivity:Tblock10x10mm" H 9300 2650 50  0001 C CNN
F 3 "~" H 9300 2650 50  0001 C CNN
	1    9300 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 2650 9500 2650
Wire Wire Line
	9650 2750 9500 2750
Wire Wire Line
	9800 1750 9700 1750
Wire Wire Line
	9400 1750 9500 1750
Text GLabel 9400 1750 0    50   Input ~ 0
Retorno
Text GLabel 9800 1750 2    50   Input ~ 0
Fusivel
Wire Wire Line
	9500 1400 9400 1400
Wire Wire Line
	9500 1750 9500 1400
Wire Wire Line
	9700 1750 9700 1400
Wire Wire Line
	9400 1650 9800 1650
Wire Wire Line
	9400 1500 9800 1500
Wire Wire Line
	9400 1300 9800 1300
Text GLabel 9400 1500 0    50   Input ~ 0
Nf
Text GLabel 9400 1300 0    50   Input ~ 0
Na
Text GLabel 9400 1400 0    50   Input ~ 0
C
Wire Wire Line
	9800 1400 9700 1400
Text GLabel 9800 1300 2    50   Input ~ 0
Na-Interruptor
Text GLabel 9800 1500 2    50   Input ~ 0
Nf-Interruptor
Text GLabel 9800 1400 2    50   Input ~ 0
C-Interrruptor
Text GLabel 9800 1650 2    50   Input ~ 0
NeutroOut
Text GLabel 9400 1650 0    50   Input ~ 0
Neutro
$EndSCHEMATC
