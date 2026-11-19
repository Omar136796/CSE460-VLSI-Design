// CSE460 Lab 03, Home Work 1: 1-to-4 demultiplexer
// The input d is sent to the output selected by s; the other outputs are 0.

module demux1_4(d, s, y);
    input d;
    input [1:0] s;
    output reg [0:3] y;

    always @(d, s)
    begin
        y = 4'b0000;
        case (s)
            0: y[0] = d;
            1: y[1] = d;
            2: y[2] = d;
            3: y[3] = d;
        endcase
    end
endmodule
