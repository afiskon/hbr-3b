EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
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
L Transistor_BJT:2N3904 Q19
U 1 1 62F2ADB3
P 1900 1750
F 0 "Q19" H 2090 1796 50  0000 L CNN
F 1 "2N3904" H 2090 1705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2100 1675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1900 1750 50  0001 L CNN
	1    1900 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R64
U 1 1 62F2B7C4
P 1400 1750
F 0 "R64" V 1193 1750 50  0000 C CNN
F 1 "4.7K" V 1284 1750 50  0000 C CNN
F 2 "" V 1330 1750 50  0001 C CNN
F 3 "~" H 1400 1750 50  0001 C CNN
	1    1400 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 62F2BEB8
P 2000 2250
F 0 "#PWR0156" H 2000 2000 50  0001 C CNN
F 1 "GND" H 2005 2077 50  0001 C CNN
F 2 "" H 2000 2250 50  0001 C CNN
F 3 "" H 2000 2250 50  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R63
U 1 1 62F2C7AF
P 2000 1100
F 0 "R63" H 2070 1146 50  0000 L CNN
F 1 "10K" H 2070 1055 50  0000 L CNN
F 2 "" V 1930 1100 50  0001 C CNN
F 3 "~" H 2000 1100 50  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0154
U 1 1 62F2CCF0
P 2000 800
F 0 "#PWR0154" H 2000 650 50  0001 C CNN
F 1 "VCC" H 2015 973 50  0000 C CNN
F 2 "" H 2000 800 50  0001 C CNN
F 3 "" H 2000 800 50  0001 C CNN
	1    2000 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF4905 Q18
U 1 1 62F2DB9F
P 2500 1400
F 0 "Q18" H 2705 1354 50  0000 L CNN
F 1 "IRF4905" H 2705 1445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2700 1325 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irf4905.pdf?fileId=5546d462533600a4015355e32165197c" H 2500 1400 50  0001 L CNN
	1    2500 1400
	1    0    0    1   
$EndComp
$Comp
L Device:C C114
U 1 1 62F2ED34
P 2600 1950
F 0 "C114" H 2715 1996 50  0000 L CNN
F 1 "0.1u" H 2715 1905 50  0000 L CNN
F 2 "" H 2638 1800 50  0001 C CNN
F 3 "~" H 2600 1950 50  0001 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 62F2F5B1
P 2600 2250
F 0 "#PWR0157" H 2600 2000 50  0001 C CNN
F 1 "GND" H 2605 2077 50  0001 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Text GLabel 3000 1700 2    50   Output ~ 0
VCC_TX
Text GLabel 1050 1750 0    50   Input ~ 0
ENABLE_TX
$Comp
L power:VCC #PWR0155
U 1 1 62F3181D
P 2600 800
F 0 "#PWR0155" H 2600 650 50  0001 C CNN
F 1 "VCC" H 2615 973 50  0000 C CNN
F 2 "" H 2600 800 50  0001 C CNN
F 3 "" H 2600 800 50  0001 C CNN
	1    2600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1750 1250 1750
Wire Wire Line
	1550 1750 1700 1750
Wire Wire Line
	2000 2250 2000 1950
Wire Wire Line
	2000 1550 2000 1400
Wire Wire Line
	2000 950  2000 800 
Wire Wire Line
	2600 1200 2600 800 
Wire Wire Line
	2600 1600 2600 1700
Wire Wire Line
	2600 2100 2600 2250
Wire Wire Line
	3000 1700 2600 1700
Connection ~ 2600 1700
Wire Wire Line
	2600 1700 2600 1800
Wire Wire Line
	2300 1400 2000 1400
Connection ~ 2000 1400
Wire Wire Line
	2000 1400 2000 1250
Text GLabel 2500 3050 0    50   Input ~ 0
ENABLE_CW_TONE
$Comp
L Transistor_BJT:2N3904 Q21
U 1 1 62F3680A
P 3300 3050
F 0 "Q21" H 3490 3096 50  0000 L CNN
F 1 "2N3904" H 3490 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3500 2975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3300 3050 50  0001 L CNN
	1    3300 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R67
