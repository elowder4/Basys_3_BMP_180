`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 11:41:26 AM
// Design Name: 
// Module Name: divider_tb
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


module divider_tb();

	// Inputs
	reg clk_50MHz = 1'b0;
	reg [15:0] numerator = 1;
	reg [15:0] denominator = 1;

	// Outputs
	wire [15:0] result;
	wire [15:0] remainder;

	// Instantiate the Unit Under Test (UUT)
	divider uut (
		.numerator(numerator), 
		.denominator(denominator), 
		.result(result), 
		.remainder(remainder)
	);
	
    integer i;

	initial begin
	    numerator <= 'd1;
	    denominator <= 'd1;
	    #10
	    
	    for (i=1;i<6;i=i+1) begin
	        numerator = i * 'd10;
            denominator <= i * 'd4;
            #10;  // Wait for the combinational logic to settle
            $display("%d / %d = %d remainder %d", numerator, denominator, result, remainder);
	    end
	    
	    $stop;
	end
      
endmodule
