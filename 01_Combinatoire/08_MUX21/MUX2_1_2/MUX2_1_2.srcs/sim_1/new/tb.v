`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 20:30:03
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
    reg A,E;
    reg [1:0] in1,in0;
    wire [1:0] Y; 
    
    MUX2_1_2 #(.N(2)) mux(
    .A(A),
    .E(E),
    .in1(in1),
    .in0(in0),
    .Y(Y) 
    );
    
    //Simulation
    initial begin
    
    E=0;A=1;in0=2'b00;in1=2'b01;#10;
    E=0;A=0;in0=2'b10;in1=2'b01;#10;
    E=0;A=1;in0=2'b11;in1=2'b01;#10;
    E=0;A=0;in0=2'b00;in1=2'b01;#10;
    E=1;A=1;in0=2'b00;in1=2'b01;#10;
    E=1;A=1;in0=2'b11;in1=2'b01;#10;
    
    $finish;
    end;
endmodule
