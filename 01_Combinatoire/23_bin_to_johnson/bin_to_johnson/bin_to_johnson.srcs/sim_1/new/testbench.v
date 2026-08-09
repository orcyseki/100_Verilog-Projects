`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 09:29:06
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

    reg [2:0] b;       
    wire [2:0] j;      

    bin_to_johnson #(.N(3)) dut (b,j);

    initial begin
        
        
        b = 3'd0; #10;
        b = 3'd1; #10;
        b = 3'd2; #10;
        b = 3'd3; #10;
        b = 3'd4; #10;
        b = 3'd5; #10;

        // hors plage
        b = 3'd6; #10;
        b = 3'd7; #10;

        $finish;
    end

endmodule
