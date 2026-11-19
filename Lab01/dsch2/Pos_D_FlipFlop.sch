DSCH 2.7a
VERSION 28/02/2026 9:27:47 am
BB(-120,-24,249,55)
SYM  #clock1
BB(-120,12,-105,18)
TITLE -115 15  #clock
MODEL 69
PROP   10.000 10.000                                                                                                                                                                                                       
REC(-118,13,6,4,r)
VIS 1
PIN(-105,15,1.500,0.420)CLK
LIG(-110,15,-105,15)
LIG(-115,13,-117,13)
LIG(-111,13,-113,13)
LIG(-110,12,-110,18)
LIG(-120,18,-120,12)
LIG(-115,17,-115,13)
LIG(-113,13,-113,17)
LIG(-113,17,-115,17)
LIG(-117,17,-119,17)
LIG(-117,13,-117,17)
LIG(-110,18,-120,18)
LIG(-110,12,-120,12)
FSYM
SYM  #pos_D_Latch
BB(30,0,70,30)
TITLE 40 -2  #pos_D_Latch
MODEL 6000
PROP                                                                                                                                                                                                           
REC(35,5,30,20,r)
VIS 5
PIN(30,20,0.000,0.000)CLK
PIN(30,10,0.000,0.000)D
PIN(70,10,0.060,0.700)Q
PIN(70,20,0.060,0.350)nQ
LIG(30,20,35,20)
LIG(30,10,35,10)
LIG(65,10,70,10)
LIG(65,20,70,20)
LIG(35,5,35,25)
LIG(35,5,65,5)
LIG(65,5,65,25)
LIG(65,25,35,25)
VLG  module pos_D_Latch( CLK,D,Q,nQ);
VLG   input CLK,D;
VLG   output Q,nQ;
VLG   wire w8,w9,w10,w11;
VLG   not #(34) inverter(w6,D);
VLG   nmos #(12) nmos_2_1(w8,vss,nQ); //  
VLG   nmos #(47) nmos_2_2(Q,w8,w1); //  
VLG   pmos #(47) pmos_2_3(Q,vdd,w1); //  
VLG   pmos #(47) pmos_2_4(Q,vdd,nQ); //  
VLG   nmos #(12) nmos_2_5(w9,vss,w4); //  
VLG   nmos #(47) nmos_2_6(nQ,w9,Q); //  
VLG   pmos #(47) pmos_2_7(nQ,vdd,Q); //  
VLG   pmos #(47) pmos_2_8(nQ,vdd,w4); //  
VLG   nmos #(12) nmos_2_9(w10,vss,w6); //  
VLG   nmos #(40) nmos_2_10(w4,w10,CLK); //  
VLG   pmos #(40) pmos_2_11(w4,vdd,CLK); //  
VLG   pmos #(40) pmos_2_12(w4,vdd,w6); //  
VLG   nmos #(12) nmos_2_13(w11,vss,CLK); //  
VLG   nmos #(40) nmos_2_14(w1,w11,D); //  
VLG   pmos #(40) pmos_2_15(w1,vdd,D); //  
VLG   pmos #(40) pmos_2_16(w1,vdd,CLK); //  
VLG   nmos #(30) nmos_in17(w6,vss,D); //  
VLG   pmos #(30) pmos_in18(w6,vdd,D); //  
VLG  endmodule
FSYM
SYM  #pos_D_Latch
BB(95,0,135,30)
TITLE 105 -2  #pos_D_Latch
MODEL 6000
PROP                                                                                                                                                                                                           
REC(100,5,30,20,r)
VIS 5
PIN(95,20,0.000,0.000)CLK
PIN(95,10,0.000,0.000)D
PIN(135,10,0.060,0.420)Q
PIN(135,20,0.060,0.420)nQ
LIG(95,20,100,20)
LIG(95,10,100,10)
LIG(130,10,135,10)
LIG(130,20,135,20)
LIG(100,5,100,25)
LIG(100,5,130,5)
LIG(130,5,130,25)
LIG(130,25,100,25)
VLG  module pos_D_Latch( CLK,D,Q,nQ);
VLG   input CLK,D;
VLG   output Q,nQ;
VLG   wire w8,w9,w10,w11;
VLG   not #(34) inverter(w6,D);
VLG   nmos #(12) nmos_2_1(w8,vss,nQ); //  
VLG   nmos #(47) nmos_2_2(Q,w8,w1); //  
VLG   pmos #(47) pmos_2_3(Q,vdd,w1); //  
VLG   pmos #(47) pmos_2_4(Q,vdd,nQ); //  
VLG   nmos #(12) nmos_2_5(w9,vss,w4); //  
VLG   nmos #(47) nmos_2_6(nQ,w9,Q); //  
VLG   pmos #(47) pmos_2_7(nQ,vdd,Q); //  
VLG   pmos #(47) pmos_2_8(nQ,vdd,w4); //  
VLG   nmos #(12) nmos_2_9(w10,vss,w6); //  
VLG   nmos #(40) nmos_2_10(w4,w10,CLK); //  
VLG   pmos #(40) pmos_2_11(w4,vdd,CLK); //  
VLG   pmos #(40) pmos_2_12(w4,vdd,w6); //  
VLG   nmos #(12) nmos_2_13(w11,vss,CLK); //  
VLG   nmos #(40) nmos_2_14(w1,w11,D); //  
VLG   pmos #(40) pmos_2_15(w1,vdd,D); //  
VLG   pmos #(40) pmos_2_16(w1,vdd,CLK); //  
VLG   nmos #(30) nmos_in17(w6,vss,D); //  
VLG   pmos #(30) pmos_in18(w6,vdd,D); //  
VLG  endmodule
FSYM
SYM  #inverter
BB(-65,5,-25,25)
TITLE -55 3  #inverter
MODEL 6000
PROP                                                                                                                                                                                                           
REC(-60,10,30,10,r)
VIS 5
PIN(-65,15,0.000,0.000)A
PIN(-25,15,0.060,0.420)A'
LIG(-65,15,-60,15)
LIG(-30,15,-25,15)
LIG(-60,10,-60,20)
LIG(-60,10,-30,10)
LIG(-30,10,-30,20)
LIG(-30,20,-60,20)
VLG  module inverter( A,A');
VLG   input A;
VLG   output A';
VLG   nmos #(17) nmos(A',vss,A); // 1.0u 0.12u
VLG   pmos #(17) pmos(A',vdd,A); // 2.0u 0.12u
VLG  endmodule
FSYM
SYM  #button1
BB(-19,-24,-10,-16)
TITLE -15 -20  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(-18,-23,6,6,r)
VIS 1
PIN(-10,-20,0.000,0.000)D
LIG(-11,-20,-10,-20)
LIG(-19,-16,-19,-24)
LIG(-11,-16,-19,-16)
LIG(-11,-24,-11,-16)
LIG(-19,-24,-11,-24)
LIG(-18,-17,-18,-23)
LIG(-12,-17,-18,-17)
LIG(-12,-23,-12,-17)
LIG(-18,-23,-12,-23)
FSYM
SYM  #light1
BB(203,-15,209,-1)
TITLE 205 -1  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(204,-14,4,4,r)
VIS 1
PIN(205,0,0.000,0.000)Q
LIG(208,-9,208,-14)
LIG(208,-14,207,-15)
LIG(204,-14,204,-9)
LIG(207,-4,207,-7)
LIG(206,-4,209,-4)
LIG(206,-2,208,-4)
LIG(207,-2,209,-4)
LIG(203,-7,209,-7)
LIG(205,-7,205,0)
LIG(203,-9,203,-7)
LIG(209,-9,203,-9)
LIG(209,-7,209,-9)
LIG(205,-15,204,-14)
LIG(207,-15,205,-15)
FSYM
SYM  #light2
BB(243,-15,249,-1)
TITLE 245 -1  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(244,-14,4,4,r)
VIS 1
PIN(245,0,0.000,0.000)nQ
LIG(248,-9,248,-14)
LIG(248,-14,247,-15)
LIG(244,-14,244,-9)
LIG(247,-4,247,-7)
LIG(246,-4,249,-4)
LIG(246,-2,248,-4)
LIG(247,-2,249,-4)
LIG(243,-7,249,-7)
LIG(245,-7,245,0)
LIG(243,-9,243,-7)
LIG(249,-9,243,-9)
LIG(249,-7,249,-9)
LIG(245,-15,244,-14)
LIG(247,-15,245,-15)
FSYM
CNC(-85 15)
LIG(-105,15,-85,15)
LIG(-25,15,0,15)
LIG(0,15,0,20)
LIG(0,20,30,20)
LIG(-85,15,-85,55)
LIG(-85,15,-65,15)
LIG(-85,55,90,55)
LIG(95,20,90,20)
LIG(90,55,90,20)
LIG(-10,-20,10,-20)
LIG(10,-20,10,10)
LIG(10,10,30,10)
LIG(70,10,95,10)
LIG(135,10,205,10)
LIG(135,20,245,20)
LIG(205,0,205,10)
LIG(245,0,245,20)
FFIG C:\CSE460 Softwares\Export dsch2\Omar Faruk\Pos_D_FlipFlop.sch
