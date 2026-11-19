// CSE460 Lab 03, Home Work 3: 4-bit up-down counter with reset
// up = 1 counts up, up = 0 counts down. Reset clears the count to 0.

module updowncounter(rst, clk, up, q);
    input rst, clk, up;
    output reg [3:0] q;

    always @(posedge clk, posedge rst)
    begin
        if (rst)
            q <= 0;
        else if (up)
            q <= q + 1;
        else
            q <= q - 1;
    end
endmodule
