DSCH 2.7a
VERSION 27/02/2026 11:03:00 am
BB(31,-25,164,75)
SYM  #light1
BB(158,15,164,29)
TITLE 160 29  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(159,16,4,4,r)
VIS 1
PIN(160,30,0.000,0.000)A'
LIG(163,21,163,16)
LIG(163,16,162,15)
LIG(159,16,159,21)
LIG(162,26,162,23)
LIG(161,26,164,26)
LIG(161,28,163,26)
LIG(162,28,164,26)
LIG(158,23,164,23)
LIG(160,23,160,30)
LIG(158,21,158,23)
LIG(164,21,158,21)
LIG(164,23,164,21)
LIG(160,15,159,16)
LIG(162,15,160,15)
FSYM
SYM  #nmos
BB(65,35,85,55)
TITLE 80 40  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                        
REC(66,40,19,15,r)
VIS 2
PIN(85,55,0.000,0.000)s
PIN(65,45,0.000,0.000)g
PIN(85,35,0.030,0.140)d
LIG(75,45,65,45)
LIG(75,51,75,39)
LIG(77,51,77,39)
LIG(85,39,77,39)
LIG(85,35,85,39)
LIG(85,51,77,51)
LIG(85,55,85,51)
VLG     nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(65,0,85,20)
TITLE 80 5  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                                                                                        
REC(66,5,19,15,r)
VIS 2
PIN(85,0,0.000,0.000)s
PIN(65,10,0.000,0.000)g
PIN(85,20,0.030,0.140)d
LIG(65,10,71,10)
LIG(73,10,73,10)
LIG(75,16,75,4)
LIG(77,16,77,4)
LIG(85,4,77,4)
LIG(85,0,85,4)
LIG(85,16,77,16)
LIG(85,20,85,16)
VLG     pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(80,-25,90,-15)
TITLE 83 -19  #vdd
MODEL 1
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(85,-15,0.000,0.000)vdd
LIG(85,-15,85,-20)
LIG(85,-20,80,-20)
LIG(80,-20,85,-25)
LIG(85,-25,90,-20)
LIG(90,-20,85,-20)
FSYM
SYM  #vss
BB(80,67,90,75)
TITLE 84 72  #vss
MODEL 0
PROP                                                                                                                                                                                                            
REC(80,65,0,0,b)
VIS 0
PIN(85,65,0.000,0.000)vss
LIG(85,65,85,70)
LIG(80,70,90,70)
LIG(80,73,82,70)
LIG(82,73,84,70)
LIG(84,73,86,70)
LIG(86,73,88,70)
FSYM
SYM  #button4
BB(31,26,40,34)
TITLE 35 30  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(32,27,6,6,r)
VIS 1
PIN(40,30,0.000,0.000)A
LIG(39,30,40,30)
LIG(31,34,31,26)
LIG(39,34,31,34)
LIG(39,26,39,34)
LIG(31,26,39,26)
LIG(32,33,32,27)
LIG(38,33,32,33)
LIG(38,27,38,33)
LIG(32,27,38,27)
FSYM
CNC(85 30)
CNC(60 30)
LIG(40,30,60,30)
LIG(60,30,60,10)
LIG(60,30,60,45)
LIG(60,10,65,10)
LIG(60,45,65,45)
LIG(85,30,85,35)
LIG(85,0,85,-15)
LIG(85,55,85,65)
LIG(85,20,85,30)
LIG(85,30,160,30)
FFIG C:\CSE460 Softwares\Export dsch2\Omar Faruk\inverter.sch
