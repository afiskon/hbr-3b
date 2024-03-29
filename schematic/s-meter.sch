EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
Title "HBR/3B by R2AUK ::: https://eax.me/hbr-3b-transceiver/"
Date "2022-07-17"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 8500 3750 2    50   Output ~ 0
S_METER_OUT
Text GLabel 3200 4000 0    50   Input ~ 0
S_METER_IN
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 6312A1DF
P 3950 4000
AR Path="/62C0C022/6312A1DF" Ref="Q?"  Part="1" 
AR Path="/62CCEF11/6312A1DF" Ref="Q?"  Part="1" 
AR Path="/63102909/6312A1DF" Ref="Q24"  Part="1" 
F 0 "Q24" H 4140 4046 50  0000 L CNN
F 1 "2N3904" H 4140 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4150 3925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3950 4000 50  0001 L CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6312A1E5
P 3600 4350
AR Path="/62C0C022/6312A1E5" Ref="R?"  Part="1" 
AR Path="/62CCEF11/6312A1E5" Ref="R?"  Part="1" 
AR Path="/63102909/6312A1E5" Ref="R84"  Part="1" 
F 0 "R84" H 3670 4396 50  0000 L CNN
F 1 "47K" H 3670 4305 50  0000 L CNN
F 2 "" V 3530 4350 50  0001 C CNN
F 3 "~" H 3600 4350 50  0001 C CNN
	1    3600 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6312A1EB
P 3600 3600
AR Path="/62C0C022/6312A1EB" Ref="R?"  Part="1" 
AR Path="/62CCEF11/6312A1EB" Ref="R?"  Part="1" 
AR Path="/63102909/6312A1EB" Ref="R81"  Part="1" 
F 0 "R81" H 3670 3646 50  0000 L CNN
F 1 "100K" H 3670 3555 50  0000 L CNN
F 2 "" V 3530 3600 50  0001 C CNN
F 3 "~" H 3600 3600 50  0001 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6312A1F1
P 3600 4650
AR Path="/62C0C022/6312A1F1" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/6312A1F1" Ref="#PWR?"  Part="1" 
AR Path="/63102909/6312A1F1" Ref="#PWR0188"  Part="1" 
F 0 "#PWR0188" H 3600 4400 50  0001 C CNN
F 1 "GND" H 3605 4477 50  0001 C CNN
F 2 "" H 3600 4650 50  0001 C CNN
F 3 "" H 3600 4650 50  0001 C CNN
	1    3600 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6312A1F7
P 4050 3500
AR Path="/62C0C022/6312A1F7" Ref="R?"  Part="1" 
AR Path="/62CCEF11/6312A1F7" Ref="R?"  Part="1" 
AR Path="/63102909/6312A1F7" Ref="R79"  Part="1" 
F 0 "R79" H 4120 3546 50  0000 L CNN
F 1 "2.2K" H 4120 3455 50  0000 L CNN
F 2 "" V 3980 3500 50  0001 C CNN
F 3 "~" H 4050 3500 50  0001 C CNN
	1    4050 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6312A1FD
P 4050 4650
AR Path="/62C0C022/6312A1FD" Ref="R?"  Part="1" 
AR Path="/62CCEF11/6312A1FD" Ref="R?"  Part="1" 
AR Path="/63102909/6312A1FD" Ref="R86"  Part="1" 
F 0 "R86" H 4120 4696 50  0000 L CNN
F 1 "1K" H 4120 4605 50  0000 L CNN
F 2 "" V 3980 4650 50  0001 C CNN
F 3 "~" H 4050 4650 50  0001 C CNN
	1    4050 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6312A203
P 4050 4900
AR Path="/62C0C022/6312A203" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/6312A203" Ref="#PWR?"  Part="1" 
AR Path="/63102909/6312A203" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 4050 4650 50  0001 C CNN
F 1 "GND" H 4055 4727 50  0001 C CNN
F 2 "" H 4050 4900 50  0001 C CNN
F 3 "" H 4050 4900 50  0001 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6312A209
P 4400 4650
AR Path="/62CCEF11/6312A209" Ref="C?"  Part="1" 
AR Path="/63102909/6312A209" Ref="C130"  Part="1" 
F 0 "C130" H 4515 4696 50  0000 L CNN
F 1 "470u" H 4515 4605 50  0000 L CNN
F 2 "" H 4400 4650 50  0001 C CNN
F 3 "~" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6312A20F
P 4400 4900
AR Path="/62C0C022/6312A20F" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/6312A20F" Ref="#PWR?"  Part="1" 
AR Path="/63102909/6312A20F" Ref="#PWR0191"  Part="1" 
F 0 "#PWR0191" H 4400 4650 50  0001 C CNN
F 1 "GND" H 4405 4727 50  0001 C CNN
F 2 "" H 4400 4900 50  0001 C CNN
F 3 "" H 4400 4900 50  0001 C CNN
	1    4400 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6312A215