U 1 1 62F36814
P 2800 3050
F 0 "R67" V 2593 3050 50  0000 C CNN
F 1 "4.7K" V 2684 3050 50  0000 C CNN
F 2 "" V 2730 3050 50  0001 C CNN
F 3 "~" H 2800 3050 50  0001 C CNN
	1    2800 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 62F3681E
P 3400 3550
F 0 "#PWR0159" H 3400 3300 50  0001 C CNN
F 1 "GND" H 3405 3377 50  0001 C CNN
F 2 "" H 3400 3550 50  0001 C CNN
F 3 "" H 3400 3550 50  0001 C CNN
	1    3400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3050 3100 3050
Wire Wire Line
	3400 3550 3400 3250
Wire Wire Line
	2650 3050 2500 3050
$Comp
L Device:R R66
U 1 1 62F3881D
P 3800 2700
F 0 "R66" V 3593 2700 50  0000 C CNN
F 1 "1K" V 3684 2700 50  0000 C CNN
F 2 "" V 3730 2700 50  0001 C CNN
F 3 "~" H 3800 2700 50  0001 C CNN
	1    3800 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R65
U 1 1 62F39012
P 4200 2250
F 0 "R65" H 4270 2296 50  0000 L CNN
F 1 "470" H 4270 2205 50  0000 L CNN
F 2 "" V 4130 2250 50  0001 C CNN
F 3 "~" H 4200 2250 50  0001 C CNN
	1    4200 2250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3906 Q20
U 1 1 62F39AA9
P 4600 2700
F 0 "Q20" H 4790 2654 50  0000 L CNN
F 1 "2N3906" H 4790 2745 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4800 2625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 4600 2700 50  0001 L CNN
	1    4600 2700
	1    0    0    1   
$EndComp
Text GLabel 3950 1700 0    50   Input ~ 0
VCC_TX
Wire Wire Line
	3400 2850 3400 2700
Wire Wire Line
	3400 2700 3650 2700
Wire Wire Line
	3950 2700 4200 2700
Wire Wire Line
	4700 1700 4700 2500
Wire Wire Line
	3950 1700 4200 1700
Wire Wire Line
	4200 1700 4200 2100
Connection ~ 4200 1700
Wire Wire Line
	4200 1700 4700 1700
Wire Wire Line
	4200 2400 4200 2700
Connection ~ 4200 2700
Wire Wire Line
	4200 2700 4400 2700
$Comp
L Device:CP1 C115
U 1 1 62F3CAD4
P 4450 3250
F 0 "C115" V 4702 3250 50  0000 C CNN
F 1 "1u" V 4611 3250 50  0000 C CNN
F 2 "" H 4450 3250 50  0001 C CNN
F 3 "~" H 4450 3250 50  0001 C CNN
	1    4450 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3250 4200 2700
Wire Wire Line
	4200 3250 4300 3250
Wire Wire Line
	4600 3250 4700 3250
Wire Wire Line
	4700 3250 4700 2900
$Comp
L Device:C C116
U 1 1 62F3E4D4
P 5150 3500
F 0 "C116" H 5265 3546 50  0000 L CNN
F 1 "0.1u" H 5265 3455 50  0000 L CNN
F 2 "" H 5188 3350 50  0001 C CNN
F 3 "~" H 5150 3500 50  0001 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 62F3EBA3
P 5150 3800
F 0 "#PWR0160" H 5150 3550 50  0001 C CNN
F 1 "GND" H 5155 3627 50  0001 C CNN
F 2 "" H 5150 3800 50  0001 C CNN
F 3 "" H 5150 3800 50  0001 C CNN
	1    5150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3250 5150 3250
Wire Wire Line
	5150 3250 5150 3350
Connection ~ 4700 3250
Wire Wire Line
	5150 3650 5150 3800
Text Notes 3800 1550 0    50   ~ 0
VCC_TX is powered off\nin CW trainer mode
$Comp
L Device:C C?
U 1 1 62F70F3B
P 2500 5850
AR Path="/62CCF0D3/62F70F3B" Ref="C?"  Part="1" 
AR Path="/62CCEF11/62F70F3B" Ref="C?"  Part="1" 
AR Path="/62F29452/62F70F3B" Ref="C123"  Part="1" 
F 0 "C123" V 2248 5850 50  0000 C CNN
F 1 "0.1u" V 2339 5850 50  0000 C CNN
F 2 "" H 2538 5700 50  0001 C CNN
F 3 "~" H 2500 5850 50  0001 C CNN
	1    2500 5850
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 62F70F41
P 3400 5850
AR Path="/62C0C022/62F70F41" Ref="Q?"  Part="1" 
AR Path="/62CCF0D3/62F70F41" Ref="Q?"  Part="1" 
AR Path="/62F29452/62F70F41" Ref="Q23"  Part="1" 
F 0 "Q23" H 3590 5896 50  0000 L CNN
F 1 "2N3904" H 3590 5805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3600 5775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3400 5850 50  0001 L CNN
	1    3400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62F70F47
