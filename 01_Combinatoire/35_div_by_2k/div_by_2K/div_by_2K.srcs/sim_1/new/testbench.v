`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2026 23:35:44
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
reg [1:0] e; 
reg [1:0] k; 
wire [1:0] s; 
div_by_2k #(.N(2),.k_max(2)) mult(e,k,s); 
initial 
begin 
    k=2'b00; 
    e=2'b00;#10; 
    e=2'b01;#10; 
    e=2'b10;#10; 
    e=2'b11;#10; 
    
    k=2'b01; 
    e=2'b00;#10; 
    e=2'b01;#10; 
    e=2'b10;#10; 
    e=2'b11;#10; 

    k=2'b10; 
    e=2'b00;#10; 
    e=2'b01;#10; 
    e=2'b10;#10; 
    e=2'b11;#10; 
    
    k=2'b11; 
    e=2'b00;#10; 
    e=2'b01;#10; 
    e=2'b10;#10; 
    e=2'b11;#10; 
$finish; 
end 
endmodule 
