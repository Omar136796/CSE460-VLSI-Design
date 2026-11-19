// CSE460 Lab Test 1, Task 2: 5-input priority encoder
// Priority: w[4] > w[0] > w[3] > w[1] > w[2]

module task1(y, w);

    output reg [2:0] y;
    input [4:0] w;

    always @(*)

    begin

        casex (w)
            5'b1xxxx: y = 4;
            5'b0xxx1: y = 0;
            5'b01xx0: y = 3;
            5'b00x10: y = 1;
            5'b00100: y = 2;
        endcase

    end

endmodule
