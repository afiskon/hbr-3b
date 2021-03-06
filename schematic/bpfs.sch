EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 10
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
L Relay:G2RL-2-ASI-DC5 RL?
U 1 1 6292D6BE
P 1350 6350
AR Path="/62866BC1/6292D6BE" Ref="RL?"  Part="1" 
AR Path="/628FB22A/6292D6BE" Ref="RL12"  Part="1" 
F 0 "RL12" V 583 6350 50  0000 C CNN
F 1 "HFD27/012-S" V 674 6350 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 2000 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 1350 6350 50  0001 C CNN
	1    1350 6350
	0    -1   1    0   
$EndComp
NoConn ~ 1050 6650
NoConn ~ 1650 6750
NoConn ~ 1050 6850
$Comp
L Relay:G2RL-2-ASI-DC5 RL?
U 1 1 6292D709
P 6350 6350
AR Path="/62866BC1/6292D709" Ref="RL?"  Part="1" 
AR Path="/628FB22A/6292D709" Ref="RL13"  Part="1" 
F 0 "RL13" V 5583 6350 50  0000 C CNN
F 1 "HFD27/012-S" V 5674 6350 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 7000 6300 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 6350 6350 50  0001 C CNN
	1    6350 6350
	0    1    1    0   
$EndComp
NoConn ~ 6050 6750
NoConn ~ 6650 6650
NoConn ~ 6650 6850
NoConn ~ 6650 6250
NoConn ~ 1050 6250
$Comp
L power:VCC #PWR?
U 1 1 6292D768
P 1750 5300
AR Path="/62866BC1/6292D768" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D768" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 1750 5150 50  0001 C CNN
F 1 "VCC" H 1765 5473 50  0000 C CNN
F 2 "" H 1750 5300 50  0001 C CNN
F 3 "" H 1750 5300 50  0001 C CNN
	1    1750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6292D76E
P 5950 5300
AR Path="/62866BC1/6292D76E" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D76E" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 5950 5150 50  0001 C CNN
F 1 "VCC" H 5965 5473 50  0000 C CNN
F 2 "" H 5950 5300 50  0001 C CNN
F 3 "" H 5950 5300 50  0001 C CNN
	1    5950 5300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6292D774
P 6350 5450
AR Path="/62866BC1/6292D774" Ref="D?"  Part="1" 
AR Path="/628FB22A/6292D774" Ref="D14"  Part="1" 
F 0 "D14" H 6350 5667 50  0000 C CNN
F 1 "1N4007" H 6350 5576 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6350 5275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6350 5450 50  0001 C CNN
	1    6350 5450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6292D77A
P 1350 5450
AR Path="/62866BC1/6292D77A" Ref="D?"  Part="1" 
AR Path="/628FB22A/6292D77A" Ref="D13"  Part="1" 
F 0 "D13" H 1350 5233 50  0000 C CNN
F 1 "1N4007" H 1350 5324 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1350 5275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1350 5450 50  0001 C CNN
	1    1350 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 5950 1750 5950
Wire Wire Line
	1750 5950 1750 5450
Wire Wire Line
	1500 5450 1750 5450
Connection ~ 1750 5450
Wire Wire Line
	1750 5450 1750 5300
Wire Wire Line
	6050 5950 5950 5950
Wire Wire Line
	5950 5950 5950 5450
Wire Wire Line
	6200 5450 5950 5450
Connection ~ 5950 5450
Wire Wire Line
	5950 5450 5950 5300
Wire Wire Line
	1050 5950 950  5950
Wire Wire Line
	950  5950 950  5450
Wire Wire Line
	950  5450 1200 5450
Wire Wire Line
	950  5450 950  4950
Wire Wire Line
	950  4950 6750 4950
Connection ~ 950  5450
Wire Wire Line
	6500 5450 6750 5450
Wire Wire Line
	6750 5950 6750 5450
Wire Wire Line
	6750 5950 6650 5950
Connection ~ 6750 5450
Wire Wire Line
	6750 5450 6750 4950
$Comp
L Relay:G2RL-2-ASI-DC5 RL?
U 1 1 6292D795
P 1300 4200
AR Path="/62866BC1/6292D795" Ref="RL?"  Part="1" 
AR Path="/628FB22A/6292D795" Ref="RL10"  Part="1" 
F 0 "RL10" V 533 4200 50  0000 C CNN
F 1 "HFD27/012-S" V 624 4200 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 1950 4150 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 1300 4200 50  0001 C CNN
	1    1300 4200
	0    -1   1    0   
$EndComp
NoConn ~ 1000 4500
NoConn ~ 1600 4600
NoConn ~ 1000 4700
$Comp
L Relay:G2RL-2-ASI-DC5 RL?
U 1 1 6292D7C8
P 6300 4200
AR Path="/62866BC1/6292D7C8" Ref="RL?"  Part="1" 
AR Path="/628FB22A/6292D7C8" Ref="RL11"  Part="1" 
F 0 "RL11" V 5533 4200 50  0000 C CNN
F 1 "HFD27/012-S" V 5624 4200 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 6950 4150 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 6300 4200 50  0001 C CNN
	1    6300 4200
	0    1    1    0   
