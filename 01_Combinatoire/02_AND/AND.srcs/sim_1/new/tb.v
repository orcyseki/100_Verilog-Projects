`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 06:35:18
// Module Name: tb
//////////////////////////////////////////////////////////////////////////////////

module tb;

    // Déclaration des signaux
    reg [1:0] a;
    reg [1:0] b;
    wire [1:0] s;
    
    // Instanciation du DUT
    MODULE_AND #(.N(2)) dut (
        .A(a),  // majuscules pour correspondre au module
        .B(b),
        .S(s)
    );
    
    // Stimuli
    initial begin
        // Exemple de test
        a = 2'b00; b = 2'b00; #10;
        a = 2'b01; b = 2'b11; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b11; b = 2'b11; #10;
        
        $stop; // Arrêt de la simulation
    end

endmodule