// CSE460 Lab 04: Moore FSM that detects the input sequence 0111
// z = 1 in state E

module moore1 (Clock, Resetn, w, z, y, Y);
    input Clock, Resetn, w;
    output reg z;
    output reg [3:1] y, Y;
    parameter [3:1] A = 3'b000, B = 3'b001, C = 3'b011, D = 3'b010, E = 3'b110;

    // Define the next state combinational circuit
    always @(w, y)
    begin
        case (y)
            A: if (w) Y = A;
               else   Y = B;
            B: if (w) Y = C;
               else   Y = B;
            C: if (w) Y = D;
               else   Y = B;
            D: if (w) Y = E;
               else   Y = B;
            E: if (w) Y = A;
               else   Y = B;
            default: Y = 3'bxxx;
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
            D: z = 0;
            E: z = 1;
        endcase
    end
endmodule