$EndComp
NoConn ~ 6000 4600
NoConn ~ 6600 4500
NoConn ~ 6600 4700
NoConn ~ 6600 4100
NoConn ~ 1000 4100
$Comp
L power:VCC #PWR?
U 1 1 6292D7FB
P 1700 3150
AR Path="/62866BC1/6292D7FB" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D7FB" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 1700 3000 50  0001 C CNN
F 1 "VCC" H 1715 3323 50  0000 C CNN
F 2 "" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6292D801
P 5900 3150
AR Path="/62866BC1/6292D801" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D801" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 5900 3000 50  0001 C CNN
F 1 "VCC" H 5915 3323 50  0000 C CNN
F 2 "" H 5900 3150 50  0001 C CNN
F 3 "" H 5900 3150 50  0001 C CNN
	1    5900 3150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6292D807
P 6300 3300
AR Path="/62866BC1/6292D807" Ref="D?"  Part="1" 
AR Path="/628FB22A/6292D807" Ref="D12"  Part="1" 
F 0 "D12" H 6300 3517 50  0000 C CNN
F 1 "1N4007" H 6300 3426 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6300 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6300 3300 50  0001 C CNN
	1    6300 3300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6292D80D
P 1300 3300
AR Path="/62866BC1/6292D80D" Ref="D?"  Part="1" 
AR Path="/628FB22A/6292D80D" Ref="D11"  Part="1" 
F 0 "D11" H 1300 3083 50  0000 C CNN
F 1 "1N4007" H 1300 3174 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1300 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1300 3300 50  0001 C CNN
	1    1300 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 3800 1700 3800
Wire Wire Line
	1700 3800 1700 3300
Wire Wire Line
	1450 3300 1700 3300
Connection ~ 1700 3300
Wire Wire Line
	1700 3300 1700 3150
Wire Wire Line
	6000 3800 5900 3800
Wire Wire Line
	5900 3800 5900 3300
Wire Wire Line
	6150 3300 5900 3300
Connection ~ 5900 3300
Wire Wire Line
	5900 3300 5900 3150
Wire Wire Line
	1000 3800 900  3800
Wire Wire Line
	900  3800 900  3300
Wire Wire Line
	900  3300 1150 3300
Wire Wire Line
	900  3300 900  2800
Wire Wire Line
	900  2800 6700 2800
Connection ~ 900  3300
Wire Wire Line
	6450 3300 6700 3300
Wire Wire Line
	6700 3800 6700 3300
Wire Wire Line
	6700 3800 6600 3800
Connection ~ 6700 3300
Wire Wire Line
	6700 3300 6700 2800
$Comp
L Relay:G2RL-2-ASI-DC5 RL?
U 1 1 6292D828
P 1300 2000
AR Path="/62866BC1/6292D828" Ref="RL?"  Part="1" 
AR Path="/628FB22A/6292D828" Ref="RL8"  Part="1" 
F 0 "RL8" V 533 2000 50  0000 C CNN
F 1 "HFD27/012-S" V 624 2000 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 1950 1950 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 1300 2000 50  0001 C CNN
	1    1300 2000
	0    -1   1    0   
$EndComp
NoConn ~ 1000 2300
NoConn ~ 1600 2400
NoConn ~ 1000 2500
$Comp
L Relay:G2RL-2-ASI-DC5 RL?
U 1 1 6292D867
P 6300 2000
AR Path="/62866BC1/6292D867" Ref="RL?"  Part="1" 
AR Path="/628FB22A/6292D867" Ref="RL9"  Part="1" 
F 0 "RL9" V 5533 2000 50  0000 C CNN
F 1 "HFD27/012-S" V 5624 2000 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G2RL" H 6950 1950 50  0001 L CNN
F 3 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-g2rl.pdf" H 6300 2000 50  0001 C CNN
	1    6300 2000
	0    1    1    0   
$EndComp
NoConn ~ 6000 2400
NoConn ~ 6600 2300
NoConn ~ 6600 2500
NoConn ~ 6600 1900
NoConn ~ 1000 1900
$Comp
L power:VCC #PWR?
U 1 1 6292D8B0
P 1650 950
AR Path="/62866BC1/6292D8B0" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D8B0" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 1650 800 50  0001 C CNN
F 1 "VCC" H 1665 1123 50  0000 C CNN
F 2 "" H 1650 950 50  0001 C CNN
F 3 "" H 1650 950 50  0001 C CNN
	1    1650 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 6292D8B6
P 5950 950
AR Path="/62866BC1/6292D8B6" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D8B6" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 5950 800 50  0001 C CNN
F 1 "VCC" H 5965 1123 50  0000 C CNN
F 2 "" H 5950 950 50  0001 C CNN
F 3 "" H 5950 950 50  0001 C CNN
	1    5950 950 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6292D8BC
P 6300 1100
AR Path="/62866BC1/6292D8BC" Ref="D?"  Part="1" 
AR Path="/628FB22A/6292D8BC" Ref="D10"  Part="1" 
F 0 "D10" H 6300 1317 50  0000 C CNN
F 1 "1N4007" H 6300 1226 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6300 925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6300 1100 50  0001 C CNN
	1    6300 1100
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 6292D8C2
P 1300 1100
AR Path="/62866BC1/6292D8C2" Ref="D?"  Part="1" 
AR Path="/628FB22A/6292D8C2" Ref="D9"  Part="1" 
F 0 "D9" H 1300 883 50  0000 C CNN
F 1 "1N4007" H 1300 974 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1300 925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1300 1100 50  0001 C CNN
	1    1300 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 1100 1650 1100
Wire Wire Line
	6000 1600 5950 1600
Wire Wire Line
	6150 1100 5950 1100
Wire Wire Line
	1000 1600 900  1600
Wire Wire Line
	900  1600 900  1100
Wire Wire Line
	900  1100 1150 1100
Wire Wire Line
	900  1100 900  600 
