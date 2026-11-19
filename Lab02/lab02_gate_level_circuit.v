// CSE460 Lab 02: gate-level (structural) Verilog
// f = ((a' XOR b) + c + a.d)'

module exp1(f, a, b, c, d);
    input a, b, c, d;
    output f;
    wire w, x, y;

    not (w, a);
    xor (x, w, b);
    and (y, a, d);
    nor (f, x, c, y);
endmodule
