// CSE460 Lab Test 1, Task 1: 4-bit to 6-bit code converter
// 1001 -> 22, 1100 -> 30, 0110 -> 15, all other inputs are don't-care

module task1(y, a);

    input [3:0] a;
    output reg [5:0] y;

    always @(*)

    begin

        case (a)
            4'b1001: y = 22;
            4'b1100: y = 30;
            4'b0110: y = 15;
            default: y = 6'bxxxxxx;
        endcase

    end

endmodule