Wire Wire Line
	900  600  6700 600 
Connection ~ 900  1100
Wire Wire Line
	6450 1100 6700 1100
Wire Wire Line
	6700 1600 6700 1100
Wire Wire Line
	6700 1600 6600 1600
Connection ~ 6700 1100
Wire Wire Line
	6700 1100 6700 600 
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 6292D8DD
P 7300 5350
AR Path="/62866BC1/6292D8DD" Ref="Q?"  Part="1" 
AR Path="/628FB22A/6292D8DD" Ref="Q7"  Part="1" 
F 0 "Q7" H 7491 5396 50  0000 L CNN
F 1 "2N3904" H 7491 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7500 5275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7300 5350 50  0001 L CNN
	1    7300 5350
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 6292D8E3
P 7250 3200
AR Path="/62866BC1/6292D8E3" Ref="Q?"  Part="1" 
AR Path="/628FB22A/6292D8E3" Ref="Q6"  Part="1" 
F 0 "Q6" H 7441 3246 50  0000 L CNN
F 1 "2N3904" H 7441 3155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7450 3125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7250 3200 50  0001 L CNN
	1    7250 3200
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 6292D8E9
P 7250 950
AR Path="/62866BC1/6292D8E9" Ref="Q?"  Part="1" 
AR Path="/628FB22A/6292D8E9" Ref="Q5"  Part="1" 
F 0 "Q5" H 7441 996 50  0000 L CNN
F 1 "2N3904" H 7441 905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7450 875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7250 950 50  0001 L CNN
	1    7250 950 
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6292D8EF
P 7200 5700
AR Path="/62866BC1/6292D8EF" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D8EF" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 7200 5450 50  0001 C CNN
F 1 "GND" H 7205 5527 50  0001 C CNN
F 2 "" H 7200 5700 50  0001 C CNN
F 3 "" H 7200 5700 50  0001 C CNN
	1    7200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5700 7200 5550
$Comp
L power:GND #PWR?
U 1 1 6292D8F6
P 7150 3600
AR Path="/62866BC1/6292D8F6" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D8F6" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 7150 3350 50  0001 C CNN
F 1 "GND" H 7155 3427 50  0001 C CNN
F 2 "" H 7150 3600 50  0001 C CNN
F 3 "" H 7150 3600 50  0001 C CNN
	1    7150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6292D8FC
P 7150 1300
AR Path="/62866BC1/6292D8FC" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6292D8FC" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 7150 1050 50  0001 C CNN
F 1 "GND" H 7155 1127 50  0001 C CNN
F 2 "" H 7150 1300 50  0001 C CNN
F 3 "" H 7150 1300 50  0001 C CNN
	1    7150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1300 7150 1150
Wire Wire Line
	7150 750  7150 600 
Wire Wire Line
	7150 600  6700 600 
Connection ~ 6700 600 
Wire Wire Line
	7150 3000 7150 2800
Wire Wire Line
	7150 2800 6700 2800
Connection ~ 6700 2800
Wire Wire Line
	7150 3600 7150 3400
Wire Wire Line
	6750 4950 7200 4950
Wire Wire Line
	7200 4950 7200 5150
Connection ~ 6750 4950
$Comp
L Device:R R?
U 1 1 6292D90D
P 7700 950
AR Path="/62866BC1/6292D90D" Ref="R?"  Part="1" 
AR Path="/628FB22A/6292D90D" Ref="R5"  Part="1" 
F 0 "R5" V 7493 950 50  0000 C CNN
F 1 "4.7K" V 7584 950 50  0000 C CNN
F 2 "" V 7630 950 50  0001 C CNN
F 3 "~" H 7700 950 50  0001 C CNN
	1    7700 950 
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6292D913
P 7700 3200
AR Path="/62866BC1/6292D913" Ref="R?"  Part="1" 
AR Path="/628FB22A/6292D913" Ref="R6"  Part="1" 
F 0 "R6" V 7493 3200 50  0000 C CNN
F 1 "4.7K" V 7584 3200 50  0000 C CNN
F 2 "" V 7630 3200 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6292D919
P 7750 5350
AR Path="/62866BC1/6292D919" Ref="R?"  Part="1" 
AR Path="/628FB22A/6292D919" Ref="R7"  Part="1" 
F 0 "R7" V 7543 5350 50  0000 C CNN
F 1 "4.7K" V 7634 5350 50  0000 C CNN
F 2 "" V 7680 5350 50  0001 C CNN
F 3 "~" H 7750 5350 50  0001 C CNN
	1    7750 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 5350 7500 5350
Wire Wire Line
	7550 3200 7450 3200
Wire Wire Line
	7550 950  7450 950 
Text GLabel 8050 950  2    50   Input ~ 0
CTL_30M
Text GLabel 8050 3200 2    50   Input ~ 0
CTL_17M
Text GLabel 8100 5350 2    50   Input ~ 0
CTL_12M
Wire Wire Line
	8100 5350 7900 5350
Wire Wire Line
	7850 3200 8050 3200
Wire Wire Line
	8050 950  7850 950 
Wire Wire Line
	6650 6450 8750 6450
Wire Wire Line
	8750 6450 8750 4300
Wire Wire Line
	8750 4300 6600 4300
Wire Wire Line
	6600 2100 8750 2100
Wire Wire Line
	8750 2100 8750 4300
Connection ~ 8750 4300
Text GLabel 9050 4300 2    50   Output ~ 0
BPFS_OUT
Wire Wire Line
	9050 4300 8750 4300
