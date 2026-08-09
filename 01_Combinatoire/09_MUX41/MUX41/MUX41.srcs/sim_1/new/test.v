`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 21:47:50
// Design Name: 
// Module Name: test
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


module test;
    reg [1:0] in0,in1,in2,in3;
    reg [1:0] A;
    wire [1:0] Y;
    
    //instanciation
    MUX41 #(.N(2)) mux(in0,in1,in2,in3,A,Y);
    //Simulation
    initial begin
    in0=2'b00;in1=2'b10;in2=2'b01;in3=2'b11;A=2'b00;#10;
    in0=2'b00;in1=2'b10;in2=2'b01;in3=2'b11;A=2'b01;#10;
    in0=2'b00;in1=2'b10;in2=2'b01;in3=2'b11;A=2'b10;#10;
    in0=2'b00;in1=2'b10;in2=2'b01;in3=2'b11;A=2'b11;#10;
    $finish;
    end
endmodule
