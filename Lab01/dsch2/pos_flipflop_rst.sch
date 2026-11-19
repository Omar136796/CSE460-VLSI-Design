DSCH 2.7a
VERSION 28/02/2026 9:35:40 am
BB(-74,30,134,95)
SYM  #Pos_D_FlipFlop
BB(50,50,90,80)
TITLE 60 48  #Pos_D_FlipFlop
MODEL 6000
PROP                                                                                                                                                                                                           
REC(55,55,30,20,r)
VIS 5
PIN(50,70,0.000,0.000)CLK
PIN(50,60,0.000,0.000)D
PIN(90,60,0.060,0.420)Q
PIN(90,70,0.060,0.420)nQ
LIG(50,70,55,70)
LIG(50,60,55,60)
LIG(85,60,90,60)
LIG(85,70,90,70)
LIG(55,55,55,75)
LIG(55,55,85,55)
LIG(85,55,85,75)
LIG(85,75,55,75)
VLG  module Pos_D_FlipFlop( CLK,D,Q,nQ);
VLG   input CLK,D;
VLG   output Q,nQ;
VLG   wire w8,w9,w10,w11,w12,w13,w14,w15;
VLG   wire w16,w17,w18,w19,w20,w21;
VLG   not #(48) inverter(w2,CLK);
VLG   not #(45) inverter_po1(w8,D);
VLG   nmos #(13) nmos_2_1_po2(w9,vss,w5); //  
VLG   nmos #(87) nmos_2_2_po3(w4,w9,w10); //  
VLG   pmos #(87) pmos_2_3_po4(w4,vdd,w10); //  
VLG   pmos #(87) pmos_2_4_po5(w4,vdd,w5); //  
VLG   nmos #(13) nmos_2_5_po6(w12,vss,w11); //  
VLG   nmos #(52) nmos_2_6_po7(w5,w12,w4); //  
VLG   pmos #(52) pmos_2_7_po8(w5,vdd,w4); //  
VLG   pmos #(52) pmos_2_8_po9(w5,vdd,w11); //  
VLG   nmos #(13) nmos_2_9_po10(w13,vss,w8); //  
VLG   nmos #(48) nmos_2_10_po11(w11,w13,w2); //  
VLG   pmos #(48) pmos_2_11_po12(w11,vdd,w2); //  
VLG   pmos #(48) pmos_2_12_po13(w11,vdd,w8); //  
VLG   nmos #(13) nmos_2_13_po14(w14,vss,w2); //  
VLG   nmos #(48) nmos_2_14_po15(w10,w14,D); //  
VLG   pmos #(48) pmos_2_15_po16(w10,vdd,D); //  
VLG   pmos #(48) pmos_2_16_po17(w10,vdd,w2); //  
VLG   nmos #(43) nmos_in17_po18(w8,vss,D); //  
VLG   pmos #(43) pmos_in18_po19(w8,vdd,D); //  
VLG   not #(45) inverter_po20(w15,w4);
VLG   nmos #(13) nmos_2_1_po21(w16,vss,nQ); //  
VLG   nmos #(59) nmos_2_2_po22(Q,w16,w17); //  
VLG   pmos #(59) pmos_2_3_po23(Q,vdd,w17); //  
VLG   pmos #(59) pmos_2_4_po24(Q,vdd,nQ); //  
VLG   nmos #(13) nmos_2_5_po25(w19,vss,w18); //  
VLG   nmos #(59) nmos_2_6_po26(nQ,w19,Q); //  
VLG   pmos #(59) pmos_2_7_po27(nQ,vdd,Q); //  
VLG   pmos #(59) pmos_2_8_po28(nQ,vdd,w18); //  
VLG   nmos #(13) nmos_2_9_po29(w20,vss,w15); //  
VLG   nmos #(48) nmos_2_10_po30(w18,w20,CLK); //  
VLG   pmos #(48) pmos_2_11_po31(w18,vdd,CLK); //  
VLG   pmos #(48) pmos_2_12_po32(w18,vdd,w15); //  
VLG   nmos #(13) nmos_2_13_po33(w21,vss,CLK); //  
VLG   nmos #(48) nmos_2_14_po34(w17,w21,w4); //  
VLG   pmos #(48) pmos_2_15_po35(w17,vdd,w4); //  
VLG   pmos #(48) pmos_2_16_po36(w17,vdd,CLK); //  
VLG   nmos #(43) nmos_in17_po37(w15,vss,w4); //  
VLG   pmos #(43) pmos_in18_po38(w15,vdd,w4); //  
VLG   nmos #(44) nmos_in39(w2,vss,CLK); //  
VLG   pmos #(44) pmos_in40(w2,vdd,CLK); //  
VLG  endmodule
FSYM
SYM  #and2
BB(-35,35,0,55)
TITLE -23 46  #&
MODEL 402
PROP                                                                                                                                                                                                           
REC(0,0,0,0,)
VIS 0
PIN(-35,50,0.000,0.000)b
PIN(-35,40,0.000,0.000)a
PIN(0,45,0.090,0.350)s
LIG(-35,50,-27,50)
LIG(-27,35,-27,55)
LIG(-7,45,0,45)
LIG(-8,47,-11,51)
LIG(-7,45,-8,47)
LIG(-8,43,-7,45)
LIG(-11,39,-8,43)
LIG(-16,36,-11,39)
LIG(-11,51,-16,54)
LIG(-16,54,-27,55)
LIG(-27,35,-16,36)
LIG(-35,40,-27,40)
VLG  and and2(out,a,b);
FSYM
SYM  #button1
BB(-74,36,-65,44)
TITLE -70 40  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(-73,37,6,6,r)
VIS 1
PIN(-65,40,0.000,0.000)D
LIG(-66,40,-65,40)
LIG(-74,44,-74,36)
LIG(-66,44,-74,44)
LIG(-66,36,-66,44)
LIG(-74,36,-66,36)
LIG(-73,43,-73,37)
LIG(-67,43,-73,43)
LIG(-67,37,-67,43)
LIG(-73,37,-67,37)
FSYM
SYM  #button2
BB(-74,51,-65,59)
TITLE -70 55  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(-73,52,6,6,r)
VIS 1
PIN(-65,55,0.000,0.000)resetn
LIG(-66,55,-65,55)
LIG(-74,59,-74,51)
LIG(-66,59,-74,59)
LIG(-66,51,-66,59)
LIG(-74,51,-66,51)
LIG(-73,58,-73,52)
LIG(-67,58,-73,58)
LIG(-67,52,-67,58)
LIG(-73,52,-67,52)
FSYM
SYM  #light1
BB(123,30,129,44)
TITLE 125 44  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(124,31,4,4,r)
VIS 1
PIN(125,45,0.000,0.000)Q
LIG(128,36,128,31)
LIG(128,31,127,30)
LIG(124,31,124,36)
LIG(127,41,127,38)
LIG(126,41,129,41)
LIG(126,43,128,41)
LIG(127,43,129,41)
LIG(123,38,129,38)
LIG(125,38,125,45)
LIG(123,36,123,38)
LIG(129,36,123,36)
LIG(129,38,129,36)
LIG(125,30,124,31)
LIG(127,30,125,30)
FSYM
SYM  #light2
BB(128,80,134,94)
TITLE 130 94  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(129,81,4,4,r)
VIS 1
PIN(130,95,0.000,0.000)nQ
LIG(133,86,133,81)
LIG(133,81,132,80)
LIG(129,81,129,86)
LIG(132,91,132,88)
LIG(131,91,134,91)
LIG(131,93,133,91)
LIG(132,93,134,91)
LIG(128,88,134,88)
LIG(130,88,130,95)
LIG(128,86,128,88)
LIG(134,86,128,86)
LIG(134,88,134,86)
LIG(130,80,129,81)
LIG(132,80,130,80)
FSYM
SYM  #button3
BB(1,71,10,79)
TITLE 5 75  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(2,72,6,6,r)
VIS 1
PIN(10,75,0.000,0.000)CLK
LIG(9,75,10,75)
LIG(1,79,1,71)
LIG(9,79,1,79)
LIG(9,71,9,79)
LIG(1,71,9,71)
LIG(2,78,2,72)
LIG(8,78,2,78)
LIG(8,72,8,78)
LIG(2,72,8,72)
FSYM
LIG(-65,40,-35,40)
LIG(-65,55,-50,55)
LIG(-50,50,-50,55)
LIG(-50,50,-35,50)
LIG(0,45,25,45)
LIG(25,45,25,60)
LIG(25,60,50,60)
LIG(10,75,30,75)
LIG(30,75,30,70)
LIG(30,70,50,70)
LIG(90,60,105,60)
LIG(105,60,105,45)
LIG(105,45,125,45)
LIG(90,70,110,70)
LIG(110,70,110,95)
LIG(110,95,130,95)
FFIG C:\CSE460 Softwares\Export dsch2\Omar Faruk\pos_flipflop_rst.sch
