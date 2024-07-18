`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2024 02:48:35 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer(
    input CLK,
    input switch,
    output reg state
);

    // Synchronize the switch input to the clock
    reg sync0, sync1, sync2;
    
    always @(posedge CLK) 
    begin
      sync0 <= switch;
      sync1 <= sync0;
      sync2 <= sync1;
    end
    
    // Debounce the switch
    reg [16:0] count;
    wire finished = &count;	// true when all bits of count are 1's
    
    always @(posedge CLK) begin
      if (state == sync2) begin
        count <= 'd0;
      end else begin
        count <= count + 16'd1;  
        if (finished) begin
          state <= ~state;  
        end
      end
    end
    
endmodule
