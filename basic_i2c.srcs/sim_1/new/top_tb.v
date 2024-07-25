`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2024 11:22:23 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb();

reg clk;

wire sda;
wire scl;
wire [3:0] seg;
wire digit;
wire [7:0] led;
wire [2:0] state;

wire status;

top uut(.clk_100MHz (clk), .sda (sda), .scl (scl), .seg (seg),
			  .an (digit), .LED (led));
			  
initial begin 
    clk <= 1'b1;
    #100; // wait 100ns 
end

always begin
    repeat (1000000000) #10 clk <= ~clk;
end

endmodule