Wire Wire Line
	1000 2100 600  2100
Wire Wire Line
	600  2100 600  4300
Wire Wire Line
	600  4300 1000 4300
Wire Wire Line
	600  4300 600  6450
Wire Wire Line
	600  6450 1050 6450
Connection ~ 600  4300
Text GLabel 800  7350 2    50   Input ~ 0
BPFS_IN
Wire Wire Line
	800  7350 600  7350
Wire Wire Line
	600  7350 600  6450
Connection ~ 600  6450
Text Notes 2850 850  0    50   ~ 0
All filters are 0.2 dB ripple Chebyshev type
$Comp
L Device:L_Core_Ferrite L10
U 1 1 629458C0
P 2850 2250
F 0 "L10" H 2938 2296 50  0000 L CNN
F 1 "0.79u" H 2938 2205 50  0000 L CNN
F 2 "" H 2850 2250 50  0001 C CNN
F 3 "~" H 2850 2250 50  0001 C CNN
	1    2850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 62948578
P 2500 2250
F 0 "C29" H 2615 2296 50  0000 L CNN
F 1 "100p" H 2615 2205 50  0000 L CNN
F 2 "" H 2538 2100 50  0001 C CNN
F 3 "~" H 2500 2250 50  0001 C CNN
	1    2500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 62948C18
P 2100 2250
F 0 "C28" H 2215 2296 50  0000 L CNN
F 1 "100p" H 2215 2205 50  0000 L CNN
F 2 "" H 2138 2100 50  0001 C CNN
F 3 "~" H 2100 2250 50  0001 C CNN
	1    2100 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L11
U 1 1 6294C80C
P 4150 2250
F 0 "L11" H 4238 2296 50  0000 L CNN
F 1 "0.79u" H 4238 2205 50  0000 L CNN
F 2 "" H 4150 2250 50  0001 C CNN
F 3 "~" H 4150 2250 50  0001 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 6294C816
P 3850 2250
F 0 "C31" H 3965 2296 50  0000 L CNN
F 1 "82p" H 3965 2205 50  0000 L CNN
F 2 "" H 3888 2100 50  0001 C CNN
F 3 "~" H 3850 2250 50  0001 C CNN
	1    3850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C30
U 1 1 6294C820
P 3450 2250
F 0 "C30" H 3565 2296 50  0000 L CNN
F 1 "180p" H 3565 2205 50  0000 L CNN
F 2 "" H 3488 2100 50  0001 C CNN
F 3 "~" H 3450 2250 50  0001 C CNN
	1    3450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L12
U 1 1 6294F981
P 5500 2250
F 0 "L12" H 5588 2296 50  0000 L CNN
F 1 "0.79u" H 5588 2205 50  0000 L CNN
F 2 "" H 5500 2250 50  0001 C CNN
F 3 "~" H 5500 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C33
U 1 1 6294F98B
P 5150 2250
F 0 "C33" H 5265 2296 50  0000 L CNN
F 1 "100p" H 5265 2205 50  0000 L CNN
F 2 "" H 5188 2100 50  0001 C CNN
F 3 "~" H 5150 2250 50  0001 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 6294F995
P 4750 2250
F 0 "C32" H 4865 2296 50  0000 L CNN
F 1 "100p" H 4865 2205 50  0000 L CNN
F 2 "" H 4788 2100 50  0001 C CNN
F 3 "~" H 4750 2250 50  0001 C CNN
	1    4750 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CTRIM C25
U 1 1 62953FFE
P 3200 2000
F 0 "C25" V 3452 2000 50  0000 C CNN
F 1 "30p" V 3361 2000 50  0000 C CNN
F 2 "" H 3200 2000 50  0001 C CNN
F 3 "~" H 3200 2000 50  0001 C CNN
	1    3200 2000
	0    1    -1   0   
$EndComp
$Comp
L Device:CTRIM C26
U 1 1 62954FBA
P 4450 2000
F 0 "C26" V 4702 2000 50  0000 C CNN
F 1 "30p" V 4611 2000 50  0000 C CNN
F 2 "" H 4450 2000 50  0001 C CNN
F 3 "~" H 4450 2000 50  0001 C CNN
	1    4450 2000
	0    1    -1   0   
$EndComp
$Comp
L Device:C C27
U 1 1 62975141
P 5700 2000
F 0 "C27" V 5448 2000 50  0000 C CNN
F 1 "82p" V 5539 2000 50  0000 C CNN
F 2 "" H 5738 1850 50  0001 C CNN
F 3 "~" H 5700 2000 50  0001 C CNN
	1    5700 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C24
U 1 1 62975A6B
P 1900 2000
F 0 "C24" V 1648 2000 50  0000 C CNN
F 1 "82p" V 1739 2000 50  0000 C CNN
F 2 "" H 1938 1850 50  0001 C CNN
F 3 "~" H 1900 2000 50  0001 C CNN
	1    1900 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297CFF7
P 2100 2500
AR Path="/62866BC1/6297CFF7" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297CFF7" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 2100 2250 50  0001 C CNN
F 1 "GND" H 2105 2327 50  0001 C CNN
F 2 "" H 2100 2500 50  0001 C CNN
F 3 "" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297D3BC
P 2500 2500
AR Path="/62866BC1/6297D3BC" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297D3BC" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 2500 2250 50  0001 C CNN
F 1 "GND" H 2505 2327 50  0001 C CNN
F 2 "" H 2500 2500 50  0001 C CNN
F 3 "" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297D7A0
P 2850 2500
AR Path="/62866BC1/6297D7A0" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297D7A0" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 2850 2250 50  0001 C CNN
F 1 "GND" H 2855 2327 50  0001 C CNN
F 2 "" H 2850 2500 50  0001 C CNN
F 3 "" H 2850 2500 50  0001 C CNN
	1    2850 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297DABC
