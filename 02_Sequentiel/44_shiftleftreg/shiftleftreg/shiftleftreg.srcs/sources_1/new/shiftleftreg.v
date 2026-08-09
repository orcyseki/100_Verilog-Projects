`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 19:08:56
// Design Name: 
// Module Name: shiftleftreg
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


module shiftleftreg #(parameter N=32)(
    input clk,in,
    output reg [N-1:0] out
    );
    
    always @(posedge clk) begin
    out <= {out[N-2:0], in};
end

endmodule