P 4350 3150
AR Path="/62CCEF11/6312A215" Ref="C?"  Part="1" 
AR Path="/63102909/6312A215" Ref="C125"  Part="1" 
F 0 "C125" V 4602 3150 50  0000 C CNN
F 1 "100u" V 4511 3150 50  0000 C CNN
F 2 "" H 4350 3150 50  0001 C CNN
F 3 "~" H 4350 3150 50  0001 C CNN
	1    4350 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6312A21B
P 4050 2750
AR Path="/62C0C022/6312A21B" Ref="R?"  Part="1" 
AR Path="/62CCEF11/6312A21B" Ref="R?"  Part="1" 
AR Path="/63102909/6312A21B" Ref="R77"  Part="1" 
F 0 "R77" H 4120 2796 50  0000 L CNN
F 1 "100" H 4120 2705 50  0000 L CNN
F 2 "" V 3980 2750 50  0001 C CNN
F 3 "~" H 4050 2750 50  0001 C CNN
	1    4050 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6312A222
P 4650 3250
AR Path="/62C0C022/6312A222" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/6312A222" Ref="#PWR?"  Part="1" 
AR Path="/63102909/6312A222" Ref="#PWR0182"  Part="1" 
F 0 "#PWR0182" H 4650 3000 50  0001 C CNN
F 1 "GND" H 4655 3077 50  0001 C CNN
F 2 "" H 4650 3250 50  0001 C CNN
F 3 "" H 4650 3250 50  0001 C CNN
	1    4650 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 6312A228
P 4850 4000
AR Path="/62CCEF11/6312A228" Ref="C?"  Part="1" 
AR Path="/63102909/6312A228" Ref="C128"  Part="1" 
F 0 "C128" V 5102 4000 50  0000 C CNN
F 1 "22u" V 5011 4000 50  0000 C CNN
F 2 "" H 4850 4000 50  0001 C CNN
F 3 "~" H 4850 4000 50  0001 C CNN
	1    4850 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 4000 3600 4200
Connection ~ 3600 4000
Wire Wire Line
	3600 4000 3750 4000
Wire Wire Line
	3600 4500 3600 4650
Wire Wire Line
	4050 3800 4050 3750
Wire Wire Line
	4050 3350 4050 3150
Wire Wire Line
	4050 2600 4050 2450
Connection ~ 4050 3150
Wire Wire Line
	4050 3150 4050 2900
Wire Wire Line
	4500 3150 4650 3150
Wire Wire Line
	4650 3150 4650 3250
Connection ~ 4050 3750
Wire Wire Line
	4050 3750 4050 3650
Wire Wire Line
	4050 4500 4050 4350
Wire Wire Line
	4050 4900 4050 4800
Wire Wire Line
	4400 4900 4400 4800
Wire Wire Line
	4400 4500 4400 4350
Wire Wire Line
	4400 4350 4050 4350
Connection ~ 4050 4350
Wire Wire Line
	4050 4350 4050 4200
Wire Wire Line
	3600 4000 3600 3750
Wire Wire Line
	4200 3150 4050 3150
Wire Wire Line
	3600 3450 3600 3150
Wire Wire Line
	3600 3150 4050 3150
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 631478BB
P 5650 4000
AR Path="/62C0C022/631478BB" Ref="Q?"  Part="1" 
AR Path="/62CCEF11/631478BB" Ref="Q?"  Part="1" 
AR Path="/63102909/631478BB" Ref="Q25"  Part="1" 
F 0 "Q25" H 5840 4046 50  0000 L CNN
F 1 "2N3904" H 5840 3955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5850 3925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5650 4000 50  0001 L CNN
	1    5650 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 631478C1