P 3450 2500
AR Path="/62866BC1/6297DABC" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297DABC" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 3450 2250 50  0001 C CNN
F 1 "GND" H 3455 2327 50  0001 C CNN
F 2 "" H 3450 2500 50  0001 C CNN
F 3 "" H 3450 2500 50  0001 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297DD8F
P 3850 2500
AR Path="/62866BC1/6297DD8F" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297DD8F" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3850 2250 50  0001 C CNN
F 1 "GND" H 3855 2327 50  0001 C CNN
F 2 "" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297E03A
P 4150 2500
AR Path="/62866BC1/6297E03A" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297E03A" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 4150 2250 50  0001 C CNN
F 1 "GND" H 4155 2327 50  0001 C CNN
F 2 "" H 4150 2500 50  0001 C CNN
F 3 "" H 4150 2500 50  0001 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297E23D
P 4750 2500
AR Path="/62866BC1/6297E23D" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297E23D" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 4750 2250 50  0001 C CNN
F 1 "GND" H 4755 2327 50  0001 C CNN
F 2 "" H 4750 2500 50  0001 C CNN
F 3 "" H 4750 2500 50  0001 C CNN
	1    4750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297E68D
P 5150 2500
AR Path="/62866BC1/6297E68D" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297E68D" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 5150 2250 50  0001 C CNN
F 1 "GND" H 5155 2327 50  0001 C CNN
F 2 "" H 5150 2500 50  0001 C CNN
F 3 "" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6297E8F2
P 5500 2500
AR Path="/62866BC1/6297E8F2" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/6297E8F2" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 5500 2250 50  0001 C CNN
F 1 "GND" H 5505 2327 50  0001 C CNN
F 2 "" H 5500 2500 50  0001 C CNN
F 3 "" H 5500 2500 50  0001 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1650 1600
Wire Wire Line
	1650 1600 1650 1100
Connection ~ 1650 1100
Wire Wire Line
	1650 1100 1650 950 
$Comp
L Device:C C22
U 1 1 62986FAA
P 1900 1600
F 0 "C22" V 1648 1600 50  0000 C CNN
F 1 "10p" V 1739 1600 50  0000 C CNN
F 2 "" H 1938 1450 50  0001 C CNN
F 3 "~" H 1900 1600 50  0001 C CNN
	1    1900 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 1600 5950 1100
Connection ~ 5950 1100
Wire Wire Line
	5950 950  5950 1100
$Comp
L Device:C C23
U 1 1 6298C6EC
P 5700 1600
F 0 "C23" V 5448 1600 50  0000 C CNN
F 1 "10p" V 5539 1600 50  0000 C CNN
F 2 "" H 5738 1450 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1600 5900 1600
Wire Wire Line
	5900 1600 5900 2000
Wire Wire Line
	5900 2000 5850 2000
Wire Wire Line
	1750 1600 1700 1600
Wire Wire Line
	1700 1600 1700 2000
Wire Wire Line
	1700 2000 1750 2000
Wire Wire Line
	1700 2000 1600 2000
Connection ~ 1700 2000
Wire Wire Line
	5550 2000 5500 2000
Wire Wire Line
	5500 2100 5500 2000
Connection ~ 5500 2000
Wire Wire Line
	5500 2000 5150 2000
Wire Wire Line
	5500 2000 5500 1600
Wire Wire Line
	5500 1600 5550 1600
Wire Wire Line
	2100 2100 2100 2000
Wire Wire Line
	2100 2000 2050 2000
Wire Wire Line
	2100 2000 2100 1600
Wire Wire Line
	2100 1600 2050 1600
Connection ~ 2100 2000
Wire Wire Line
	2100 2500 2100 2400
Wire Wire Line
	2100 2000 2500 2000
Wire Wire Line
	3350 2000 3450 2000
Wire Wire Line
	5500 2500 5500 2400
Wire Wire Line
	2500 2000 2500 2100
Connection ~ 2500 2000
Wire Wire Line
	2500 2000 2850 2000
Wire Wire Line
	2500 2400 2500 2500
Wire Wire Line
	2850 2000 2850 2100
Connection ~ 2850 2000
Wire Wire Line
	2850 2000 3050 2000
Wire Wire Line
	2850 2400 2850 2500
Wire Wire Line
	3450 2000 3450 2100
Connection ~ 3450 2000
Wire Wire Line
	3450 2000 3850 2000
Wire Wire Line
	3450 2400 3450 2500
Wire Wire Line
	3850 2000 3850 2100
Connection ~ 3850 2000
Wire Wire Line
	3850 2000 4150 2000
Wire Wire Line
	3850 2400 3850 2500
Wire Wire Line
	4150 2000 4150 2100
Connection ~ 4150 2000
Wire Wire Line
	4150 2000 4300 2000
Wire Wire Line
	4150 2400 4150 2500
Wire Wire Line
	4750 2000 4750 2100
Connection ~ 4750 2000
Wire Wire Line
	4750 2000 4600 2000
Wire Wire Line
	4750 2400 4750 2500
Wire Wire Line
	5150 2000 5150 2100
Connection ~ 5150 2000
Wire Wire Line
	5150 2000 4750 2000
Wire Wire Line
	5150 2400 5150 2500
