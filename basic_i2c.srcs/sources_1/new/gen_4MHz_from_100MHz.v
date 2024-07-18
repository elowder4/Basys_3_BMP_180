`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 01:44:35 PM
// Design Name: 
// Module Name: gen_4MHz_from_100MHz
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


module gen_4MHz_from_100MHz(input clk_100MHz, input reset, output clk_4MHz);
// not exactly 4MHz due to division, but close at ~4.6
// using simple clock divider led to timing issues 

clk_wiz_0 clk (.clk_in1 (clk_100MHz), .clk_out1 (clk_4MHz), .reset (reset));

endmodule
