`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 01:30:09
// Design Name: 
// Module Name: encodeur_prioritaire
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


module encodeur_prioritaire(
    input [3:0] in,
    output reg [1:0] out
    );
    always @(*)
    begin
    if(in[3])
    out=2'b11;
    
    else if(in[2])
    out=2'b10;
    
    else if(in[1])
    out=2'b01;
    
    else if(in[0])
    out=2'b00;
    
    else
    out=2'b00;

    end
endmodule