P 2900 6200
AR Path="/62C0C022/62F70F47" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62F70F47" Ref="R?"  Part="1" 
AR Path="/62F29452/62F70F47" Ref="R72"  Part="1" 
F 0 "R72" H 2970 6246 50  0000 L CNN
F 1 "1K" H 2970 6155 50  0000 L CNN
F 2 "" V 2830 6200 50  0001 C CNN
F 3 "~" H 2900 6200 50  0001 C CNN
	1    2900 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62F70F4D
P 3500 6500
AR Path="/62C0C022/62F70F4D" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62F70F4D" Ref="R?"  Part="1" 
AR Path="/62F29452/62F70F4D" Ref="R73"  Part="1" 
F 0 "R73" H 3570 6546 50  0000 L CNN
F 1 "68" H 3570 6455 50  0000 L CNN
F 2 "" V 3430 6500 50  0001 C CNN
F 3 "~" H 3500 6500 50  0001 C CNN
	1    3500 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62F70F53
P 3950 6500
AR Path="/62C0C022/62F70F53" Ref="C?"  Part="1" 
AR Path="/62CCF0D3/62F70F53" Ref="C?"  Part="1" 
AR Path="/62F29452/62F70F53" Ref="C124"  Part="1" 
F 0 "C124" H 4065 6546 50  0000 L CNN
F 1 "0.1u" H 4065 6455 50  0000 L CNN
F 2 "" H 3988 6350 50  0001 C CNN
F 3 "~" H 3950 6500 50  0001 C CNN
	1    3950 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62F70F59
P 3950 6950
AR Path="/62C0C022/62F70F59" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62F70F59" Ref="R?"  Part="1" 
AR Path="/62F29452/62F70F59" Ref="R74"  Part="1" 
F 0 "R74" H 4020 6996 50  0000 L CNN
F 1 "6" H 4020 6905 50  0000 L CNN
F 2 "" V 3880 6950 50  0001 C CNN
F 3 "~" H 3950 6950 50  0001 C CNN
	1    3950 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F70F5F
P 2900 6500
AR Path="/62C0C022/62F70F5F" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62F70F5F" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62F70F5F" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 2900 6250 50  0001 C CNN
F 1 "GND" H 2905 6327 50  0001 C CNN
F 2 "" H 2900 6500 50  0001 C CNN
F 3 "" H 2900 6500 50  0001 C CNN
	1    2900 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F70F65
P 3500 6750
AR Path="/62C0C022/62F70F65" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62F70F65" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62F70F65" Ref="#PWR0167"  Part="1" 
F 0 "#PWR0167" H 3500 6500 50  0001 C CNN
F 1 "GND" H 3505 6577 50  0001 C CNN
F 2 "" H 3500 6750 50  0001 C CNN
F 3 "" H 3500 6750 50  0001 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F70F6B
P 3950 7200
AR Path="/62C0C022/62F70F6B" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62F70F6B" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62F70F6B" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0168" H 3950 6950 50  0001 C CNN
F 1 "GND" H 3955 7027 50  0001 C CNN
F 2 "" H 3950 7200 50  0001 C CNN
F 3 "" H 3950 7200 50  0001 C CNN
	1    3950 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62F70F71
P 2900 5500
AR Path="/62C0C022/62F70F71" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62F70F71" Ref="R?"  Part="1" 
AR Path="/62F29452/62F70F71" Ref="R71"  Part="1" 
F 0 "R71" H 2970 5546 50  0000 L CNN
F 1 "1.3K" H 2970 5455 50  0000 L CNN
F 2 "" V 2830 5500 50  0001 C CNN
F 3 "~" H 2900 5500 50  0001 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62F70F77
P 3200 5100
AR Path="/62C0C022/62F70F77" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62F70F77" Ref="R?"  Part="1" 
AR Path="/62F29452/62F70F77" Ref="R70"  Part="1" 
F 0 "R70" V 2993 5100 50  0000 C CNN
F 1 "3.3K" V 3084 5100 50  0000 C CNN
F 2 "" V 3130 5100 50  0001 C CNN
F 3 "~" H 3200 5100 50  0001 C CNN
	1    3200 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 62F70F7D
