`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2024 10:00:12 AM
// Design Name: 
// Module Name: i2c_master_tb
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


module i2c_master_tb();
// inputs
reg clk_4MHz;

// outputs
wire scl;
wire sda;
wire status;
wire temp;

localparam mAddress = 7'b1001001;
reg [7:0] rAddress = 8'b11011011;

i2c_master #(.module_address(mAddress))
master(.register_address(rAddress), .clk_4MHz(clk_4MHz), .scl(scl), .sda(sda), 
.status(status), .temp(temp)); 

initial begin 
    clk_4MHz <= 1'b1;
    #100; // wait 100ns 
end

always begin
    repeat (1000) begin
        #250;
        clk_4MHz <= ~clk_4MHz;
    end
end

endmodule
