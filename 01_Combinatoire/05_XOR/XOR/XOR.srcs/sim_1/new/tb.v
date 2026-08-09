`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 19:39:31
// Design Name: 
// Module Name: tb
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


module tb;
    reg [0:0] A,B;
    wire [0:0] S;
    
    XOR_GATE #(.N(1)) dut (
    .A(A),
    .B(B),
    .S(S)
    );
    
   initial begin
   A = 0; B = 0; #10;
   A = 1; B = 0; #10;  
   A = 0; B = 1; #10;
   A = 1; B = 1; #10;
   
   $finish;
   end; 
endmodule
