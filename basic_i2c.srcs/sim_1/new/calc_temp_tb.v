`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 07:41:08 PM
// Design Name: 
// Module Name: calc_temp_tb
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


module calc_temp_tb(

    );
    
    reg clk;
    reg ready;
    reg [7:0] AC5, AC6, MC, MD;
    reg [15:0] temp_in;
    
    wire [15:0] temp_out;
    wire [4:0] state;
    
    initial begin 
        clk <= 1'b1;
        ready <= 1'b0;
        
        AC5 <= 8'd250;
        AC6 <= 8'd10;
        MC <= 8'd16;
        MD <= 8'd250;
        
        temp_in <= 16'd10000;
        
        #100;
        
        ready <= 1'b1;
        
        repeat (500) #6 clk <= ~clk;
        
        ready <= 1'b0;
        
        repeat (1000) #6 clk <= ~clk;
        
    end
        
    
    calc_temp uut(
    .clk (clk), 
    .ready (ready), 
    .AC5 (AC5), .AC6 (AC6), .MC (MC), .MD (MD), 
    .temp_raw_data (temp_in), 
    .temp_data (temp_out),
    .state_o (state)
);

    initial begin
        $monitor("At time %t, state = %d", $time, state);
    end
    
    
endmodule
