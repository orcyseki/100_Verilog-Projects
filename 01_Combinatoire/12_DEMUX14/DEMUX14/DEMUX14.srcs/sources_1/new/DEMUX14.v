`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2026 15:12:46
// Design Name: 
// Module Name: DEMUX14
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


module DEMUX14 #(parameter N=32)(
    input [N-1:0] in,
    input [1:0] A,
    output reg [N-1:0] S0, S1, S2, S3
);

always @(*) begin
    // Initialisation (très important)
    S0 = {N{1'b0}};
    S1 = {N{1'b0}};
    S2 = {N{1'b0}};
    S3 = {N{1'b0}};
    
    case(A)
        2'd0: S0 = in;
        2'd1: S1 = in;
        2'd2: S2 = in;
        2'd3: S3 = in;
    endcase
end

endmodule
