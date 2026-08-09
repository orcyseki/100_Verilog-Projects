`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 20:27:37
// Design Name: 
// Module Name: bcd_7seg
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


module bcd_7seg(
    input [3:0] in,
    output reg [6:0] out
    );
    
    always @(*)
    begin
        case(in)
        4'b0000:out=7'b1111110; //0
        4'b0001:out=7'b0110000;//1
        4'b0010:out=7'b1101101;//2
        4'b0011:out=7'b1111001;//3
        4'b0100:out=7'b0110011;//4
        4'b0101:out=7'b1011011;//5 
        4'b0110:out=7'b1111101;//6
        4'b0111:out=7'b1110000;//7
        4'b1000: out=7'b1111111;//8
        4'b1001: out=7'b1110011;//9
        4'b1010: out = 7'b1110111; // A
        4'b1011: out = 7'b0011111; // b
        4'b1100: out = 7'b1001110; // C
        4'b1101: out = 7'b0111101; // d
        4'b1110: out = 7'b1001111; // E
        4'b1111: out = 7'b1000111; // F
        default: out=7'b0000000;//aucune valeur
        endcase;
    end
endmodule
