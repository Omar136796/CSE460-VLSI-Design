// CSE460 Lab 03, Class Work 2: 4-to-2 priority encoder
// Priority: w[2] > w[1] > w[3] > w[0]

module encoder_2130(w, y);
    input [3:0] w;
    output reg [1:0] y;

    always @(w)
        casex (w)
            4'bx1xx: y = 2;
            4'bx01x: y = 1;
            4'b100x: y = 3;
            4'b0001: y = 0;
            default: y = 2'bxx;   // no input active
        endcase
endmodule
