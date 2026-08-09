`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2026 04:46:26
// Design Name: 
// Module Name: adder_N_bits
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


module adder_N_bits #(parameter N=32)(
    input [N-1:0]a, b,
    input cin,
    output cout,
    output [N-1:0]s
    );
    
    assign{cout,s}=a+b+cin;
    
endmodule