Text Notes 3350 1550 0    50   ~ 0
0.79 uH = 13T @ T50-6
Text Notes 3550 1650 0    50   ~ 0
Cv = 26.1 pF
Wire Wire Line
	6000 2000 5900 2000
Connection ~ 5900 2000
$Comp
L Device:L_Core_Ferrite L13
U 1 1 629EFD73
P 2850 4450
F 0 "L13" H 2938 4496 50  0000 L CNN
F 1 "0.44u" H 2938 4405 50  0000 L CNN
F 2 "" H 2850 4450 50  0001 C CNN
F 3 "~" H 2850 4450 50  0001 C CNN
	1    2850 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 629EFD7D
P 2500 4450
F 0 "C39" H 2615 4496 50  0000 L CNN
F 1 "10p" H 2615 4405 50  0000 L CNN
F 2 "" H 2538 4300 50  0001 C CNN
F 3 "~" H 2500 4450 50  0001 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 629EFD87
P 2100 4450
F 0 "C38" H 2215 4496 50  0000 L CNN
F 1 "120p" H 2215 4405 50  0000 L CNN
F 2 "" H 2138 4300 50  0001 C CNN
F 3 "~" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L14
U 1 1 629EFD91
P 4150 4450
F 0 "L14" H 4238 4496 50  0000 L CNN
F 1 "0.44u" H 4238 4405 50  0000 L CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "~" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C41
U 1 1 629EFD9B
P 3850 4450
F 0 "C41" H 3965 4496 50  0000 L CNN
F 1 "10p" H 3965 4405 50  0000 L CNN
F 2 "" H 3888 4300 50  0001 C CNN
F 3 "~" H 3850 4450 50  0001 C CNN
	1    3850 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 629EFDA5
P 3450 4450
F 0 "C40" H 3565 4496 50  0000 L CNN
F 1 "150p" H 3565 4405 50  0000 L CNN
F 2 "" H 3488 4300 50  0001 C CNN
F 3 "~" H 3450 4450 50  0001 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L15
U 1 1 629EFDAF
P 5500 4450
F 0 "L15" H 5588 4496 50  0000 L CNN
F 1 "0.44u" H 5588 4405 50  0000 L CNN
F 2 "" H 5500 4450 50  0001 C CNN
F 3 "~" H 5500 4450 50  0001 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C43
U 1 1 629EFDB9
P 5150 4450
F 0 "C43" H 5265 4496 50  0000 L CNN
F 1 "10p" H 5265 4405 50  0000 L CNN
F 2 "" H 5188 4300 50  0001 C CNN
F 3 "~" H 5150 4450 50  0001 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C42
U 1 1 629EFDC3
P 4750 4450
F 0 "C42" H 4865 4496 50  0000 L CNN
F 1 "120p" H 4865 4405 50  0000 L CNN
F 2 "" H 4788 4300 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
	1    4750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:CTRIM C35
U 1 1 629EFDCD
P 3200 4200
F 0 "C35" V 3452 4200 50  0000 C CNN
F 1 "10p" V 3361 4200 50  0000 C CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "~" H 3200 4200 50  0001 C CNN
	1    3200 4200
	0    1    -1   0   
$EndComp
$Comp
L Device:CTRIM C36
U 1 1 629EFDD7
P 4450 4200
F 0 "C36" V 4702 4200 50  0000 C CNN
F 1 "10p" V 4611 4200 50  0000 C CNN
F 2 "" H 4450 4200 50  0001 C CNN
F 3 "~" H 4450 4200 50  0001 C CNN
	1    4450 4200
	0    1    -1   0   
$EndComp
$Comp
L Device:C C37
U 1 1 629EFDE1
P 5700 4200
F 0 "C37" V 5448 4200 50  0000 C CNN
F 1 "39p" V 5539 4200 50  0000 C CNN
F 2 "" H 5738 4050 50  0001 C CNN
F 3 "~" H 5700 4200 50  0001 C CNN
	1    5700 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C34
U 1 1 629EFDEB
P 1900 4200
F 0 "C34" V 1648 4200 50  0000 C CNN
F 1 "39p" V 1739 4200 50  0000 C CNN
F 2 "" H 1938 4050 50  0001 C CNN
F 3 "~" H 1900 4200 50  0001 C CNN
	1    1900 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFDF5
P 2100 4700
AR Path="/62866BC1/629EFDF5" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFDF5" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 2100 4450 50  0001 C CNN
F 1 "GND" H 2105 4527 50  0001 C CNN
F 2 "" H 2100 4700 50  0001 C CNN
F 3 "" H 2100 4700 50  0001 C CNN
	1    2100 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFDFF
P 2500 4700
AR Path="/62866BC1/629EFDFF" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFDFF" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 2500 4450 50  0001 C CNN
F 1 "GND" H 2505 4527 50  0001 C CNN
F 2 "" H 2500 4700 50  0001 C CNN
F 3 "" H 2500 4700 50  0001 C CNN
	1    2500 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE09
P 2850 4700
AR Path="/62866BC1/629EFE09" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE09" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 2850 4450 50  0001 C CNN
F 1 "GND" H 2855 4527 50  0001 C CNN
F 2 "" H 2850 4700 50  0001 C CNN
F 3 "" H 2850 4700 50  0001 C CNN
	1    2850 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE13
P 3450 4700
AR Path="/62866BC1/629EFE13" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE13" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 3450 4450 50  0001 C CNN
F 1 "GND" H 3455 4527 50  0001 C CNN
F 2 "" H 3450 4700 50  0001 C CNN
F 3 "" H 3450 4700 50  0001 C CNN
	1    3450 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE1D