P 5300 4350
AR Path="/62C0C022/631478C1" Ref="R?"  Part="1" 
AR Path="/62CCEF11/631478C1" Ref="R?"  Part="1" 
AR Path="/63102909/631478C1" Ref="R85"  Part="1" 
F 0 "R85" H 5370 4396 50  0000 L CNN
F 1 "47K" H 5370 4305 50  0000 L CNN
F 2 "" V 5230 4350 50  0001 C CNN
F 3 "~" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 631478C7
P 5300 3600
AR Path="/62C0C022/631478C7" Ref="R?"  Part="1" 
AR Path="/62CCEF11/631478C7" Ref="R?"  Part="1" 
AR Path="/63102909/631478C7" Ref="R82"  Part="1" 
F 0 "R82" H 5370 3646 50  0000 L CNN
F 1 "100K" H 5370 3555 50  0000 L CNN
F 2 "" V 5230 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 631478CD
P 5300 4650
AR Path="/62C0C022/631478CD" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/631478CD" Ref="#PWR?"  Part="1" 
AR Path="/63102909/631478CD" Ref="#PWR0189"  Part="1" 
F 0 "#PWR0189" H 5300 4400 50  0001 C CNN
F 1 "GND" H 5305 4477 50  0001 C CNN
F 2 "" H 5300 4650 50  0001 C CNN
F 3 "" H 5300 4650 50  0001 C CNN
	1    5300 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 631478D3
P 5750 3500
AR Path="/62C0C022/631478D3" Ref="R?"  Part="1" 
AR Path="/62CCEF11/631478D3" Ref="R?"  Part="1" 
AR Path="/63102909/631478D3" Ref="R80"  Part="1" 
F 0 "R80" H 5820 3546 50  0000 L CNN
F 1 "2.2K" H 5820 3455 50  0000 L CNN
F 2 "" V 5680 3500 50  0001 C CNN
F 3 "~" H 5750 3500 50  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 631478D9
P 5750 4650
AR Path="/62C0C022/631478D9" Ref="R?"  Part="1" 
AR Path="/62CCEF11/631478D9" Ref="R?"  Part="1" 
AR Path="/63102909/631478D9" Ref="R87"  Part="1" 
F 0 "R87" H 5820 4696 50  0000 L CNN
F 1 "1K" H 5820 4605 50  0000 L CNN
F 2 "" V 5680 4650 50  0001 C CNN
F 3 "~" H 5750 4650 50  0001 C CNN
	1    5750 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 631478DF
P 5750 4900
AR Path="/62C0C022/631478DF" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/631478DF" Ref="#PWR?"  Part="1" 
AR Path="/63102909/631478DF" Ref="#PWR0192"  Part="1" 
F 0 "#PWR0192" H 5750 4650 50  0001 C CNN
F 1 "GND" H 5755 4727 50  0001 C CNN
F 2 "" H 5750 4900 50  0001 C CNN
F 3 "" H 5750 4900 50  0001 C CNN
	1    5750 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 631478E5
P 6100 4650
AR Path="/62CCEF11/631478E5" Ref="C?"  Part="1" 
AR Path="/63102909/631478E5" Ref="C131"  Part="1" 
F 0 "C131" H 6215 4696 50  0000 L CNN
F 1 "470u" H 6215 4605 50  0000 L CNN
F 2 "" H 6100 4650 50  0001 C CNN
F 3 "~" H 6100 4650 50  0001 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 631478EB
P 6100 4900
AR Path="/62C0C022/631478EB" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/631478EB" Ref="#PWR?"  Part="1" 
AR Path="/63102909/631478EB" Ref="#PWR0193"  Part="1" 
F 0 "#PWR0193" H 6100 4650 50  0001 C CNN
F 1 "GND" H 6105 4727 50  0001 C CNN
F 2 "" H 6100 4900 50  0001 C CNN
F 3 "" H 6100 4900 50  0001 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 631478F1
P 6050 3150
AR Path="/62CCEF11/631478F1" Ref="C?"  Part="1" 
AR Path="/63102909/631478F1" Ref="C126"  Part="1" 
F 0 "C126" V 6302 3150 50  0000 C CNN
F 1 "100u" V 6211 3150 50  0000 C CNN
F 2 "" H 6050 3150 50  0001 C CNN
F 3 "~" H 6050 3150 50  0001 C CNN
	1    6050 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 631478F7
