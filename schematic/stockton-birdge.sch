EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 10
Title "HBR/3B by R2AUK ::: https://eax.me/hbr-3b-transceiver/"
Date "2022-07-17"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J5
U 1 1 6309732B
P 5800 2600
F 0 "J5" H 5900 2750 50  0001 L CNN
F 1 "Conn_Coaxial" H 5900 2484 50  0001 L CNN
F 2 "" H 5800 2600 50  0001 C CNN
F 3 " ~" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J6
U 1 1 63097EC6
P 6450 2600
F 0 "J6" H 6378 2747 50  0001 C CNN
F 1 "Conn_Coaxial" H 6550 2484 50  0001 L CNN
F 2 "" H 6450 2600 50  0001 C CNN
F 3 " ~" H 6450 2600 50  0001 C CNN
	1    6450 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J7
U 1 1 63099969
P 5800 3300
F 0 "J7" H 5900 3450 50  0001 L CNN
F 1 "Conn_Coaxial" H 5900 3184 50  0001 L CNN
F 2 "" H 5800 3300 50  0001 C CNN
F 3 " ~" H 5800 3300 50  0001 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J8
U 1 1 63099973
P 6450 3300
F 0 "J8" H 6378 3447 50  0001 C CNN
F 1 "Conn_Coaxial" H 6550 3184 50  0001 L CNN
F 2 "" H 6450 3300 50  0001 C CNN
F 3 " ~" H 6450 3300 50  0001 C CNN
	1    6450 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0170
U 1 1 6309B688
P 5800 2900
F 0 "#PWR0170" H 5800 2650 50  0001 C CNN
F 1 "GND" H 5805 2727 50  0001 C CNN
F 2 "" H 5800 2900 50  0001 C CNN
F 3 "" H 5800 2900 50  0001 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 6309BAED
P 6450 3650
F 0 "#PWR0172" H 6450 3400 50  0001 C CNN
F 1 "GND" H 6455 3477 50  0001 C CNN
F 2 "" H 6450 3650 50  0001 C CNN
F 3 "" H 6450 3650 50  0001 C CNN
	1    6450 3650
	1    0    0    -1  
$EndComp
NoConn ~ 6450 2800
NoConn ~ 5800 3500
Wire Wire Line
	6450 3650 6450 3500
Wire Wire Line
	5800 2900 5800 2800
Wire Notes Line
	5800 2600 6450 2600
Wire Notes Line
	6450 2700 5800 2700
Wire Notes Line
	5800 3300 6450 3300
Wire Notes Line
	6450 3400 5800 3400
Text Notes 5950 2700 0    50   ~ 0
RG-174
Text Notes 5950 3400 0    50   ~ 0
RG-174
$Comp
L Device:L_Core_Ferrite L23
U 1 1 6309D067
P 6150 2500
F 0 "L23" V 6061 2500 50  0001 C CNN
F 1 "L_Core_Ferrite" V 6060 2500 50  0001 C CNN
F 2 "" H 6150 2500 50  0001 C CNN
F 3 "~" H 6150 2500 50  0001 C CNN
	1    6150 2500
	0    1    1    0   
$EndComp
$Comp
L Device:L_Core_Ferrite L25
U 1 1 6309E4FB
P 6150 3500
F 0 "L25" V 6283 3500 50  0001 C CNN
F 1 "L_Core_Ferrite" V 6060 3500 50  0001 C CNN
F 2 "" H 6150 3500 50  0001 C CNN
F 3 "~" H 6150 3500 50  0001 C CNN
	1    6150 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0171
U 1 1 6309FD20
P 5950 3600
F 0 "#PWR0171" H 5950 3350 50  0001 C CNN
F 1 "GND" H 5955 3427 50  0001 C CNN
F 2 "" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0001 C CNN
	1    5950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3600 5950 3500
Wire Wire Line
	5950 3500 6000 3500
$Comp
L power:GND #PWR0169
U 1 1 630A0599
P 6350 2400
F 0 "#PWR0169" H 6350 2150 50  0001 C CNN
F 1 "GND" H 6355 2227 50  0001 C CNN
F 2 "" H 6350 2400 50  0001 C CNN
F 3 "" H 6350 2400 50  0001 C CNN
	1    6350 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2500 6350 2500
Wire Wire Line
	6350 2500 6350 2400
Wire Wire Line
	5600 3300 5400 3300
Wire Wire Line
	5400 3300 5400 2350
Wire Wire Line
	5400 2350 5900 2350
Wire Wire Line
	5900 2350 5900 2500
Wire Wire Line
	5900 2500 6000 2500
Connection ~ 5400 3300
Wire Wire Line
	6650 2600 6800 2600
Wire Wire Line
	6300 3500 6350 3500
Wire Wire Line
	6350 3500 6350 3850
Wire Wire Line
	6350 3850 6800 3850
Wire Wire Line
	6800 3850 6800 2600
