`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2024 11:56:27 AM
// Design Name: 
// Module Name: i2c_master
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


module i2c_master 
#(parameter [6:0] module_address = 7'b0)
(input [7:0] register_address, input clk_4MHz, input reset, output scl, inout sda, output status, 
    output [15:0] temp);

reg [4:0] clk_div = 5'd0;
reg scl_reg = 1'b0;

// generate SCL clock at 200kHz
always @(posedge clk_4MHz) begin
    if (reset == 1'b1) begin
        scl_reg = 1'b0;
        clk_div <= 5'd0;
    end else if (clk_div == 5'd9) begin
        scl_reg <= ~scl_reg;
        clk_div <= 5'd0;
    end else begin
        clk_div <= clk_div + 1'd1;
    end
end

assign scl = scl_reg; // wire reg to output clock

// define states for state machine
localparam [5:0]    start     = 6'h00,
                    sendStart = 6'h01,
                    sendMAdd0 = 6'h02,
                    sendMAdd1 = 6'h03,
                    sendMAdd2 = 6'h04,
                    sendMAdd3 = 6'h05,
                    sendMAdd4 = 6'h06,
                    sendMAdd5 = 6'h07,
                    sendMAdd6 = 6'h08,
                    sendW     = 6'h09,
                    recACK    = 6'h0A,
                    sendRAdd0 = 6'h0B,
                    sendRAdd1 = 6'h0C,
                    sendRAdd2 = 6'h0D,
                    sendRAdd3 = 6'h0E,
                    sendRAdd4 = 6'h0F,
                    sendRAdd5 = 6'h10,
                    sendRAdd6 = 6'h11,
                    sendRAdd7 = 6'h12,
                    sendR     = 6'h13,
                    recMSB0   = 6'h14,
                    recMSB1   = 6'h15,
                    recMSB2   = 6'h16,
                    recMSB3   = 6'h17,
                    recMSB4   = 6'h18,
                    recMSB5   = 6'h19,
                    recMSB6   = 6'h1A,
                    recMSB7   = 6'h1B,
                    sendACK   = 6'h1C, 
                    recLSB0   = 6'h1D,
                    recLSB1   = 6'h1E,
                    recLSB2   = 6'h1F,
                    recLSB3   = 6'h20,
                    recLSB4   = 6'h21,
                    recLSB5   = 6'h22,
                    recLSB6   = 6'h23,
                    recLSB7   = 6'h24,
                    sendNACK  = 6'h25,
                    sendStop  = 6'h26,
                    waiting   = 6'h27;

reg [13:0] counter = 'd0;
reg [5:0] state = start;
reg out = 1'b1; // pull up 
reg [7:0] MSB = 8'b0;
reg [7:0] LSB = 8'b0;
reg [15:0] temp_reg;
reg status_reg = 1'b0;
reg [13:0] counter_sync = 'd0;
reg [5:0] sync;

always @(posedge clk_4MHz) begin
    if (reset == 1'b1) begin
        counter <= 'd1987;
        state <= start;
        out <= 1'b1;
        MSB <= 8'd0;
        LSB <= 8'd0;
    end else begin 
        counter <= counter + 1;
    end
   
    case (state)
        start: begin
            status_reg <= 1'b0;
            if (counter == 'd1989) begin
                state <= sendStart;
            end
        end
            
        sendStart: begin
            if ((counter == 'd1994) || (counter == 'd2374)) begin
                out <= 1'b0;
            end else if ((counter == 'd2004) || (counter == 'd2384)) begin
                state <= sendMAdd0;
            end
        end
            
        sendMAdd0: begin
            out <= module_address[0];
            
            if ((counter == 'd2024) || (counter == 'd2404)) begin
                state <= sendMAdd1;
            end
        end
        
        sendMAdd1: begin
            out <= module_address[1];
            
            if ((counter == 'd2044) || (counter == 'd2424)) begin
                state <= sendMAdd2;
            end
        end
     
        sendMAdd2: begin
            out <= module_address[2];
            
            if ((counter == 'd2064) || (counter == 'd2444)) begin
                state <= sendMAdd3;
            end
        end
           
       sendMAdd3: begin
            out <= module_address[3];
            
            if ((counter == 'd2084) || (counter == 'd2464)) begin
                state <= sendMAdd4;
            end
        end
  
        sendMAdd4: begin
            out <= module_address[4];
            
            if ((counter == 'd2104) || (counter == 'd2484)) begin
                state <= sendMAdd5;
            end
        end
        
        sendMAdd5: begin
            out <= module_address[5];
            
            if ((counter == 'd2124) || (counter == 'd2504)) begin
                state <= sendMAdd6;
            end
        end
        
        sendMAdd6: begin
            out <= module_address[6];
            
            if (counter == 'd2144) begin
                state <= sendW;
            end
            if (counter == 'd2524) begin
                state <= sendR;
            end
        end
        
        sendW: begin
            out <= 1'b0; // low for write
            
            if (counter == 'd2169) begin
                state <= recACK;
            end
        end
        
        sendR: begin
            out <= 1'b1;
            
            if (counter == 'd2549) begin
                state <= recACK;
            end
        end
        
        recACK: begin
            if (in == 1'b1) begin // slave must pull sda low 
                counter <= 'd0;
                state <= start; // restart if slave not responsive
            end
            if (counter == 'd2179) begin
                state <= sendRAdd0;
            end
            if (counter == 'd2359) begin
                state <= waiting;
            end
            if (counter == 'd2559) begin
                state <= recMSB0;
            end
        end
        
        waiting: begin
            out <= 1'b1;
            if (counter == 'd14358) begin
                counter <= 'd2359;
                state <= sendStart;
             end
        end
        
        sendRAdd0: begin
            if (counter == 'd2184) begin
                out <= register_address[0];
            end
            if (counter == 'd2194) begin
                state <= sendRAdd1;
            end
        end
        
        sendRAdd1: begin
            out <= register_address[1];
            
            if (counter == 'd2224) begin
                state <= sendRAdd2;
            end
        end
        
        sendRAdd2: begin
            out <= register_address[2];
            
            if (counter == 'd2244) begin
                state <= sendRAdd3;
            end
        end
        
        sendRAdd3: begin
            out <= register_address[3];
            
            if (counter == 'd2264) begin
                state <= sendRAdd4;
            end
        end
        
        sendRAdd4: begin
            out <= register_address[4];
            
            if (counter == 'd2284) begin
                state <= sendRAdd5;
            end
        end
        
        sendRAdd5: begin
            out <= register_address[5];
            
            if (counter == 'd2304) begin
                state <= sendRAdd6;
            end
        end
        
        sendRAdd6: begin
            out <= register_address[6];
            
            if (counter == 'd2324) begin
                state <= sendRAdd7;
            end
        end
        
        sendRAdd7: begin
            out <= register_address[7];
            
            if (counter == 'd2349) begin
                state <= recACK;
            end
        end
        
        recMSB0: begin
            // capture data on posedge
            MSB[7] <= in;
            
            if (counter == 'd2589) begin
                state <= recMSB1;
            end
        end
        
        recMSB1: begin
            MSB[6] <= in;
            
            if (counter == 'd2609) begin
                state <= recMSB2;
            end
        end
        
        recMSB2: begin
            MSB[5] <= in;

            if (counter == 'd2629) begin
                state <= recMSB3;
            end
        end
        
        recMSB3: begin
            MSB[4] <= in;
            
            if (counter == 'd2649) begin
                state <= recMSB4;
            end
        end
        
        recMSB4: begin
            MSB[3] <= in;
            
            if (counter == 'd2669) begin
                state <= recMSB5;
            end
        end
        
        recMSB5: begin
            MSB[2] <= in;

            if (counter == 'd2689) begin
                state <= recMSB6;
            end
        end
        
        recMSB6: begin
            MSB[1] <= in;

            if (counter == 'd2709) begin
                state <= recMSB7;
            end
        end
        
        recMSB7: begin
            MSB[0] <= in;

            if (counter == 'd2724) begin
                state <= sendACK;
            end
        end
        
        sendACK: begin
            out <= 1'b0;
            
            if (counter == 'd2749) begin
                state <= recLSB0;
            end
        end
        
        recLSB0: begin
            LSB[7] <= in;

            if (counter == 'd2769) begin
                state <= recLSB1;
            end
        end
        
        recLSB1: begin
            LSB[6] <= in;

            if (counter == 'd2789) begin
                state <= recLSB2;
            end
        end
        
        recLSB2: begin
            LSB[5] <= in;

            if (counter == 'd2809) begin
                state <= recLSB3;
            end
        end
        
        recLSB3: begin
            LSB[4] <= in;

            if (counter == 'd2829) begin
                state <= recLSB4;
            end
        end
        
        recLSB4: begin
            LSB[3] <= in;

            if (counter == 'd2849) begin
                state <= recLSB5;
            end
        end
        
        recLSB5: begin
            LSB[2] <= in;

            if (counter == 'd2869) begin
                state <= recLSB6;
            end
        end
        
        recLSB6: begin
            LSB[1] <= in;

            if (counter == 'd2889) begin
                state <= recLSB7;
            end
        end
        
        recLSB7: begin
            LSB[0] <= in;

            if (counter == 'd2904) begin
                state <= sendNACK;
            end
        end
        
        sendNACK: begin
            out <= 1'b1;
            
            if (counter == 'd2924) begin
                state <= sendStop;
            end
        end
        
        sendStop: begin
            out <= 1'b0;
            
            if ((counter >= 'd2934) && (counter <= 'd2946)) begin
                out <= 1'b1;
                status_reg <= 1'b1;
            end
            
            if (counter == 'd2947) begin
                counter <= 'd1988;
                state <= start;
            end
        end
    endcase
end

always @(posedge clk_4MHz) begin
    if (state == sendNACK) begin
        temp_reg <= (MSB << 8) + LSB; // from datasheet
    end
end

// if we are in these states, set dir high (incoming) 
assign sda_dir = (state == recACK || state == recMSB0 || state == recMSB1 || 
                  state == recMSB2 || state == recMSB3 || state == recMSB4 || 
                  state == recMSB5 || state == recMSB6 || state == recMSB7 ||
                  state == recLSB0 || state == recLSB1 || state == recLSB2 || 
                  state == recLSB3 || state == recLSB4 || state == recLSB5 || 
                  state == recLSB6 || state == recLSB7) ? 1'b1 : 1'b0;

assign sda = ~sda_dir ? out : 1'bZ; // if dir is high, sda=Z. If low, sda=out
assign in = sda; // when data is incoming, assign it to in
assign temp = temp_reg; // tie output to temp reg
assign status = status_reg; // tie status reg to output

endmodule
