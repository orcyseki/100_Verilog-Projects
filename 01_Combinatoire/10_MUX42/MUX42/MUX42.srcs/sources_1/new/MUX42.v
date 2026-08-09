`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 23:29:48
// Design Name: 
// Module Name: MUX42
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


module MUX42#(parameter N=32)(
    input [N-1:0] in0,in1,in2,in3,
    input A,
    output  [N-1:0] Y1,Y0
    );
    
    assign Y0 = A ? in1 : in0;
    assign Y1 = A ? in3 : in2;
    
endmodule
