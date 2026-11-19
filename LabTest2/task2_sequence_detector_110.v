// CSE460 Lab Test 2, Task 2: Moore FSM that detects the input sequence 110
// (overlapping), z = 1 in state D

module task2 (Clock, Resetn, w, z, y, Y);
    input Clock, Resetn, w;
    output reg z;
    output reg [2:1] y, Y;
    parameter [2:1] A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;

    // Define the next state combinational circuit
    always @(*)
    begin
        case (y)
            A: if (w) Y = B;
               else   Y = A;
            B: if (w) Y = C;
               else   Y = A;
            C: if (w) Y = C;
               else   Y = D;
            D: if (w) Y = B;
               else   Y = A;
            default: Y = 2'bxx;
        endcase
    end

    // Define the sequential block
    always @(negedge Resetn, posedge Clock)
    begin
        if (Resetn == 0) y <= A;
        else y <= Y;
    end

    // Define output
    always @(y)
    begin
        case (y)
            A: z = 0;
            B: z = 0;
            C: z = 0;
            D: z = 1;
        endcase
    end
endmodule
