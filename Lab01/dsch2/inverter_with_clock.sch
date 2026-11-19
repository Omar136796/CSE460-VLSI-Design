DSCH 2.7a
VERSION 27/02/2026 11:11:05 am
BB(5,-10,84,15)
SYM  #inverter
BB(25,-5,65,15)
TITLE 35 -7  #inverter
MODEL 6000
PROP                                                                                                                                                                                                           
REC(30,0,30,10,r)
VIS 5
PIN(25,5,0.000,0.000)A
PIN(65,5,0.060,0.210)A'
LIG(25,5,30,5)
LIG(60,5,65,5)
LIG(30,0,30,10)
LIG(30,0,60,0)
LIG(60,0,60,10)
LIG(60,10,30,10)
VLG  module inverter( A,A');
VLG   input A;
VLG   output A';
VLG   nmos #(17) nmos(A',vss,A); // 1.0u 0.12u
VLG   pmos #(17) pmos(A',vdd,A); // 2.0u 0.12u
VLG  endmodule
FSYM
SYM  #clock1
BB(5,2,20,8)
TITLE 10 5  #clock
MODEL 69
PROP   10.00 10.00                                                                                                                                                                                                       
REC(7,3,6,4,r)
VIS 1
PIN(20,5,1.500,0.140)clk1
LIG(15,5,20,5)
LIG(10,3,8,3)
LIG(14,3,12,3)
LIG(15,2,15,8)
LIG(5,8,5,2)
LIG(10,7,10,3)
LIG(12,3,12,7)
LIG(12,7,10,7)
LIG(8,7,6,7)
LIG(8,3,8,7)
LIG(15,8,5,8)
LIG(15,2,5,2)
FSYM
SYM  #light1
BB(78,-10,84,4)
TITLE 80 4  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(79,-9,4,4,r)
VIS 1
PIN(80,5,0.000,0.000)out1
LIG(83,-4,83,-9)
LIG(83,-9,82,-10)
LIG(79,-9,79,-4)
LIG(82,1,82,-2)
LIG(81,1,84,1)
LIG(81,3,83,1)
LIG(82,3,84,1)
LIG(78,-2,84,-2)
LIG(80,-2,80,5)
LIG(78,-4,78,-2)
LIG(84,-4,78,-4)
LIG(84,-2,84,-4)
LIG(80,-10,79,-9)
LIG(82,-10,80,-10)
FSYM
LIG(20,5,25,5)
LIG(65,5,80,5)
FFIG C:\CSE460 Softwares\Export dsch2\Omar Faruk\inverter_with_clock.sch
