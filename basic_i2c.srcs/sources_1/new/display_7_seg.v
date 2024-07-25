`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 01:35:04 PM
// Design Name: 
// Module Name: display_7_seg
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


module display_7_seg(input CLK, input [15:0] data, output [7:0] SEG, 
							output reg [3:0] DIGIT, output reg[3:0] ones, output reg [3:0]tens);
	
// declare registries
reg [1:0] state = 2'b00; // state of calculating ones and tens
reg [3:0] digit_data; // decimal number is passed to 7 seg for display
reg [1:0] digit_posn; // used to iterate over digits
reg [23:0] prescaler; // used as clock
reg [7:0] decimal;
//reg [3:0] ones; // data at each segment
//reg [3:0] tens; 
reg [7:0] prev_data; // store data of previous run

// module to convert numbers to segment pattern
decoder_7_seg decoder(.CLK (CLK), .SEG	(SEG), .D (digit_data));

// initialize values on start up
initial begin
	prev_data <= 8'd0;
	ones <= 4'd0;
	tens <= 4'd0;
end 

always @(posedge CLK) begin
	// if data has changed update digits
	if((prev_data != data) || (state != 2'b00)) begin
		if (state == 1'b0) begin
			tens <= 4'd0; // reset to zero
			ones <= 4'd0;
			state <= 2'b01;
		end
		if (state == 2'b01) begin
			// cannot use for loop becasue it executes in parallel
			if (data >= 7'd100) begin
				tens <= 4'd9;
				ones <= 4'd9;
			end else if (data >= 7'd90) begin
				tens <= 4'd9;
			end else if (data >= 7'd80) begin
				tens <= 4'd8;
			end else if (data >= 7'd70) begin
				tens <= 4'd7;
			end else if (data >= 7'd60) begin
				tens <= 4'd6;
			end else if (data >= 7'd50) begin
				tens <= 4'd5;
			end else if (data >= 7'd40) begin
				tens <= 4'd4;
			end else if (data >= 7'd30) begin
				tens <= 4'd3;
			end else if (data >= 7'd20) begin
				tens <= 4'd2;
			end else if (data >= 7'd10) begin
				tens <= 4'd1;
			end
			
			state <= 2'b10;
		end
		if ((state == 2'b10) && (data > 7'd100)) begin
			ones <= 4'd9;
			state <= 2'b00;
		end else if (state == 2'b10) begin
			ones <= (data - (4'd10 * tens));
			state <= 2'b00;
		end 
	end
	prev_data <= data; // set previous data at end for 1 cycle delay
	
	prescaler <= prescaler + 24'd1;
	if (prescaler == 24'd50000) begin // 1 kHz
		prescaler <= 0;
		digit_posn <= digit_posn + 2'd1;
		if (digit_posn == 0) begin
			digit_data <= 4'd10;
			DIGIT <= 4'b1110;
		end
		if (digit_posn == 2'd1) begin
			digit_data <= 4'd11;
			DIGIT <= 4'b1101;
		end
		if (digit_posn == 2'd2) begin
			digit_data <= ones;
			DIGIT <= 4'b1011;
		end	
		if (digit_posn == 2'd3) begin
			digit_data <= tens;
			DIGIT <= 4'b0111;
			digit_posn <= 0;
		end	
	end
end

endmodule	 
