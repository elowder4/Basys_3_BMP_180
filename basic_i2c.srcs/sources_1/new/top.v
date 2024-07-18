`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2024 01:51:40 PM
// Design Name: 
// Module Name: top
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

module top(
    input clk_100MHz, 
    inout sda, 
    input reset,
    output scl,  
    output [7:0] seg,
    output [3:0] an, 
    output [15:0] LED
);

// register addresses for data in BMP180
localparam AC6 = 8'hB4;
localparam AC5 = 8'hB2;
localparam MC = 8'hBC;
localparam MD = 8'hBE;
localparam temp_reg = 8'h2E;

// constants used to calculate temperature
reg [7:0] AC6_reg;
reg [7:0] AC5_reg;
reg [7:0] MC_reg;
reg [7:0] MD_reg;
reg [15:0] temp_raw_data_reg;
reg [15:0] temp_data_reg;

// states of top module to initialize I2C with BMP180
parameter startUp1 = 3'b001;
parameter startUp2 = 3'b010;
parameter startUp3 = 3'b011;
parameter startUp4 = 3'b100;
parameter contData = 3'b101;

// wires for connecting modules 
wire [15:0] data_w; // 16 bits of temperature data
wire clk_4MHz_w; // connect slower clock to I2C
wire status_w;
wire [15:0] temp_w;
wire [7:0] register_address_w;
wire switch;

reg [2:0] state_reg = startUp1;
reg [7:0] register_address; // current address for I2C to write to
reg status_reg = 1'b0;
reg ready = 1'b0;
reg sync0;
reg sync1;

reg [7:0] sync3;

always @(posedge clk_4MHz_w) begin
    status_reg <= status_w;
    sync0 <= status_reg; // buffer status 
    sync1 <= sync0;

    case(state_reg)
        startUp1: begin
            register_address <= AC6;
            AC6_reg <= data_w;
            // falling edge of status is when to transition 
            if ((sync0 == 1'b0) && (sync1 == 1'b1)) begin
                state_reg <= startUp2;
            end
        end
        
        startUp2: begin
            register_address <= AC5;
            AC5_reg <= data_w;
            if ((sync0 == 1'b0) && (sync1 == 1'b1)) begin
                state_reg <= startUp3;
            end
        end

        startUp3: begin 
            register_address <= MC;
            MC_reg <= data_w;
            if ((sync0 == 1'b0) && (sync1 == 1'b1)) begin
                state_reg <= startUp4;
            end
        end
                                
        startUp4: begin 
            register_address <= MD;
            MD_reg <= data_w;
            if ((sync0 == 1'b0) && (sync1 == 1'b1)) begin
                state_reg <= contData;
            end
        end
                                
        contData: begin 
            register_address <= temp_reg;
            temp_raw_data_reg <= data_w;
            // signal we are ready for calculation
            if ((sync0 == 1'b1) && (sync1 == 1'b0)) begin
                 ready <= 1'b1;
            end else begin
                 ready <= 1'b0;
            end
        end
    endcase
end

assign LED = temp_w;
assign register_address_w = register_address;

// debounce switch 

debouncer debounce (.CLK (clk_4MHz_w), .state (switch), .switch (reset));

i2c_master #(.module_address (7'b1110111)) master
            (.register_address (register_address_w), .clk_4MHz (clk_4MHz_w), 
            .reset (switch), .sda (sda), .scl (scl), .temp (data_w), .status (status_w));

gen_4MHz_from_100MHz gen(.clk_100MHz (clk_100MHz), .clk_4MHz (clk_4MHz_w), .reset (switch));

display_7_seg display(.CLK (clk_4MHz_w), .data (temp_w), 
                             .SEG (seg), .DIGIT (an));
                             
calc_temp calc (.clk (clk_4MHz_w), .ready (ready), .AC5 (AC5_reg), .AC6 (AC6_reg), 
                        .MC (MC_reg), .MD (MD_reg), .temp_raw_data(temp_raw_data_reg), 
                        .temp_data (temp_w));

endmodule
