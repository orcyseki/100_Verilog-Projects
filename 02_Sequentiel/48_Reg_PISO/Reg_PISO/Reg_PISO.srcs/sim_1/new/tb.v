`timescale 1ns / 1ps

module tb_Reg_PISO;

    reg [3:0] E;
    reg clk;
    reg load;

    wire S;

    // Instanciation du module
    Reg_PISO uut (
        .E(E),
        .clk(clk),
        .load(load),
        .S(S)
    );

    // Génération de l'horloge
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimuli
    initial
    begin

        // Initialisation
        E = 4'b1011;
        load = 1;

        // Chargement parallèle
        #10;

        // Passage en mode décalage
        load = 0;

        // Laisser le temps aux bits de sortir
        #50;

        $finish;

    end

endmodule