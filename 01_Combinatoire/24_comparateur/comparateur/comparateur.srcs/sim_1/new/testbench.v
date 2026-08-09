`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 10:41:26
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg [1:0] A,B;
    wire S_inf, S_sup, S_eq;
    
    comparateur #(.N(2),.type(0)) com_inf(A,B,S_inf);
    comparateur #(.N(2),.type(1)) com_sup(A,B,S_sup);
    comparateur #(.N(2),.type(2)) com_eq(A,B,S_eq);
    initial begin

        A = 2'b00; B = 2'b00; #10;    
        A = 2'b01; B = 2'b00; #10;
        A = 2'b01; B = 2'b11; #10;
        A = 2'b10; B = 2'b00; #10;
        A = 2'b11; B = 2'b00; #10;
        A = 2'b11; B = 2'b01; #10;
        A = 2'b11; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;
       
        $finish;
    end
    
endmodule