P 5750 2750
AR Path="/62C0C022/631478F7" Ref="R?"  Part="1" 
AR Path="/62CCEF11/631478F7" Ref="R?"  Part="1" 
AR Path="/63102909/631478F7" Ref="R78"  Part="1" 
F 0 "R78" H 5820 2796 50  0000 L CNN
F 1 "100" H 5820 2705 50  0000 L CNN
F 2 "" V 5680 2750 50  0001 C CNN
F 3 "~" H 5750 2750 50  0001 C CNN
	1    5750 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 631478FE
P 6350 3250
AR Path="/62C0C022/631478FE" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/631478FE" Ref="#PWR?"  Part="1" 
AR Path="/63102909/631478FE" Ref="#PWR0183"  Part="1" 
F 0 "#PWR0183" H 6350 3000 50  0001 C CNN
F 1 "GND" H 6355 3077 50  0001 C CNN
F 2 "" H 6350 3250 50  0001 C CNN
F 3 "" H 6350 3250 50  0001 C CNN
	1    6350 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 63147904
P 6200 3750
AR Path="/62CCEF11/63147904" Ref="C?"  Part="1" 
AR Path="/63102909/63147904" Ref="C127"  Part="1" 
F 0 "C127" V 6452 3750 50  0000 C CNN
F 1 "22u" V 6361 3750 50  0000 C CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "~" H 6200 3750 50  0001 C CNN
	1    6200 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 4000 5300 4200
Connection ~ 5300 4000
Wire Wire Line
	5300 4000 5450 4000
Wire Wire Line
	5300 4500 5300 4650
Wire Wire Line
	5750 3800 5750 3750
Wire Wire Line
	5750 3350 5750 3150
Wire Wire Line
	5750 2600 5750 2450
Connection ~ 5750 3150
Wire Wire Line
	5750 3150 5750 2900
Wire Wire Line
	6200 3150 6350 3150
Wire Wire Line
	6350 3150 6350 3250
Wire Wire Line
	6050 3750 5750 3750
Connection ~ 5750 3750
Wire Wire Line
	5750 3750 5750 3650
Wire Wire Line
	5750 4500 5750 4350
Wire Wire Line
	5750 4900 5750 4800
Wire Wire Line
	6100 4900 6100 4800
Wire Wire Line
	6100 4500 6100 4350
Wire Wire Line
	6100 4350 5750 4350
Connection ~ 5750 4350
Wire Wire Line
	5750 4350 5750 4200
Wire Wire Line
	5300 4000 5300 3750
Wire Wire Line
	5900 3150 5750 3150
Wire Wire Line
	5300 3450 5300 3150
Wire Wire Line
	5300 3150 5750 3150
Wire Wire Line
	3200 4000 3600 4000
Wire Wire Line
	4700 4000 4550 4000
Wire Wire Line
	4550 4000 4550 3750
Wire Wire Line
	4050 3750 4550 3750
Wire Wire Line
	5000 4000 5300 4000
$Comp
L power:VCC #PWR0180
U 1 1 6314DDDD
P 4050 2450
F 0 "#PWR0180" H 4050 2300 50  0001 C CNN
F 1 "VCC" H 4065 2623 50  0000 C CNN
F 2 "" H 4050 2450 50  0001 C CNN
F 3 "" H 4050 2450 50  0001 C CNN
	1    4050 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0181
U 1 1 6314E36D
P 5750 2450
F 0 "#PWR0181" H 5750 2300 50  0001 C CNN
F 1 "VCC" H 5765 2623 50  0000 C CNN
F 2 "" H 5750 2450 50  0001 C CNN
F 3 "" H 5750 2450 50  0001 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5818 D22
U 1 1 63150480
P 6700 4050
F 0 "D22" V 6654 4130 50  0000 L CNN
F 1 "1N5818" V 6745 4130 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6700 3875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 6700 4050 50  0001 C CNN
	1    6700 4050
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5818 D21
U 1 1 63151274
P 7000 3750
F 0 "D21" H 7000 3533 50  0000 C CNN
F 1 "1N5818" H 7000 3624 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7000 3575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 7000 3750 50  0001 C CNN
	1    7000 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C?
