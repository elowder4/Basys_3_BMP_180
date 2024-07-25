`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2024 11:01:03 AM
// Design Name: 
// Module Name: calc_temp
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

module calc_temp(
    input clk, 
    input ready, 
    input [7:0] AC5, AC6, MC, MD, 
    input [15:0] temp_raw_data, 
    input reset,
    output reg [15:0] temp_data,
    output [4:0] state_o
);

    // declare registries for calculations 
    reg [23:0] x1;
    reg [8:0] x2;
    reg [10:0] x3;
    reg [18:0] x4;
    reg [22:0] x5;
    reg [24:0] x6;
    reg [23:0] x7;
    reg [22:0] x8;
    reg [15:0] x9;
    reg [32:0] x10;
    reg [25:0] x11;
    reg [38:0] x12;
    reg [39:0] x13;
    reg [44:0] division_result;
  
    // state machine declarations
    localparam [2:0] start = 3'b000, 
                     calc1 = 3'b001,
                     calc2 = 3'b010, 
                     calc3 = 3'b011,
                     calc4 = 3'b100, 
                     calc5 = 3'b101,
                     calc6 = 3'b110;
                     
    reg [10:0] counter = 'd0;
    reg counter_enable = 1'b1;
    reg [4:0] state = start;
    reg [4:0] state_sync;
    
    // adder enable and result declarations
    wire adder_enable_w0, adder_enable_w1;
    reg adder_enable_reg0 = 1'b0, adder_enable_reg1 = 1'b0;
    
    wire [10:0] adder_result_w0;
    wire [23:0] adder_result_w1;
    
    // division enable, ready, and data declarations
    wire divider_enable_w0, divider_enable_w1;
    wire divider_result_ready_w0, divider_result_ready_w1;
    reg divider_enable_reg0 = 1'b0, divider_enable_reg1 = 1'b0;
    wire [39:0] division_result_w0;
    wire [39:0] division_result_w1;
        
    always @(posedge clk) begin
        if (reset == 1'b1) begin
            state <= start;
        end else if (counter_enable == 1'b1) begin
            counter <= counter + 'd1; 
        end
        
        case (state)
            start: begin
                if (ready == 1'b1) begin
                    state <= calc1;
                    counter_enable <= 1'b1;
                    counter <= 'd0;
                    // reset adders and dividers 
                    divider_enable_reg0 <= 1'b0;
                    divider_enable_reg1 <= 1'b0;
                    adder_enable_reg0 <= 1'b0;
                    adder_enable_reg1 <= 1'b0;
                end
            end
            
            calc1: begin
                x1 <= AC5 * (temp_raw_data - AC6); // assuming (praying) data>AC6
                x2 <= x1 >> 15;
                //$display("x2: %d", x2);
                
                adder_enable_reg0 <= 1'b1;
                if (counter == 'd2) begin
                    state <= calc2;
                end
            end
            
            calc2: begin
                x3 <= adder_result_w0;
                //$display("x3 (x2 + MD): %d", x3);
                x4 <= MC << 11;
                //$display("x4: %d", x4);
                
                // after three clock cycles transition to next state (latency of adder)
                if (counter == 'd6) begin
                    state <= calc3;
                end 
            
            end
            
            calc3: begin
                counter_enable <= 1'b0; // wait for division to finish
                divider_enable_reg0 <= 1'b1;
                
                if (divider_result_ready_w0 == 1'b1) begin
                    counter_enable <= 1'b1; // restart count
                    
                    x5 <= division_result_w0[39:16]; // quotient
                    //$display("x5 (from divison): %d", x5);
                    x6 <= division_result_w0[15:0]; // remainder with divisor x3
                    
                    
                    // wait a clock period before transitioning to capture data
                    if (counter == 'd9) begin
                        state <= calc4;
                    end
                end 
            end
            
            calc4: begin
                adder_enable_reg1 <= 1'b1;
                
                // hold for 2 cycles
                if ((counter == 'd14) || (counter == 'd15)) begin 
                    x7 <= adder_result_w1;
                    //$display("x7 (from addition): %d", x7);
                end
                
                if (counter == 'd16) begin
                    state <= calc5;
                end
            end
            
            calc5: begin
                if ((counter == 'd17) || (counter == 'd18)) begin
                    x7 <= x7 + 'd8; // should have a small enough number here to avoid any sign issues or overflow
                    //$display("x7 (from another addition): %d", x7);
                end
                
                if (counter == 'd19) begin
                    divider_enable_reg1 <= 1'b1;
                    counter_enable <= 1'b0;
                end
                
                if (divider_result_ready_w1 == 1'b1) begin
                    x8 <= division_result_w1[39:16]; // result
                    //$display("x8 (from divison): %d", x8);
                    x9 <= division_result_w1[15:0]; // divisor is 160
                    counter_enable <= 1'b1;
                    
                    if (counter == 'd20) begin
                        state <= calc6;
                    end
                end
            end
            
            calc6: begin
                temp_data <= x8[15:0];
                //$display("temp_data: %d", temp_data);
                
                if (counter == 'd20) begin
                    state <= start;
                    counter_enable <= 1'b0;
                end
            end
        endcase
    end
    
    assign adder_enable_w0 = adder_enable_reg0;
    assign adder_enable_w1 = adder_enable_reg1;
    
    assign divider_enable_w0 = divider_enable_reg0;
    assign divider_enable_w1 = divider_enable_reg1;

    
    c_addsub_0 adder0(
        .A(x2), 
        .B(MD), 
        .CE(adder_enable_w0),
        .CLK (clk), 
        .S(adder_result_w0)
    );
    
    c_addsub_1 adder1(
        .A(x2), 
        .B(x5),
        .CE(adder_enable_w1),
        .CLK (clk), 
        .S(adder_result_w1)
    );
    
    div_gen_0 div0(
        .aclk(clk), 
        .s_axis_divisor_tdata(x3), 
        .s_axis_divisor_tvalid(divider_enable_w0),
        .s_axis_dividend_tdata(x4), 
        .s_axis_dividend_tvalid(divider_enable_w0),
        .m_axis_dout_tdata(division_result_w0),
        .m_axis_dout_tvalid(divider_result_ready_w0)
    );
    
    div_gen_1 div1(
        .aclk(clk), 
        .s_axis_divisor_tdata(9'b010100000), 
        .s_axis_divisor_tvalid(divider_enable_w1),
        .s_axis_dividend_tdata(x7), 
        .s_axis_dividend_tvalid(divider_enable_w1),
        .m_axis_dout_tdata(division_result_w1),
        .m_axis_dout_tvalid(divider_result_ready_w1)
    );
    
    assign state_o = state;
    
endmodule
