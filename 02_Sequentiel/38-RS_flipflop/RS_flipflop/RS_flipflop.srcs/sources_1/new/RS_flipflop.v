module RS_flipflop (
    input R, S, clk,
    output reg Q
);

always @(posedge clk)
begin
  case ({S, R})
        2'b10: Q <= 1;     // Set
        2'b01: Q <= 0;     // Reset
        2'b00: Q <= Q;     // Mémoire
        default: Q <= 1'bx; // interdit
    endcase
end

endmodule