P 3850 4700
AR Path="/62866BC1/629EFE1D" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE1D" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 3850 4450 50  0001 C CNN
F 1 "GND" H 3855 4527 50  0001 C CNN
F 2 "" H 3850 4700 50  0001 C CNN
F 3 "" H 3850 4700 50  0001 C CNN
	1    3850 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE27
P 4150 4700
AR Path="/62866BC1/629EFE27" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE27" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 4150 4450 50  0001 C CNN
F 1 "GND" H 4155 4527 50  0001 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE31
P 4750 4700
AR Path="/62866BC1/629EFE31" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE31" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 4750 4450 50  0001 C CNN
F 1 "GND" H 4755 4527 50  0001 C CNN
F 2 "" H 4750 4700 50  0001 C CNN
F 3 "" H 4750 4700 50  0001 C CNN
	1    4750 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE3B
P 5150 4700
AR Path="/62866BC1/629EFE3B" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE3B" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 5150 4450 50  0001 C CNN
F 1 "GND" H 5155 4527 50  0001 C CNN
F 2 "" H 5150 4700 50  0001 C CNN
F 3 "" H 5150 4700 50  0001 C CNN
	1    5150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 629EFE45
P 5500 4700
AR Path="/62866BC1/629EFE45" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/629EFE45" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5505 4527 50  0001 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4200 5500 4200
Wire Wire Line
	5500 4300 5500 4200
Connection ~ 5500 4200
Wire Wire Line
	5500 4200 5150 4200
Wire Wire Line
	2100 4300 2100 4200
Wire Wire Line
	2100 4200 2050 4200
Connection ~ 2100 4200
Wire Wire Line
	2100 4700 2100 4600
Wire Wire Line
	2100 4200 2500 4200
Wire Wire Line
	3350 4200 3450 4200
Wire Wire Line
	5500 4700 5500 4600
Wire Wire Line
	2500 4200 2500 4300
Connection ~ 2500 4200
Wire Wire Line
	2500 4200 2850 4200
Wire Wire Line
	2500 4600 2500 4700
Wire Wire Line
	2850 4200 2850 4300
Connection ~ 2850 4200
Wire Wire Line
	2850 4200 3050 4200
Wire Wire Line
	2850 4600 2850 4700
Wire Wire Line
	3450 4200 3450 4300
Connection ~ 3450 4200
Wire Wire Line
	3450 4200 3850 4200
Wire Wire Line
	3450 4600 3450 4700
Wire Wire Line
	3850 4200 3850 4300
Connection ~ 3850 4200
Wire Wire Line
	3850 4200 4150 4200
Wire Wire Line
	3850 4600 3850 4700
Wire Wire Line
	4150 4200 4150 4300
Connection ~ 4150 4200
Wire Wire Line
	4150 4200 4300 4200
Wire Wire Line
	4150 4600 4150 4700
Wire Wire Line
	4750 4200 4750 4300
Connection ~ 4750 4200
Wire Wire Line
	4750 4200 4600 4200
Wire Wire Line
	4750 4600 4750 4700
Wire Wire Line
	5150 4200 5150 4300
Connection ~ 5150 4200
Wire Wire Line
	5150 4200 4750 4200
Wire Wire Line
	5150 4600 5150 4700
$Comp
L Device:L_Core_Ferrite L16
U 1 1 62A17AAC
P 2900 6600
F 0 "L16" H 2988 6646 50  0000 L CNN
F 1 "0.32u" H 2988 6555 50  0000 L CNN
F 2 "" H 2900 6600 50  0001 C CNN
F 3 "~" H 2900 6600 50  0001 C CNN
	1    2900 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 62A17AB6
P 2550 6600
F 0 "C48" H 2665 6646 50  0000 L CNN
F 1 "100p" H 2665 6555 50  0000 L CNN
F 2 "" H 2588 6450 50  0001 C CNN
F 3 "~" H 2550 6600 50  0001 C CNN
	1    2550 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L17
U 1 1 62A17ACA
P 4200 6600
F 0 "L17" H 4288 6646 50  0000 L CNN
F 1 "0.32u" H 4288 6555 50  0000 L CNN
F 2 "" H 4200 6600 50  0001 C CNN
F 3 "~" H 4200 6600 50  0001 C CNN
	1    4200 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C49
U 1 1 62A17AD4
P 3800 6600
F 0 "C49" H 3915 6646 50  0000 L CNN
F 1 "120p" H 3915 6555 50  0000 L CNN
F 2 "" H 3838 6450 50  0001 C CNN
F 3 "~" H 3800 6600 50  0001 C CNN
	1    3800 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L18
U 1 1 62A17AE8
P 5550 6600
F 0 "L18" H 5638 6646 50  0000 L CNN
F 1 "0.32u" H 5638 6555 50  0000 L CNN
F 2 "" H 5550 6600 50  0001 C CNN
F 3 "~" H 5550 6600 50  0001 C CNN
	1    5550 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 62A17AF2
P 5200 6600
F 0 "C50" H 5315 6646 50  0000 L CNN
F 1 "100p" H 5315 6555 50  0000 L CNN
F 2 "" H 5238 6450 50  0001 C CNN
F 3 "~" H 5200 6600 50  0001 C CNN
	1    5200 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:CTRIM C46
U 1 1 62A17B10
P 4500 6350
F 0 "C46" V 4752 6350 50  0000 C CNN
F 1 "10p" V 4661 6350 50  0000 C CNN
F 2 "" H 4500 6350 50  0001 C CNN
F 3 "~" H 4500 6350 50  0001 C CNN
	1    4500 6350
	0    1    -1   0   
