`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 02:45:42
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
    reg [3:0] D;
    reg clk,rst;
    wire [3:0] Q;
    
    register dut(D,clk,rst,Q);
    always #10 clk = ~clk;
    initial
    begin 
    //initialisation
    clk=0;
    D=4'd0;
    rst=1;
    //Reset actif
    #5 rst=0;
    #10 D=4'd2;
    
    #10 D=4'd1;
    
    #10 D=4'd4;
    
    #10 D=4'd3;
    
    #10 D=4'd5;
    
    #10 D=4'd7;
    
    #20 $stop;
    end;
    
endmodule
