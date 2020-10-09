EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L Connector_Generic:Conn_02x06_Top_Bottom J2
U 1 1 5F5F6F2D
P 3600 2850
F 0 "J2" H 3650 3267 50  0000 C CNN
F 1 "PMOD B" H 3650 3176 50  0000 C CNN
F 2 "Footprints:PinHeader_2x06_P2.54mm_renumbered" H 3600 2850 50  0001 C CNN
F 3 "~" H 3600 2850 50  0001 C CNN
	1    3600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3150 3250 3150
Wire Wire Line
	3250 3150 3250 3350
Wire Wire Line
	3250 3350 3650 3350
Wire Wire Line
	4050 3350 4050 3150
Wire Wire Line
	4050 3150 3900 3150
$Comp
L power:+3.3V #PWR064
U 1 1 5F5F7F89
P 3850 3650
F 0 "#PWR064" H 3850 3500 50  0001 C CNN
F 1 "+3.3V" H 3865 3823 50  0000 C CNN
F 2 "" H 3850 3650 50  0001 C CNN
F 3 "" H 3850 3650 50  0001 C CNN
	1    3850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3350 3650 3700
Wire Wire Line
	3650 3700 3850 3700
Wire Wire Line
	3850 3700 3850 3650
Connection ~ 3650 3350
Wire Wire Line
	3650 3350 4050 3350
Wire Wire Line
	3900 3050 4200 3050
Wire Wire Line
	4200 3050 4200 3850
Wire Wire Line
	4200 3850 3650 3850
Wire Wire Line
	3100 3850 3100 3050
Wire Wire Line
	3100 3050 3400 3050
$Comp
L power:GND #PWR063
U 1 1 5F5F9582
P 3650 4050
F 0 "#PWR063" H 3650 3800 50  0001 C CNN
F 1 "GND" H 3655 3877 50  0000 C CNN
F 2 "" H 3650 4050 50  0001 C CNN
F 3 "" H 3650 4050 50  0001 C CNN
	1    3650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3850 3650 4050
Connection ~ 3650 3850
Wire Wire Line
	3650 3850 3100 3850
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J3
U 1 1 5F5F9FF7
P 7150 2900
F 0 "J3" H 7200 3317 50  0000 C CNN
F 1 "PMOD C" H 7200 3226 50  0000 C CNN
F 2 "Footprints:PinHeader_2x06_P2.54mm_renumbered" H 7150 2900 50  0001 C CNN
F 3 "~" H 7150 2900 50  0001 C CNN
	1    7150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3200 6800 3200
Wire Wire Line
	6800 3200 6800 3400
Wire Wire Line
	6800 3400 7200 3400
Wire Wire Line
	7600 3400 7600 3200
Wire Wire Line
	7600 3200 7450 3200
$Comp
L power:+3.3V #PWR066
U 1 1 5F5FA006
P 7400 3700
F 0 "#PWR066" H 7400 3550 50  0001 C CNN
F 1 "+3.3V" H 7415 3873 50  0000 C CNN
F 2 "" H 7400 3700 50  0001 C CNN
F 3 "" H 7400 3700 50  0001 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3400 7200 3750
Wire Wire Line
	7200 3750 7400 3750
Wire Wire Line
	7400 3750 7400 3700
Connection ~ 7200 3400
Wire Wire Line
	7200 3400 7600 3400
Wire Wire Line
	7450 3100 7750 3100
Wire Wire Line
	7750 3100 7750 3900
Wire Wire Line
	7750 3900 7200 3900
Wire Wire Line
	6650 3900 6650 3100
Wire Wire Line
	6650 3100 6950 3100
$Comp
L power:GND #PWR065
U 1 1 5F5FA01A
P 7200 4100
F 0 "#PWR065" H 7200 3850 50  0001 C CNN
F 1 "GND" H 7205 3927 50  0000 C CNN
F 2 "" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    7200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3900 7200 4100
Connection ~ 7200 3900
Wire Wire Line
	7200 3900 6650 3900
Text GLabel 4450 2450 2    50   Input ~ 0
OUT1B+
Text GLabel 4450 2550 2    50   Input ~ 0
OUT1B-
Text GLabel 2700 2850 0    50   Input ~ 0
DCO+
Text GLabel 2700 2950 0    50   Input ~ 0
DCO-
Text GLabel 2750 2450 0    50   Input ~ 0
OUT1A+
Text GLabel 2750 2550 0    50   Input ~ 0
OUT1A-
Text GLabel 8200 2900 2    50   Input ~ 0
CAL
Wire Wire Line
	7450 2900 8200 2900
Wire Wire Line
	2700 2850 3400 2850
Wire Wire Line
	2700 2950 3400 2950
Text GLabel 6400 2550 0    50   Input ~ 0
ENC_IN-
Text GLabel 6400 2450 0    50   Input ~ 0
ENC_IN+
NoConn ~ 7450 3000
NoConn ~ 3900 2850
NoConn ~ 3900 2950
NoConn ~ 7450 2700
NoConn ~ 7450 2800
Wire Wire Line
	2750 2550 2950 2550
Wire Wire Line
	2950 2550 2950 2750
Wire Wire Line
	2950 2750 3400 2750
Wire Wire Line
	2750 2450 3100 2450
Wire Wire Line
	3100 2450 3100 2650
Wire Wire Line
	3100 2650 3400 2650
Wire Wire Line
	4450 2550 4300 2550
Wire Wire Line
	4300 2550 4300 2750
Wire Wire Line
	4300 2750 3900 2750
Wire Wire Line
	3900 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2450
Wire Wire Line
	4100 2450 4450 2450
Wire Wire Line
	6400 2550 6550 2550
Wire Wire Line
	6550 2550 6550 2800
Wire Wire Line
	6550 2800 6950 2800
Wire Wire Line
	6950 2700 6750 2700
Wire Wire Line
	6750 2700 6750 2450
Wire Wire Line
	6750 2450 6400 2450
NoConn ~ 6950 2900
NoConn ~ 6950 3000
$EndSCHEMATC
