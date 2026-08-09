`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 17:13:01
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
    reg A;
    reg [1:0]in1,in0;
    wire [1:0]Y;
    
    MUX2_1 #(.N(2)) uut(
        .A(A),
        .in0(in0),
        .in1(in1),
        .Y(Y)  
    );
    
    initial begin
    A=1; in0=2'b00; in1=2'b10; #10;
    A=0; in0=2'b00; in1=2'b01; #10;
    A=1; in0=2'b10; in1=2'b00; #10;
    A=0; in0=2'b00; in1=2'b11; #10;
    A=0; in0=2'b01; in1=2'b00; #10;
    $finish;
    end;
endmodule
