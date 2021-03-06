EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 10
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
L Amplifier_Operational:NE5532 U10
U 2 1 62E90A7F
P 4550 2450
F 0 "U10" H 4550 2817 50  0000 C CNN
F 1 "NE5532" H 4550 2726 50  0000 C CNN
F 2 "" H 4550 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 4550 2450 50  0001 C CNN
	2    4550 2450
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U10
U 1 1 62E93E24
P 5800 2550
F 0 "U10" H 5850 2850 50  0000 C CNN
F 1 "NE5532" H 5900 2750 50  0000 C CNN
F 2 "" H 5800 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 5800 2550 50  0001 C CNN
	1    5800 2550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NE5532 U10
U 3 1 62E97CAF
P 5800 2550
F 0 "U10" H 5758 2596 50  0001 L CNN
F 1 "NE5532" H 5758 2505 50  0001 L CNN
F 2 "" H 5800 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne5532.pdf" H 5800 2550 50  0001 C CNN
	3    5800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2450 5150 2450
$Comp
L power:GND #PWR0149
U 1 1 62E9F271
P 5700 2950
F 0 "#PWR0149" H 5700 2700 50  0001 C CNN
F 1 "GND" H 5705 2777 50  0001 C CNN
F 2 "" H 5700 2950 50  0001 C CNN
F 3 "" H 5700 2950 50  0001 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2950 5700 2850
$Comp
L power:VCC #PWR0145
U 1 1 62E9FFF5
P 5700 1550
F 0 "#PWR0145" H 5700 1400 50  0001 C CNN
F 1 "VCC" H 5715 1723 50  0000 C CNN
F 2 "" H 5700 1550 50  0001 C CNN
F 3 "" H 5700 1550 50  0001 C CNN
	1    5700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C108
U 1 1 62EA0811
P 6050 1900
F 0 "C108" H 6165 1946 50  0000 L CNN
F 1 "0.1u" H 6165 1855 50  0000 L CNN
F 2 "" H 6088 1750 50  0001 C CNN
F 3 "~" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 62EA1394
P 6050 2150
F 0 "#PWR0147" H 6050 1900 50  0001 C CNN
F 1 "GND" H 6055 1977 50  0001 C CNN
F 2 "" H 6050 2150 50  0001 C CNN
F 3 "" H 6050 2150 50  0001 C CNN
	1    6050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2150 6050 2050
Wire Wire Line
	6050 1750 6050 1700
Wire Wire Line
	6050 1700 5700 1700
Wire Wire Line
	5700 1700 5700 1550
Wire Wire Line
	5700 1700 5700 2250
Connection ~ 5700 1700
$Comp
L Device:C C111
U 1 1 62EA22EF
P 6600 2550
F 0 "C111" V 6348 2550 50  0000 C CNN
F 1 "0.1u" V 6439 2550 50  0000 C CNN
F 2 "" H 6638 2400 50  0001 C CNN
F 3 "~" H 6600 2550 50  0001 C CNN
	1    6600 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R62
U 1 1 62EA2F91
P 4000 2950
F 0 "R62" H 4070 2996 50  0000 L CNN
F 1 "8.2K" H 4070 2905 50  0000 L CNN
F 2 "" V 3930 2950 50  0001 C CNN
F 3 "~" H 4000 2950 50  0001 C CNN
	1    4000 2950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D18
U 1 1 62EA4793
P 3550 2950
F 0 "D18" V 3504 3030 50  0000 L CNN
F 1 "1N4148" V 3595 3030 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3550 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3550 2950 50  0001 C CNN
	1    3550 2950
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D17
U 1 1 62EA57C0
P 3250 2950
F 0 "D17" V 3250 2870 50  0000 R CNN
F 1 "1N4148" V 3205 2870 50  0001 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3250 2775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3250 2950 50  0001 C CNN
	1    3250 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3100 4000 3350
Wire Wire Line
	4000 3350 5150 3350
Wire Wire Line
	5150 3350 5150 2450
Connection ~ 5150 2450
Wire Wire Line
	5150 2450 4850 2450
Wire Wire Line
	4250 2550 4000 2550
Wire Wire Line
	3250 2550 3250 2800
Wire Wire Line
	4000 2800 4000 2550
Connection ~ 4000 2550
Wire Wire Line
	4000 2550 3550 2550
Wire Wire Line
	3550 2550 3550 2800
Connection ~ 3550 2550
Wire Wire Line
	3550 2550 3250 2550
Wire Wire Line
	3550 3100 3550 3350
Wire Wire Line
	3550 3350 4000 3350
Connection ~ 4000 3350
Wire Wire Line
	3550 3350 3250 3350
Wire Wire Line
	3250 3350 3250 3100
