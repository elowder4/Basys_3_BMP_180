`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 01:35:50 PM
// Design Name: 
// Module Name: display_7_seg_tb
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


module display_7_seg_tb();

	// Inputs
	reg CLK;
	reg [7:0] data;

	// Outputs
	wire [7:0] SEG;
	wire [3:0] DIGIT;
	wire [3:0] ones;
	wire [3:0] tens;
	wire [7:0] prev_data;

	// Instantiate the Unit Under Test (UUT)
	display_7_seg uut (
		.CLK(CLK), 
		.data(data), 
		.SEG(SEG), 
		.DIGIT(DIGIT)
		,.ones(ones),.tens(tens)
	);
	
	integer i;

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		for(i=0;i<100;i=i+1) begin
            data <= i;
            repeat(100) #2 CLK <= ~CLK;
            $display("Input: %d, Output: %d %d", data, tens, ones);
            #50;
		end
	end 
endmodule
