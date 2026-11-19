// CSE460 Lab Test 2, Task 1: vending machine FSM
// Accepts Tk 10, 20, 50, 100, 200, and 500, keeps a running total across
// clock cycles, signals a purchase when the total reaches the price, and
// returns the change.

module task1(cash_in, Price, Reset, Clock, purchase, Tk_Hold, cash_return, Tk_Total, y, Y);
    input [2:0] cash_in; //
    input Reset, Clock; //
    input [9:0] Price; // PV = Price
    output reg purchase; //
    output reg [9:0] cash_return; //
    output reg Y = 0; //
    output reg y; //
    output reg [9:0] Tk_Total; // MV = Tk_Total
    output reg [8:0] Tk_Hold = 0; // Tk_Cl = Tk_Hold
    parameter S0 = 0, S1 = 1; //
    parameter T0 = 3'b000, T10 = 3'b001, T20 = 3'b010, T50 = 3'b011, T100 = 3'b100, T200 = 3'b101, T500 = 3'b110; //

    // Next state logic and output value
    always @(y, Tk_Hold, cash_in) begin
        case (cash_in)
            T10:  Tk_Hold = 10;
            T20:  Tk_Hold = 20;
            T50:  Tk_Hold = 50;
            T100: Tk_Hold = 100;
            T200: Tk_Hold = 200;
            T500: Tk_Hold = 500;
            T0:   Tk_Hold = 0;
        endcase

        case (y)
            S0: begin
                if (Tk_Hold >= Price) begin
                    if (Price == 0) begin
                        Y = S0;
                        purchase = 0;
                        cash_return = Tk_Hold;
                    end else begin
                        purchase = 1;
                        cash_return = Tk_Hold - Price;
                        Y = S0;
                    end
                end else if (Tk_Hold == 0) begin
                    purchase = 0;
                    cash_return = 0;
                    Y = S0;
                end else if (Tk_Hold < Price) begin
                    purchase = 0;
                    cash_return = 0;
                    Y = S1;
                end
            end
            S1: begin
                if ((Tk_Total + Tk_Hold) >= Price) begin
                    purchase = 1;
                    cash_return = (Tk_Total + Tk_Hold - Price);
                    Y = S0;
                end else if (Tk_Hold == 0) begin
                    purchase = 0;
                    cash_return = Tk_Total;
                    Y = S0;
                end else if ((Tk_Total + Tk_Hold) < Price) begin
                    purchase = 0;
                    cash_return = 0;
                    Y = S1;
                end
            end
        endcase
    end

    // State change with clock edge
    always @(posedge Reset, posedge Clock) begin
        if (Reset == 1) begin
            y <= 0;
            Tk_Total <= 0;
        end else begin
            if (purchase | Tk_Hold == 0)
                Tk_Total <= 0;
            else
                Tk_Total <= Tk_Total + Tk_Hold;
            y <= Y;
        end
    end
endmodule