P 3200 4700
AR Path="/62C0C022/62F70F7D" Ref="C?"  Part="1" 
AR Path="/62CCF0D3/62F70F7D" Ref="C?"  Part="1" 
AR Path="/62F29452/62F70F7D" Ref="C121"  Part="1" 
F 0 "C121" V 2948 4700 50  0000 C CNN
F 1 "0.1u" V 3039 4700 50  0000 C CNN
F 2 "" H 3238 4550 50  0001 C CNN
F 3 "~" H 3200 4700 50  0001 C CNN
	1    3200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 5650 2900 5850
Connection ~ 2900 5850
Wire Wire Line
	2900 5850 2900 6050
Wire Wire Line
	2900 6350 2900 6500
Wire Wire Line
	3500 6050 3500 6200
Wire Wire Line
	3500 6650 3500 6750
Wire Wire Line
	3950 6350 3950 6200
Wire Wire Line
	3950 6200 3500 6200
Connection ~ 3500 6200
Wire Wire Line
	3500 6200 3500 6350
Wire Wire Line
	3950 6800 3950 6650
Wire Wire Line
	3950 7200 3950 7100
Wire Wire Line
	3500 5650 3500 5100
Wire Wire Line
	3500 4700 3350 4700
Wire Wire Line
	3350 5100 3500 5100
Connection ~ 3500 5100
Wire Wire Line
	3500 5100 3500 4700
$Comp
L Transformer:PA0184NL T?
U 1 1 62F70F94
P 4000 4900
AR Path="/62C0C022/62F70F94" Ref="T?"  Part="1" 
AR Path="/62CCF0D3/62F70F94" Ref="T?"  Part="1" 
AR Path="/62F29452/62F70F94" Ref="T6"  Part="1" 
F 0 "T6" H 4000 5189 50  0000 C CNN
F 1 "FT37-43" H 4000 5190 50  0001 C CNN
F 2 "Transformer_SMD:Pulse_PA2007NL" H 4000 4900 50  0001 C CNN
F 3 "" H 3700 4900 50  0001 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
Text Notes 3600 5250 0    50   ~ 0
10T bifilar @ FT37-43
$Comp
L Device:C C?
U 1 1 62F70F9B
P 5700 5100
AR Path="/62C0C022/62F70F9B" Ref="C?"  Part="1" 
AR Path="/62CCF0D3/62F70F9B" Ref="C?"  Part="1" 
AR Path="/62F29452/62F70F9B" Ref="C122"  Part="1" 
F 0 "C122" V 5448 5100 50  0000 C CNN
F 1 "0.1u" V 5539 5100 50  0000 C CNN
F 2 "" H 5738 4950 50  0001 C CNN
F 3 "~" H 5700 5100 50  0001 C CNN
	1    5700 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 4700 3650 4700
Wire Wire Line
	3650 4700 3650 4450
Wire Wire Line
	3650 4450 4400 4450
Wire Wire Line
	4400 4450 4400 5100
Connection ~ 4400 5100
Wire Wire Line
	4400 5100 4200 5100
Wire Wire Line
	4200 4700 4300 4700
Wire Wire Line
	4300 3850 4700 3850
$Comp
L Device:R R?
U 1 1 62F70FB7
P 4700 3550
AR Path="/62C0C022/62F70FB7" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62F70FB7" Ref="R?"  Part="1" 
AR Path="/62F29452/62F70FB7" Ref="R68"  Part="1" 
F 0 "R68" H 4770 3596 50  0000 L CNN
F 1 "22" H 4770 3505 50  0000 L CNN
F 2 "" V 4630 3550 50  0001 C CNN
F 3 "~" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62F70FBD
P 4700 4100
AR Path="/62C0C022/62F70FBD" Ref="C?"  Part="1" 
AR Path="/62CCF0D3/62F70FBD" Ref="C?"  Part="1" 
AR Path="/62F29452/62F70FBD" Ref="C119"  Part="1" 
F 0 "C119" H 4815 4146 50  0000 L CNN
F 1 "0.1u" H 4815 4055 50  0000 L CNN
F 2 "" H 4738 3950 50  0001 C CNN
F 3 "~" H 4700 4100 50  0001 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4450 4700 4250
Wire Wire Line
	4700 3950 4700 3850
