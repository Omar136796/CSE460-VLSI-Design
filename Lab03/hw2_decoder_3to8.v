// CSE460 Lab 03, Home Work 2: 3-to-8 decoder
// Exactly one output is high: the one selected by the 3-bit input w.

module decoder3_8(w, y);
    input [2:0] w;
    output reg [0:7] y;

    always @(w)
        case (w)
            0: y = 8'b10000000;
            1: y = 8'b01000000;
            2: y = 8'b00100000;
            3: y = 8'b00010000;
            4: y = 8'b00001000;
            5: y = 8'b00000100;
            6: y = 8'b00000010;
            7: y = 8'b00000001;
            default: y = 8'bxxxxxxxx;
        endcase
endmodule
