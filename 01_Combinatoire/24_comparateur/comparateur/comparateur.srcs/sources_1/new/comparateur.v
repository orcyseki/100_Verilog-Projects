`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 09:52:30
// Design Name: 
// Module Name: comparateur
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparateur #(parameter N=32, parameter type=0)(
    input [N-1:0] A, B,
    output reg S // 1 bit suffit pour les comparaisons
);
    
    always @(*) begin
        case(type)
            0: S = (A < B);  // comparateur inférieur
            1: S = (A > B);  // comparateur supérieur
            2: S = (A == B); // comparateur égal
            default: S = 1'b0;
        endcase
    end
endmodule