Wire Wire Line
	4700 3400 4700 3250
Wire Wire Line
	4700 3850 4700 3700
Wire Wire Line
	2900 4700 2900 5100
Wire Wire Line
	3200 5850 2900 5850
Wire Wire Line
	3050 5100 2900 5100
Connection ~ 2900 5100
Wire Wire Line
	2900 5100 2900 5350
Wire Wire Line
	2900 4700 3050 4700
Wire Wire Line
	3800 5100 3500 5100
Wire Wire Line
	2900 5850 2650 5850
Text GLabel 1850 5850 0    50   Input ~ 0
CW_OUT
$Comp
L Device:Q_NMOS_GSD Q22
U 1 1 62F92B3D
P 7450 5100
F 0 "Q22" H 7655 5146 50  0000 L CNN
F 1 "RD15HVF1" H 7655 5055 50  0000 L CNN
F 2 "" H 7650 5200 50  0001 C CNN
F 3 "~" H 7450 5100 50  0001 C CNN
	1    7450 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F959A4
P 7550 5500
AR Path="/62C0C022/62F959A4" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62F959A4" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62F959A4" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 7550 5250 50  0001 C CNN
F 1 "GND" H 7555 5327 50  0001 C CNN
F 2 "" H 7550 5500 50  0001 C CNN
F 3 "" H 7550 5500 50  0001 C CNN
	1    7550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5500 7550 5300
$Comp
L Transformer:PA0184NL T?
U 1 1 62F973D6
P 8000 3950
AR Path="/62C0C022/62F973D6" Ref="T?"  Part="1" 
AR Path="/62CCF0D3/62F973D6" Ref="T?"  Part="1" 
AR Path="/62F29452/62F973D6" Ref="T5"  Part="1" 
F 0 "T5" H 8000 4239 50  0000 C CNN
F 1 "FT37-43" H 8000 4240 50  0001 C CNN
F 2 "Transformer_SMD:Pulse_PA2007NL" H 8000 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    8000 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62F9ACF0
P 8600 4150
AR Path="/62C0C022/62F9ACF0" Ref="C?"  Part="1" 
AR Path="/62CCF0D3/62F9ACF0" Ref="C?"  Part="1" 
AR Path="/62F29452/62F9ACF0" Ref="C120"  Part="1" 
F 0 "C120" V 8348 4150 50  0000 C CNN
F 1 "0.1u" V 8439 4150 50  0000 C CNN
F 2 "" H 8638 4000 50  0001 C CNN
F 3 "~" H 8600 4150 50  0001 C CNN
	1    8600 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 3750 8350 3750
Wire Wire Line
	8350 3750 8350 3500
Wire Wire Line
	8350 3500 7550 3500
Wire Wire Line
	7550 3500 7550 4150
Wire Wire Line
	7800 4150 7550 4150
Wire Wire Line
	8200 4150 8450 4150
Text Notes 7600 4350 0    50   ~ 0
9T bifilar @ T50-43
$Comp
L Device:R R?
U 1 1 62FA54A8
P 7050 4050
AR Path="/62C0C022/62FA54A8" Ref="R?"  Part="1" 
AR Path="/62CCF0D3/62FA54A8" Ref="R?"  Part="1" 
AR Path="/62F29452/62FA54A8" Ref="R69"  Part="1" 
F 0 "R69" H 7120 4096 50  0000 L CNN
F 1 "2.2K" H 7120 4005 50  0000 L CNN
F 2 "" V 6980 4050 50  0001 C CNN
F 3 "~" H 7050 4050 50  0001 C CNN
	1    7050 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS2
U 1 1 62FA6457
P 7900 5000
F 0 "HS2" H 8042 5075 50  0000 L CNN
F 1 "Heatsink" H 8042 5030 50  0001 L CNN
F 2 "" H 7912 5000 50  0001 C CNN
F 3 "~" H 7912 5000 50  0001 C CNN
	1    7900 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV3