$EndComp
$Comp
L Device:C C47
U 1 1 62A17B1A
P 5750 6350
F 0 "C47" V 5498 6350 50  0000 C CNN
F 1 "22p" V 5589 6350 50  0000 C CNN
F 2 "" H 5788 6200 50  0001 C CNN
F 3 "~" H 5750 6350 50  0001 C CNN
	1    5750 6350
	0    1    1    0   
$EndComp
$Comp
L Device:C C44
U 1 1 62A17B24
P 1950 6350
F 0 "C44" V 1698 6350 50  0000 C CNN
F 1 "22p" V 1789 6350 50  0000 C CNN
F 2 "" H 1988 6200 50  0001 C CNN
F 3 "~" H 1950 6350 50  0001 C CNN
	1    1950 6350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A17B38
P 2550 6850
AR Path="/62866BC1/62A17B38" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/62A17B38" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 2550 6600 50  0001 C CNN
F 1 "GND" H 2555 6677 50  0001 C CNN
F 2 "" H 2550 6850 50  0001 C CNN
F 3 "" H 2550 6850 50  0001 C CNN
	1    2550 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A17B42
P 2900 6850
AR Path="/62866BC1/62A17B42" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/62A17B42" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 2900 6600 50  0001 C CNN
F 1 "GND" H 2905 6677 50  0001 C CNN
F 2 "" H 2900 6850 50  0001 C CNN
F 3 "" H 2900 6850 50  0001 C CNN
	1    2900 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A17B56
P 3800 6850
AR Path="/62866BC1/62A17B56" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/62A17B56" Ref="#PWR078"  Part="1" 
F 0 "#PWR078" H 3800 6600 50  0001 C CNN
F 1 "GND" H 3805 6677 50  0001 C CNN
F 2 "" H 3800 6850 50  0001 C CNN
F 3 "" H 3800 6850 50  0001 C CNN
	1    3800 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A17B60
P 4200 6850
AR Path="/62866BC1/62A17B60" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/62A17B60" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 4200 6600 50  0001 C CNN
F 1 "GND" H 4205 6677 50  0001 C CNN
F 2 "" H 4200 6850 50  0001 C CNN
F 3 "" H 4200 6850 50  0001 C CNN
	1    4200 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A17B74
P 5200 6850
AR Path="/62866BC1/62A17B74" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/62A17B74" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 5200 6600 50  0001 C CNN
F 1 "GND" H 5205 6677 50  0001 C CNN
F 2 "" H 5200 6850 50  0001 C CNN
F 3 "" H 5200 6850 50  0001 C CNN
	1    5200 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62A17B7E
P 5550 6850
AR Path="/62866BC1/62A17B7E" Ref="#PWR?"  Part="1" 
AR Path="/628FB22A/62A17B7E" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 5550 6600 50  0001 C CNN
F 1 "GND" H 5555 6677 50  0001 C CNN
F 2 "" H 5550 6850 50  0001 C CNN
F 3 "" H 5550 6850 50  0001 C CNN
	1    5550 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6350 5550 6350
Wire Wire Line
	5550 6450 5550 6350
Connection ~ 5550 6350
Wire Wire Line
	5550 6350 5200 6350
Wire Wire Line
	5550 6850 5550 6750
Wire Wire Line
	2550 6350 2550 6450
Connection ~ 2550 6350
Wire Wire Line
	2550 6350 2900 6350
Wire Wire Line
	2550 6750 2550 6850
Wire Wire Line
	2900 6350 2900 6450
Connection ~ 2900 6350
Wire Wire Line
	2900 6350 3100 6350
Wire Wire Line
	2900 6750 2900 6850
Wire Wire Line
	3800 6350 3800 6450
Wire Wire Line
	3800 6750 3800 6850
Wire Wire Line
	4200 6350 4200 6450
Connection ~ 4200 6350
Wire Wire Line
	4200 6350 4350 6350
Wire Wire Line
	4200 6750 4200 6850
Wire Wire Line
	5200 6350 5200 6450
Connection ~ 5200 6350
Wire Wire Line
	5200 6750 5200 6850
Wire Wire Line
	1800 6350 1650 6350
Wire Wire Line
	5900 6350 6050 6350
Wire Wire Line
	5850 4200 6000 4200
Wire Wire Line
	1600 4200 1750 4200
Wire Wire Line
	2100 6350 2550 6350
$Comp
L Device:CTRIM C45
U 1 1 62A17B06
P 3250 6350
F 0 "C45" V 3502 6350 50  0000 C CNN
F 1 "10p" V 3411 6350 50  0000 C CNN
F 2 "" H 3250 6350 50  0001 C CNN
F 3 "~" H 3250 6350 50  0001 C CNN
	1    3250 6350
	0    1    -1   0   
$EndComp
Wire Wire Line
	3400 6350 3800 6350
Wire Wire Line
	4650 6350 5200 6350
Connection ~ 3800 6350
Wire Wire Line
	3800 6350 4200 6350
Text Notes 3300 3700 0    50   ~ 0
0.44 uH = 9T @ T50-6
Text Notes 3500 3800 0    50   ~ 0
Cv = 8.0 pF
Text Notes 3300 5900 0    50   ~ 0
0.32 uH = 7T @ T50-6
Text Notes 3500 6000 0    50   ~ 0
Cv = 3.6 pF
$EndSCHEMATC
