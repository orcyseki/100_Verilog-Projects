`timescale 1ns / 1ps

module test;

    reg rst;
    reg clk;

    wire [1:0] out;

    // Instanciation correcte
    N_bit_counter #(.N(2)) dut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    // Génération horloge
   always #5 clk = ~clk;

    // Stimuli
    initial
    begin
    rst = 1;   // reset actif
    clk <= 0;
    
    #20   rst <= 0;
    #80   rst <= 1;
    #50   rst <= 0;
    #20 $finish;
    end

endmodule