Connection ~ 6800 2600
Wire Wire Line
	6800 2600 7200 2600
Wire Notes Line
	5300 2250 6900 2250
Wire Notes Line
	6900 2250 6900 3900
Wire Notes Line
	6900 3900 5300 3900
Wire Notes Line
	5300 3900 5300 2250
Text Notes 5250 2100 0    50   ~ 0
Tandem match / Stockton bridge @ BN61-202\nPrimary windings: RG-174 coax cables\nSecondary windings: 6T enameled copper wire
Text Notes 6100 2450 0    50   ~ 0
6T
Text Notes 6100 3600 0    50   ~ 0
6T
Text GLabel 5100 2600 0    50   Input ~ 0
LPFS_OUT
Wire Wire Line
	5100 2600 5600 2600
Text GLabel 7200 2600 2    50   Output ~ 0
STOCKTON_BRIDGE_OUT
$Comp
L Device:R R75
U 1 1 630A90B8
P 4500 3600
F 0 "R75" H 4570 3646 50  0000 L CNN
F 1 "100" H 4570 3555 50  0000 L CNN
F 2 "" V 4430 3600 50  0001 C CNN
F 3 "~" H 4500 3600 50  0001 C CNN
	1    4500 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R76
U 1 1 630A99A2
P 4850 3600
F 0 "R76" H 4920 3646 50  0000 L CNN
F 1 "100" H 4920 3555 50  0000 L CNN
F 2 "" V 4780 3600 50  0001 C CNN
F 3 "~" H 4850 3600 50  0001 C CNN
	1    4850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0174
U 1 1 630A9CF0
P 4500 3850
F 0 "#PWR0174" H 4500 3600 50  0001 C CNN
F 1 "GND" H 4505 3677 50  0001 C CNN
F 2 "" H 4500 3850 50  0001 C CNN
F 3 "" H 4500 3850 50  0001 C CNN
	1    4500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0175
U 1 1 630AA186
P 4850 3850
F 0 "#PWR0175" H 4850 3600 50  0001 C CNN
F 1 "GND" H 4855 3677 50  0001 C CNN
F 2 "" H 4850 3850 50  0001 C CNN
F 3 "" H 4850 3850 50  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R77
U 1 1 630AA604
P 4500 4650
F 0 "R77" H 4570 4696 50  0000 L CNN
F 1 "100" H 4570 4605 50  0000 L CNN
F 2 "" V 4430 4650 50  0001 C CNN
F 3 "~" H 4500 4650 50  0001 C CNN
	1    4500 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R78
U 1 1 630AA60E
P 4850 4650
F 0 "R78" H 4920 4696 50  0000 L CNN
F 1 "100" H 4920 4605 50  0000 L CNN
F 2 "" V 4780 4650 50  0001 C CNN
F 3 "~" H 4850 4650 50  0001 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 630AA618
P 4500 4900
F 0 "#PWR0177" H 4500 4650 50  0001 C CNN
F 1 "GND" H 4505 4727 50  0001 C CNN
F 2 "" H 4500 4900 50  0001 C CNN
F 3 "" H 4500 4900 50  0001 C CNN
	1    4500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 630AA622
P 4850 4900
F 0 "#PWR0178" H 4850 4650 50  0001 C CNN
F 1 "GND" H 4855 4727 50  0001 C CNN
F 2 "" H 4850 4900 50  0001 C CNN
F 3 "" H 4850 4900 50  0001 C CNN
	1    4850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3850 4500 3750
Wire Wire Line
	4850 3850 4850 3750
Wire Wire Line
	7200 3300 7200 4400
Wire Wire Line
	7200 4400 4850 4400
Wire Wire Line
	6650 3300 7200 3300
Wire Wire Line
	4350 3300 4500 3300
Wire Wire Line
	4500 3450 4500 3300
Connection ~ 4500 3300
Wire Wire Line
	4500 3300 4850 3300
Wire Wire Line
	4850 3450 4850 3300
Connection ~ 4850 3300
Wire Wire Line
	4850 3300 5400 3300
Wire Wire Line
	4500 4500 4500 4400
Connection ~ 4500 4400
Wire Wire Line
	4500 4400 4350 4400
Wire Wire Line
	4850 4400 4850 4500
Connection ~ 4850 4400
Wire Wire Line
	4850 4400 4500 4400
Wire Wire Line
	4850 4900 4850 4800
Wire Wire Line
	4500 4900 4500 4800
$Comp
L Device:D D19
U 1 1 630B116A
P 4200 3300
F 0 "D19" H 4200 3517 50  0000 C CNN
F 1 "1N34 / D311 (*)" H 4200 3426 50  0000 C CNN
F 2 "" H 4200 3300 50  0001 C CNN
F 3 "~" H 4200 3300 50  0001 C CNN
	1    4200 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D20
