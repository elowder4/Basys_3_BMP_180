`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 11:40:26 AM
// Design Name: 
// Module Name: divider
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


module divider # (parameter width = 16) (
    input clk,
    input start,
    input [width-1:0] numerator,
    input [width-1:0] denominator,
    output reg [width-1:0] result,
    output reg status,
    output reg [width-1:0] remainder
);

    // Intermediate registers for pipelining
    reg [width-1:0] a1 [0:width-1];
    reg [width-1:0] b1 [0:width-1];
    reg [width-1:0] p1 [0:width-1];
    reg [5:0] stage; // suppports max 63 bits
    reg busy;

    integer i;

    always @(posedge clk) begin
        if (start) begin
            // Initialize registers at the start
            a1[0] <= numerator;
            b1[0] <= denominator;
            p1[0] <= 0;
            stage <= 0;
            busy <= 1;
            status <= 1;
        end else if (busy) begin
            // Perform the pipelined division
            for (i = 0; i < width-1; i = i + 1) begin
                a1[i+1] <= {a1[i][width-1:0], 1'b0}; // Shift a1 left by 1 bit
                if (p1[i][width-1] == 1) begin
                    p1[i+1] <= p1[i] + b1[0]; // Add denominator if p1 is negative
                    a1[i+1][0] <= 0; // Set the new LSB of a1 to 0
                end else begin
                    p1[i+1] <= p1[i] - b1[0]; // Subtract denominator if p1 is positive
                    a1[i+1][0] <= 1; // Set the new LSB of a1 to 1
                end
            end
            // Final stage
            stage <= stage + 1;
            if (stage == width-1) begin
                result <= a1[width-1];
                remainder <= p1[width-1];
                status <= 0;
                busy <= 0;
            end
        end
    end
endmodule
