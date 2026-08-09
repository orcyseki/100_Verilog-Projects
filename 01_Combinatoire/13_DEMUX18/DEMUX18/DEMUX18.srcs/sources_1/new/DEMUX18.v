`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 16:10:28
// Design Name: 
// Module Name: DEMUX18
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


module DEMUX18 #(parameter N=32)(
    input [N-1:0] in,
    input [3:0] A,
    output reg [N-1:0] S0,S1,S2,S3,S4,S5,S6,S7
    );
    
    always @(*)
    begin
    S0={N{1'b0}};
    S1={N{1'b0}};
    S2={N{1'b0}};
    S3={N{1'b0}};
    S4={N{1'b0}};
    S5={N{1'b0}};
    S6={N{1'b0}};
    S7={N{1'b0}};
    
    case(A)
    3'd0:S0=in;
    3'd1:S1=in;
    3'd2:S2=in;
    3'd3:S3=in;
    3'd4:S4=in;
    3'd5:S5=in;
    3'd6:S6=in;
    3'd7:S7=in;
    endcase;
    end
endmodule
