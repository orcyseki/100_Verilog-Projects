`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 03:01:24
// Design Name: 
// Module Name: shiftright_register
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


module shiftright_register #(parameter N = 32)(
    input clk,
    input in,
    output reg [N-1:0] out
);

always @(posedge clk) begin
    out <= {in, out[N-1:1]};
end

endmodule