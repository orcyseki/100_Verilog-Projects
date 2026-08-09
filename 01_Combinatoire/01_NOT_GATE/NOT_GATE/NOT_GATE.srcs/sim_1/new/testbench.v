`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2026 18:28:24
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
    reg [1:0]in;
    wire [1:0] out;
    
    NOT_GATE #(.N(2)) dut (
     .in(in),
     .out(out)
    );
    
    initial begin
    in=2'b00; #10;
    in=2'b01; #10;
    in=2'b10; #10;
    in=2'b11; #10;
    $finish;
    end;
endmodule