Connection ~ 3550 3350
$Comp
L Device:R R59
U 1 1 62EAB701
P 3000 2550
F 0 "R59" V 2793 2550 50  0000 C CNN
F 1 "3.3K" V 2884 2550 50  0000 C CNN
F 2 "" V 2930 2550 50  0001 C CNN
F 3 "~" H 3000 2550 50  0001 C CNN
	1    3000 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C113
U 1 1 62EB4018
P 2700 2950
F 0 "C113" H 2815 2996 50  0000 L CNN
F 1 "0.1u" H 2815 2905 50  0000 L CNN
F 2 "" H 2738 2800 50  0001 C CNN
F 3 "~" H 2700 2950 50  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C112
U 1 1 62EB4E2D
P 2350 2950
F 0 "C112" H 2465 2996 50  0000 L CNN
F 1 "10u" H 2465 2905 50  0000 L CNN
F 2 "" H 2350 2950 50  0001 C CNN
F 3 "~" H 2350 2950 50  0001 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R61
U 1 1 62EB5CC9
P 1950 2950
F 0 "R61" H 2020 2996 50  0000 L CNN
F 1 "100K" H 2020 2905 50  0000 L CNN
F 2 "" V 1880 2950 50  0001 C CNN
F 3 "~" H 1950 2950 50  0001 C CNN
	1    1950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2800 1950 2550
Wire Wire Line
	1950 2550 2350 2550
Wire Wire Line
	3150 2550 3250 2550
Connection ~ 3250 2550
$Comp
L power:GND #PWR0153
U 1 1 62EB7348
P 2700 3250
F 0 "#PWR0153" H 2700 3000 50  0001 C CNN
F 1 "GND" H 2705 3077 50  0001 C CNN
F 2 "" H 2700 3250 50  0001 C CNN
F 3 "" H 2700 3250 50  0001 C CNN
	1    2700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 62EB7780
P 2350 3250
F 0 "#PWR0152" H 2350 3000 50  0001 C CNN
F 1 "GND" H 2355 3077 50  0001 C CNN
F 2 "" H 2350 3250 50  0001 C CNN
F 3 "" H 2350 3250 50  0001 C CNN
	1    2350 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 62EB79E4
P 1950 3250
F 0 "#PWR0151" H 1950 3000 50  0001 C CNN
F 1 "GND" H 1955 3077 50  0001 C CNN
F 2 "" H 1950 3250 50  0001 C CNN
F 3 "" H 1950 3250 50  0001 C CNN
	1    1950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3250 1950 3100
Wire Wire Line
	2350 3250 2350 3100
Wire Wire Line
	2350 2800 2350 2550
Connection ~ 2350 2550
Wire Wire Line
	2350 2550 2700 2550
Wire Wire Line
	2700 2550 2700 2800
Connection ~ 2700 2550
Wire Wire Line
	2700 2550 2850 2550
Wire Wire Line
	2700 3100 2700 3250
$Comp
L Device:R R57
U 1 1 62EBA34E
P 1950 2100
F 0 "R57" H 2020 2146 50  0000 L CNN
F 1 "100K" H 2020 2055 50  0000 L CNN
F 2 "" V 1880 2100 50  0001 C CNN
F 3 "~" H 1950 2100 50  0001 C CNN
	1    1950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2550 1950 2250
Connection ~ 1950 2550
$Comp
L power:VCC #PWR0146
U 1 1 62EBB250
P 1950 1650
F 0 "#PWR0146" H 1950 1500 50  0001 C CNN
F 1 "VCC" H 1965 1823 50  0000 C CNN
F 2 "" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1950 1950 1650
$Comp
L Device:R R58
U 1 1 62EBC22D
P 2350 2100
F 0 "R58" H 2420 2146 50  0000 L CNN
F 1 "47K" H 2420 2055 50  0000 L CNN
F 2 "" V 2280 2100 50  0001 C CNN
F 3 "~" H 2350 2100 50  0001 C CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C110
U 1 1 62EBC657
P 2700 2100
F 0 "C110" H 2815 2146 50  0000 L CNN
F 1 "4.7n" H 2815 2055 50  0000 L CNN
F 2 "" H 2738 1950 50  0001 C CNN
F 3 "~" H 2700 2100 50  0001 C CNN
	1    2700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2550 2350 2250
Wire Wire Line
	2350 1950 2350 1600
Wire Wire Line
	2350 1600 2700 1600
Wire Wire Line
	4000 1600 4000 2350
Wire Wire Line
	4000 2350 4250 2350
Wire Wire Line
	2700 2550 2700 2250
Wire Wire Line
	2700 1950 2700 1600