U 1 1 63151A2D
P 7400 4050
AR Path="/62CCEF11/63151A2D" Ref="C?"  Part="1" 
AR Path="/63102909/63151A2D" Ref="C129"  Part="1" 
F 0 "C129" H 7515 4096 50  0000 L CNN
F 1 "10u" H 7515 4005 50  0000 L CNN
F 2 "" H 7400 4050 50  0001 C CNN
F 3 "~" H 7400 4050 50  0001 C CNN
	1    7400 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63152289
P 7900 4050
AR Path="/62C0C022/63152289" Ref="R?"  Part="1" 
AR Path="/62CCEF11/63152289" Ref="R?"  Part="1" 
AR Path="/63102909/63152289" Ref="R83"  Part="1" 
F 0 "R83" H 7970 4096 50  0000 L CNN
F 1 "10K" H 7970 4005 50  0000 L CNN
F 2 "" V 7830 4050 50  0001 C CNN
F 3 "~" H 7900 4050 50  0001 C CNN
	1    7900 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D23
U 1 1 63152BFF
P 8250 4050
F 0 "D23" V 8289 3932 50  0000 R CNN
F 1 "Blue LED" V 8198 3932 50  0000 R CNN
F 2 "" H 8250 4050 50  0001 C CNN
F 3 "~" H 8250 4050 50  0001 C CNN
	1    8250 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 3750 8250 3750
Wire Wire Line
	6350 3750 6700 3750
$Comp
L power:GND #PWR?
U 1 1 63154F49
P 6700 4400
AR Path="/62C0C022/63154F49" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/63154F49" Ref="#PWR?"  Part="1" 
AR Path="/63102909/63154F49" Ref="#PWR0184"  Part="1" 
F 0 "#PWR0184" H 6700 4150 50  0001 C CNN
F 1 "GND" H 6705 4227 50  0001 C CNN
F 2 "" H 6700 4400 50  0001 C CNN
F 3 "" H 6700 4400 50  0001 C CNN
	1    6700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6315534B
P 7400 4400
AR Path="/62C0C022/6315534B" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/6315534B" Ref="#PWR?"  Part="1" 
AR Path="/63102909/6315534B" Ref="#PWR0185"  Part="1" 
F 0 "#PWR0185" H 7400 4150 50  0001 C CNN
F 1 "GND" H 7405 4227 50  0001 C CNN
F 2 "" H 7400 4400 50  0001 C CNN
F 3 "" H 7400 4400 50  0001 C CNN
	1    7400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6315598B
P 7900 4400
AR Path="/62C0C022/6315598B" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/6315598B" Ref="#PWR?"  Part="1" 
AR Path="/63102909/6315598B" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 7900 4150 50  0001 C CNN
F 1 "GND" H 7905 4227 50  0001 C CNN
F 2 "" H 7900 4400 50  0001 C CNN
F 3 "" H 7900 4400 50  0001 C CNN
	1    7900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63155C32
P 8250 4400
AR Path="/62C0C022/63155C32" Ref="#PWR?"  Part="1" 
AR Path="/62CCEF11/63155C32" Ref="#PWR?"  Part="1" 
AR Path="/63102909/63155C32" Ref="#PWR0187"  Part="1" 
F 0 "#PWR0187" H 8250 4150 50  0001 C CNN
F 1 "GND" H 8255 4227 50  0001 C CNN
F 2 "" H 8250 4400 50  0001 C CNN
F 3 "" H 8250 4400 50  0001 C CNN
	1    8250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3750 6700 3900
Connection ~ 6700 3750
Wire Wire Line
	6700 3750 6850 3750
Wire Wire Line
	6700 4200 6700 4400
Wire Wire Line
	7400 3750 7400 3900
Wire Wire Line
	7400 3750 7150 3750
Wire Wire Line
	7400 4200 7400 4400
Wire Wire Line
	7900 3750 7900 3900
Connection ~ 7900 3750
Wire Wire Line
	7900 4200 7900 4400
Wire Wire Line
	8250 3750 8250 3900
Connection ~ 8250 3750
Wire Wire Line
	8250 3750 7900 3750
Wire Wire Line
	8250 4200 8250 4400
Text Notes 8400 4400 0    50   ~ 0
The blue LED ensures the voltage\nwill not exceed 3V.
Wire Wire Line
	7400 3750 7900 3750
Connection ~ 7400 3750
$EndSCHEMATC
