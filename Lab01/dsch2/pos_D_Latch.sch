DSCH 2.7a
VERSION 27/02/2026 12:37:59 pm
BB(-69,-15,299,75)
SYM  #2_input_NAND
BB(200,-5,240,25)
TITLE 210 -7  #2_input_NAND
MODEL 6000
PROP                                                                                                                                                                                                           
REC(205,0,30,20,r)
VIS 5
PIN(200,5,0.000,0.000)A
PIN(200,15,0.000,0.000)B
PIN(240,5,0.060,0.420)Y
LIG(200,5,205,5)
LIG(200,15,205,15)
LIG(235,5,240,5)
LIG(205,0,205,20)
LIG(205,0,235,0)
LIG(235,0,235,20)
LIG(235,20,205,20)
VLG  module 2_input_NAND( A,B,Y);
VLG   input A,B;
VLG   output Y;
VLG   nmos #(10) nmos(w2,vss,B); // 1.0u 0.12u
VLG   nmos #(24) nmos(Y,w2,A); // 1.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,A); // 2.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,B); // 2.0u 0.12u
VLG  endmodule
FSYM
SYM  #2_input_NAND
BB(200,40,240,70)
TITLE 210 38  #2_input_NAND
MODEL 6000
PROP                                                                                                                                                                                                           
REC(205,45,30,20,r)
VIS 5
PIN(200,50,0.000,0.000)A
PIN(200,60,0.000,0.000)B
PIN(240,50,0.060,0.420)Y
LIG(200,50,205,50)
LIG(200,60,205,60)
LIG(235,50,240,50)
LIG(205,45,205,65)
LIG(205,45,235,45)
LIG(235,45,235,65)
LIG(235,65,205,65)
VLG  module 2_input_NAND( A,B,Y);
VLG   input A,B;
VLG   output Y;
VLG   nmos #(10) nmos(w2,vss,B); // 1.0u 0.12u
VLG   nmos #(24) nmos(Y,w2,A); // 1.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,A); // 2.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,B); // 2.0u 0.12u
VLG  endmodule
FSYM
SYM  #2_input_NAND
BB(100,45,140,75)
TITLE 110 43  #2_input_NAND
MODEL 6000
PROP                                                                                                                                                                                                           
REC(105,50,30,20,r)
VIS 5
PIN(100,55,0.000,0.000)A
PIN(100,65,0.000,0.000)B
PIN(140,55,0.060,0.350)Y
LIG(100,55,105,55)
LIG(100,65,105,65)
LIG(135,55,140,55)
LIG(105,50,105,70)
LIG(105,50,135,50)
LIG(135,50,135,70)
LIG(135,70,105,70)
VLG  module 2_input_NAND( A,B,Y);
VLG   input A,B;
VLG   output Y;
VLG   nmos #(10) nmos(w2,vss,B); // 1.0u 0.12u
VLG   nmos #(24) nmos(Y,w2,A); // 1.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,A); // 2.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,B); // 2.0u 0.12u
VLG  endmodule
FSYM
SYM  #button4
BB(51,31,60,39)
TITLE 55 35  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(52,32,6,6,r)
VIS 1
PIN(60,35,0.000,0.000)CLK
LIG(59,35,60,35)
LIG(51,39,51,31)
LIG(59,39,51,39)
LIG(59,31,59,39)
LIG(51,31,59,31)
LIG(52,38,52,32)
LIG(58,38,52,38)
LIG(58,32,58,38)
LIG(52,32,58,32)
FSYM
SYM  #2_input_NAND
BB(100,-5,140,25)
TITLE 110 -7  #2_input_NAND
MODEL 6000
PROP                                                                                                                                                                                                           
REC(105,0,30,20,r)
VIS 5
PIN(100,5,0.000,0.000)A
PIN(100,15,0.000,0.000)B
PIN(140,5,0.060,0.350)Y
LIG(100,5,105,5)
LIG(100,15,105,15)
LIG(135,5,140,5)
LIG(105,0,105,20)
LIG(105,0,135,0)
LIG(135,0,135,20)
LIG(135,20,105,20)
VLG  module 2_input_NAND( A,B,Y);
VLG   input A,B;
VLG   output Y;
VLG   nmos #(10) nmos(w2,vss,B); // 1.0u 0.12u
VLG   nmos #(24) nmos(Y,w2,A); // 1.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,A); // 2.0u 0.12u
VLG   pmos #(24) pmos(Y,vdd,B); // 2.0u 0.12u
VLG  endmodule
FSYM
SYM  #inverter
BB(-5,50,35,70)
TITLE 5 48  #inverter
MODEL 6000
PROP                                                                                                                                                                                                           
REC(0,55,30,10,r)
VIS 5
PIN(-5,60,0.000,0.000)A
PIN(35,60,0.060,0.280)A'
LIG(-5,60,0,60)
LIG(30,60,35,60)
LIG(0,55,0,65)
LIG(0,55,30,55)
LIG(30,55,30,65)
LIG(30,65,0,65)
VLG module inverter( A,A');
VLG  input A;
VLG  output A';
VLG  nmos #(17) nmos(A',vss,A); // 1.0u 0.12u
VLG  pmos #(17) pmos(A',vdd,A); // 2.0u 0.12u
VLG endmodule
FSYM
SYM  #button1
BB(-69,56,-60,64)
TITLE -65 60  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(-68,57,6,6,r)
VIS 1
PIN(-60,60,0.000,0.000)D
LIG(-61,60,-60,60)
LIG(-69,64,-69,56)
LIG(-61,64,-69,64)
LIG(-61,56,-61,64)
LIG(-69,56,-61,56)
LIG(-68,63,-68,57)
LIG(-62,63,-68,63)
LIG(-62,57,-62,63)
LIG(-68,57,-62,57)
FSYM
SYM  #light1
BB(293,-15,299,-1)
TITLE 295 -1  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(294,-14,4,4,r)
VIS 1
PIN(295,0,0.000,0.000)Q
LIG(298,-9,298,-14)
LIG(298,-14,297,-15)
LIG(294,-14,294,-9)
LIG(297,-4,297,-7)
LIG(296,-4,299,-4)
LIG(296,-2,298,-4)
LIG(297,-2,299,-4)
LIG(293,-7,299,-7)
LIG(295,-7,295,0)
LIG(293,-9,293,-7)
LIG(299,-9,293,-9)
LIG(299,-7,299,-9)
LIG(295,-15,294,-14)
LIG(297,-15,295,-15)
FSYM
SYM  #light2
BB(293,20,299,34)
TITLE 295 34  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(294,21,4,4,r)
VIS 1
PIN(295,35,0.000,0.000)nQ
LIG(298,26,298,21)
LIG(298,21,297,20)
LIG(294,21,294,26)
LIG(297,31,297,28)
LIG(296,31,299,31)
LIG(296,33,298,31)
LIG(297,33,299,31)
LIG(293,28,299,28)
LIG(295,28,295,35)
LIG(293,26,293,28)
LIG(299,26,293,26)
LIG(299,28,299,26)
LIG(295,20,294,21)
LIG(297,20,295,20)
FSYM
CNC(80 35)
CNC(-25 60)
CNC(260 50)
CNC(260 50)
CNC(260 50)
CNC(265 5)
CNC(80 35)
CNC(80 35)
LIG(100,5,100,0)
LIG(100,15,80,15)
LIG(100,55,80,55)
LIG(80,15,80,35)
LIG(60,35,80,35)
LIG(80,35,80,55)
LIG(-60,60,-25,60)
LIG(35,60,65,60)
LIG(65,60,65,65)
LIG(65,65,100,65)
LIG(-25,60,-25,0)
LIG(-25,60,-5,60)
LIG(-25,0,100,0)
LIG(140,5,200,5)
LIG(200,60,170,60)
LIG(170,60,170,55)
LIG(170,55,140,55)
LIG(240,5,265,5)
LIG(260,50,295,50)
LIG(200,50,200,35)
LIG(200,35,265,35)
LIG(265,5,265,35)
LIG(295,35,295,50)
LIG(240,50,260,50)
LIG(260,50,260,25)
LIG(260,25,185,25)
LIG(185,15,185,25)
LIG(185,15,200,15)
LIG(265,5,295,5)
LIG(295,0,295,5)
FFIG C:\CSE460 Softwares\Export dsch2\Omar Faruk\pos_D_Latch.sch
