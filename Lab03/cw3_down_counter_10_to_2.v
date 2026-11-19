// CSE460 Lab 03, Class Work 3: down counter from 10 to 2 with reset
// Counts 10, 9, ..., 2 and then starts again from 10. Reset loads 10.

module downcounter_10_2(rst, clk, q);
    input rst, clk;
    output reg [3:0] q;

    always @(posedge clk, posedge rst)
    begin
        if (rst)
            q <= 10;
        else if (q <= 2)
            q <= 10;
        else
            q <= q - 1;
    end
endmodule
