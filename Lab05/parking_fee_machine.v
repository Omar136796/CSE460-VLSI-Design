// CSE460 Lab 05: parking fee collection machine (FSM)
//
// Gates and fees (PV):  1 = bike Tk 10, 2 = car Tk 50,
//                       3 = microbus Tk 80, 4 = truck Tk 120
// Accepted cash (cash_in code): 000 = Tk 0, 001 = Tk 10, 010 = Tk 20,
//                               011 = Tk 50, 100 = Tk 100
//
// Minimum bit lengths:
//   cash_in      = 3 bits  (5 accepted inputs)
//   PV           = 7 bits  (largest fee is 120 < 128)
//   MV           = 8 bits  (largest total is 110 + 100 = 210 < 256)
//   return_money = 7 bits  (largest change is 90 < 128)
//
// The machine adds each accepted input to the money value MV. As soon as
// MV + the current input reaches the fee, it sets confirm = 1, returns the
// change, and goes back to the initial state.

module parking_fee_machine(Clock, Reset, gate, cash_in, confirm, return_money, PV, MV, y);
    input Clock, Reset;
    input [2:0] gate;
    input [2:0] cash_in;
    output reg confirm;
    output reg [6:0] return_money;
    output reg [6:0] PV;
    output reg [7:0] MV;          // money collected so far
    output reg y;                 // present state

    parameter S0 = 1'b0,          // initial state, no money collected
              S1 = 1'b1;          // collecting money
    parameter T0 = 3'b000, T10 = 3'b001, T20 = 3'b010, T50 = 3'b011, T100 = 3'b100;

    reg Y;                        // next state
    reg [6:0] cash;               // value of the current input
    reg [7:0] total;              // MV + cash

    // Fee for the selected gate
    always @(gate)
        case (gate)
            1: PV = 10;
            2: PV = 50;
            3: PV = 80;
            4: PV = 120;
            default: PV = 0;
        endcase

    // Value of the current cash input
    always @(cash_in)
        case (cash_in)
            T10:  cash = 10;
            T20:  cash = 20;
            T50:  cash = 50;
            T100: cash = 100;
            default: cash = 0;    // Tk 0 or an unaccepted input
        endcase

    // Next state and outputs
    always @(y, MV, cash, PV)
    begin
        total = MV + cash;
        if (PV != 0 && cash != 0 && total >= PV) begin
            confirm = 1;
            return_money = total - PV;
            Y = S0;
        end else begin
            confirm = 0;
            return_money = 0;
            Y = (total == 0) ? S0 : S1;
        end
    end

    // State and money register
    always @(posedge Reset, posedge Clock)
    begin
        if (Reset) begin
            y <= S0;
            MV <= 0;
        end else begin
            y <= Y;
            MV <= confirm ? 0 : total;
        end
    end
endmodule