U 1 1 62FA8415
P 7050 4550
F 0 "RV3" H 6980 4596 50  0000 R CNN
F 1 "10K" H 6980 4505 50  0000 R CNN
F 2 "" H 7050 4550 50  0001 C CNN
F 3 "~" H 7050 4550 50  0001 C CNN
	1    7050 4550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62F70FAB
P 4700 4450
AR Path="/62C0C022/62F70FAB" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62F70FAB" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62F70FAB" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 4700 4200 50  0001 C CNN
F 1 "GND" H 4705 4277 50  0001 C CNN
F 2 "" H 4700 4450 50  0001 C CNN
F 3 "" H 4700 4450 50  0001 C CNN
	1    4700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62FB1B1D
P 7050 4850
AR Path="/62C0C022/62FB1B1D" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62FB1B1D" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62FB1B1D" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 7050 4600 50  0001 C CNN
F 1 "GND" H 7055 4677 50  0001 C CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4850 7050 4700
Wire Wire Line
	7050 4400 7050 4200
Wire Wire Line
	7800 3750 7050 3750
Wire Wire Line
	7050 3750 7050 3900
$Comp
L Device:C C118
U 1 1 62FB8C5E
P 6600 4050
F 0 "C118" H 6715 4096 50  0000 L CNN
F 1 "0.1u" H 6715 4005 50  0000 L CNN
F 2 "" H 6638 3900 50  0001 C CNN
F 3 "~" H 6600 4050 50  0001 C CNN
	1    6600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C117
U 1 1 62FB9685
P 6150 4050
F 0 "C117" H 6265 4096 50  0000 L CNN
F 1 "220u" H 6265 4005 50  0000 L CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "~" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62FB9AA2
P 6600 4300
AR Path="/62C0C022/62FB9AA2" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62FB9AA2" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62FB9AA2" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 6600 4050 50  0001 C CNN
F 1 "GND" H 6605 4127 50  0001 C CNN
F 2 "" H 6600 4300 50  0001 C CNN
F 3 "" H 6600 4300 50  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62FB9E33
P 6150 4300
AR Path="/62C0C022/62FB9E33" Ref="#PWR?"  Part="1" 
AR Path="/62CCF0D3/62FB9E33" Ref="#PWR?"  Part="1" 
AR Path="/62F29452/62FB9E33" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 6150 4050 50  0001 C CNN
F 1 "GND" H 6155 4127 50  0001 C CNN
F 2 "" H 6150 4300 50  0001 C CNN
F 3 "" H 6150 4300 50  0001 C CNN
	1    6150 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0158
U 1 1 62FBAF3B
P 6150 3300
F 0 "#PWR0158" H 6150 3150 50  0001 C CNN
F 1 "VCC" H 6165 3473 50  0000 C CNN
F 2 "" H 6150 3300 50  0001 C CNN
F 3 "" H 6150 3300 50  0001 C CNN
	1    6150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4200 6150 4300
Wire Wire Line
	7050 3750 6600 3750
Connection ~ 7050 3750
Connection ~ 6150 3750
Wire Wire Line
	6150 3750 6150 3900
Wire Wire Line
	6150 3300 6150 3750
Wire Wire Line
	6600 3900 6600 3750
Connection ~ 6600 3750
Wire Wire Line
	6600 3750 6150 3750
Wire Wire Line
	6600 4300 6600 4200
Wire Wire Line
	4300 3850 4300 4700
Connection ~ 4700 3850
Wire Wire Line
	6600 5100 6600 4550
Wire Wire Line
	6600 4550 6900 4550
Wire Wire Line
	6600 5100 7250 5100
Wire Wire Line
	4400 5100 5550 5100
Wire Wire Line
	5850 5100 6600 5100
Connection ~ 6600 5100
Wire Wire Line
	1850 5850 2350 5850
Wire Wire Line
	7550 4900 7550 4150
Connection ~ 7550 4150
Text GLabel 9000 4150 2    50   Output ~ 0
LPFS_IN
Wire Wire Line
	9000 4150 8750 4150
Text Notes 7750 5600 0    50   ~ 0
This is a class C power amplifier.\nRD15 should be barely open\nwhen there is no input signal.
$EndSCHEMATC