Connection ~ 2700 1600
Wire Wire Line
	2700 1600 4000 1600
$Comp
L Device:C C107
U 1 1 62EC01A5
P 4250 1600
F 0 "C107" V 3998 1600 50  0000 C CNN
F 1 "4.7n" V 4089 1600 50  0000 C CNN
F 2 "" H 4288 1450 50  0001 C CNN
F 3 "~" H 4250 1600 50  0001 C CNN
	1    4250 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R55
U 1 1 62EC0F2F
P 4750 1600
F 0 "R55" V 4543 1600 50  0000 C CNN
F 1 "47K" V 4634 1600 50  0000 C CNN
F 2 "" V 4680 1600 50  0001 C CNN
F 3 "~" H 4750 1600 50  0001 C CNN
	1    4750 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1600 4000 1600
Connection ~ 4000 1600
Wire Wire Line
	4400 1600 4600 1600
Wire Wire Line
	4900 1600 5150 1600
Wire Wire Line
	5150 1600 5150 2450
Wire Wire Line
	5350 2650 5500 2650
Connection ~ 6250 2550
Wire Wire Line
	6250 2550 6100 2550
$Comp
L Transistor_FET:2N7000 Q17
U 1 1 62EC7708
P 7850 2450
F 0 "Q17" V 8099 2450 50  0000 C CNN
F 1 "2N7000" V 8190 2450 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8050 2375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7850 2450 50  0001 L CNN
	1    7850 2450
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q16
U 1 1 62EC8E45
P 7150 2450
F 0 "Q16" V 7399 2450 50  0000 C CNN
F 1 "2N7000" V 7490 2450 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7350 2375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7150 2450 50  0001 L CNN
	1    7150 2450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R60
U 1 1 62ECA784
P 7500 2900
F 0 "R60" H 7570 2946 50  0000 L CNN
F 1 "10K" H 7570 2855 50  0000 L CNN
F 2 "" V 7430 2900 50  0001 C CNN
F 3 "~" H 7500 2900 50  0001 C CNN
	1    7500 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 62ECB46D
P 7500 3150
F 0 "#PWR0150" H 7500 2900 50  0001 C CNN
F 1 "GND" H 7505 2977 50  0001 C CNN
F 2 "" H 7500 3150 50  0001 C CNN
F 3 "" H 7500 3150 50  0001 C CNN
	1    7500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3150 7500 3050
Wire Wire Line
	7650 2550 7500 2550
Wire Wire Line
	7500 2750 7500 2550
Connection ~ 7500 2550
Wire Wire Line
	7500 2550 7350 2550
Text GLabel 8350 2550 2    50   Output ~ 0
CW_TONE
Wire Wire Line
	8350 2550 8050 2550
Wire Wire Line
	7850 2250 7850 1700
Wire Wire Line
	7850 1700 7150 1700
Wire Wire Line
	7150 1700 7150 2250
$Comp
L Device:CP1 C109
U 1 1 62ED2ADC
P 8150 1950
F 0 "C109" H 8265 1996 50  0000 L CNN
F 1 "4.7u" H 8265 1905 50  0000 L CNN
F 2 "" H 8150 1950 50  0001 C CNN
F 3 "~" H 8150 1950 50  0001 C CNN
	1    8150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 62ED3541
P 8150 2250
F 0 "#PWR0148" H 8150 2000 50  0001 C CNN
F 1 "GND" H 8155 2077 50  0001 C CNN
F 2 "" H 8150 2250 50  0001 C CNN
F 3 "" H 8150 2250 50  0001 C CNN
	1    8150 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R56
U 1 1 62ED4001
P 8550 1700
F 0 "R56" V 8343 1700 50  0000 C CNN
F 1 "2.2K" V 8434 1700 50  0000 C CNN
F 2 "" V 8480 1700 50  0001 C CNN
F 3 "~" H 8550 1700 50  0001 C CNN
	1    8550 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1700 8150 1700
Connection ~ 7850 1700
Wire Wire Line
	8150 1700 8150 1800
Connection ~ 8150 1700
Wire Wire Line
	8150 1700 7850 1700
Wire Wire Line
	8150 2250 8150 2100
Text GLabel 8900 1700 2    50   Input ~ 0
ENABLE_CW_TONE
Wire Wire Line
	8900 1700 8700 1700
Wire Wire Line
	5350 3350 6250 3350
Wire Wire Line
	5350 2650 5350 3350
Wire Wire Line
	6250 2550 6250 3350
Text Notes 4400 3650 0    50   ~ 0
700 Hz Wien bridge oscillator + buffer
Wire Wire Line
	6750 2550 6950 2550
Wire Wire Line
	6250 2550 6450 2550
$EndSCHEMATC