U 1 1 630B1D9E
P 4200 4400
F 0 "D20" H 4200 4617 50  0000 C CNN
F 1 "1N34 / D311 (*)" H 4200 4526 50  0000 C CNN
F 2 "" H 4200 4400 50  0001 C CNN
F 3 "~" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
Text Notes 3950 5250 0    50   ~ 0
(*) Matched pair
$Comp
L Device:C C125
U 1 1 630B29EA
P 3800 3600
F 0 "C125" H 3915 3646 50  0000 L CNN
F 1 "0.01u" H 3915 3555 50  0000 L CNN
F 2 "" H 3838 3450 50  0001 C CNN
F 3 "~" H 3800 3600 50  0001 C CNN
	1    3800 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C126
U 1 1 630B31F8
P 3800 4650
F 0 "C126" H 3915 4696 50  0000 L CNN
F 1 "0.01u" H 3915 4605 50  0000 L CNN
F 2 "" H 3838 4500 50  0001 C CNN
F 3 "~" H 3800 4650 50  0001 C CNN
	1    3800 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0180
U 1 1 630B36AF
P 3800 4950
F 0 "#PWR0180" H 3800 4700 50  0001 C CNN
F 1 "GND" H 3805 4777 50  0001 C CNN
F 2 "" H 3800 4950 50  0001 C CNN
F 3 "" H 3800 4950 50  0001 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4950 3800 4800
Wire Wire Line
	3800 4500 3800 4400
Wire Wire Line
	3800 4400 4050 4400
$Comp
L power:GND #PWR0173
U 1 1 630B4D9B
P 3800 3850
F 0 "#PWR0173" H 3800 3600 50  0001 C CNN
F 1 "GND" H 3805 3677 50  0001 C CNN
F 2 "" H 3800 3850 50  0001 C CNN
F 3 "" H 3800 3850 50  0001 C CNN
	1    3800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3850 3800 3750
Wire Wire Line
	3800 3450 3800 3300
Wire Wire Line
	3800 3300 4050 3300
$Comp
L Device:L L24
U 1 1 630B8844
P 3500 3300
F 0 "L24" V 3690 3300 50  0000 C CNN
F 1 "1 mH" V 3599 3300 50  0000 C CNN
F 2 "" H 3500 3300 50  0001 C CNN
F 3 "~" H 3500 3300 50  0001 C CNN
	1    3500 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L26
U 1 1 630B943F
P 3500 4400
F 0 "L26" V 3690 4400 50  0000 C CNN
F 1 "1 mH" V 3599 4400 50  0000 C CNN
F 2 "" H 3500 4400 50  0001 C CNN
F 3 "~" H 3500 4400 50  0001 C CNN
	1    3500 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 4400 3800 4400
Connection ~ 3800 4400
Wire Wire Line
	3650 3300 3800 3300
Connection ~ 3800 3300
$Comp
L Device:R_POT_TRIM RV4
U 1 1 630BC689
P 3150 3650
F 0 "RV4" H 3080 3604 50  0000 R CNN
F 1 "1K" H 3080 3695 50  0000 R CNN
F 2 "" H 3150 3650 50  0001 C CNN
F 3 "~" H 3150 3650 50  0001 C CNN
	1    3150 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT_TRIM RV5
U 1 1 630BCE1A
P 3150 4700
F 0 "RV5" H 3080 4654 50  0000 R CNN
F 1 "1K" H 3080 4745 50  0000 R CNN
F 2 "" H 3150 4700 50  0001 C CNN
F 3 "~" H 3150 4700 50  0001 C CNN
	1    3150 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0176
U 1 1 630BE609
P 3150 3900
F 0 "#PWR0176" H 3150 3650 50  0001 C CNN
F 1 "GND" H 3155 3727 50  0001 C CNN
F 2 "" H 3150 3900 50  0001 C CNN
F 3 "" H 3150 3900 50  0001 C CNN
	1    3150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0179
U 1 1 630BEAA6
P 3150 4950
F 0 "#PWR0179" H 3150 4700 50  0001 C CNN
F 1 "GND" H 3155 4777 50  0001 C CNN
F 2 "" H 3150 4950 50  0001 C CNN
F 3 "" H 3150 4950 50  0001 C CNN
	1    3150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4950 3150 4850
Wire Wire Line
	3150 4550 3150 4400
Wire Wire Line
	3150 4400 3350 4400
Wire Wire Line
	3150 3900 3150 3800
Wire Wire Line
	3150 3500 3150 3300
Wire Wire Line
	3150 3300 3350 3300
Text GLabel 2800 4700 0    50   Output ~ 0
PWR_FED
Text GLabel 2800 3650 0    50   Output ~ 0
PWR_REF
Wire Wire Line
	2800 3650 3000 3650
Wire Wire Line
	3000 4700 2800 4700
Text Notes 2400 3500 0    50   ~ 0
3V @ MAX PWR
Text Notes 2400 4550 0    50   ~ 0
3V @ MAX PWR
$EndSCHEMATC
