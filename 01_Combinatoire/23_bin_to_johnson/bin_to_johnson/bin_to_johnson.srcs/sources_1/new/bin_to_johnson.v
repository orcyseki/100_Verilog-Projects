`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 09:15:33
// Design Name: 
// Module Name: bin_to_johnson
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


module bin_to_johnson #(parameter N = 4)(
    input [$clog2(2*N)-1:0] b, 
    output reg [N-1:0] j
);

integer i;

always @(*) begin
    j = {N{1'b0}}; 

    if (b < N) begin
        
        for (i = 0; i <= b; i = i + 1)
            j[N-1-i] = 1'b1;
    end 
    else if (b < 2*N) begin
        
        for (i = 0; i < (2*N - b); i = i + 1)
            j[i] = 1'b1;
    end
end

endmodule
