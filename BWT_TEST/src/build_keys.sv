`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2020 13:26:28
// Design Name: 
// Module Name: build_keys
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


module build_keys
    #(parameter STRING_LEN = 8)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] buckets [0:STRING_LEN-1],
    input wire [7:0] offset,
    output reg [7:0] data_out [0:STRING_LEN-1] [3-1:0],
    output wire done
    );
    
    localparam  IDLE = 2'h0,
                BUILD_KEYS = 2'h1;
                
    reg [1:0] state, state_nxt;
    reg [7:0] counter, counter_nxt;
    reg [7:0] data_out_nxt [0:STRING_LEN-1] [3-1:0];
    
    assign done = (counter >= STRING_LEN);
    
    always@(posedge clk) begin
        if(rst) begin
            state <= IDLE;
            counter <= 8'h0;
            data_out <= '{8{'{3{8'h0}}}};
        end
        else begin
            state <= state_nxt;
            counter <= counter_nxt;
            data_out <= data_out_nxt;
        end
    end
    
    always@* begin
        case(state)
            IDLE: state_nxt = start ? BUILD_KEYS : IDLE;
            BUILD_KEYS: state_nxt = (counter < STRING_LEN) ? BUILD_KEYS : IDLE;
            default: state_nxt =  IDLE;
        endcase
    end   
    
    always@* begin
    data_out_nxt = data_out;
    counter_nxt = counter;
        case(state)
            IDLE: begin
                counter_nxt = 8'h0;
                data_out_nxt = '{8{'{3{8'h0}}}};
            end
            BUILD_KEYS: begin
                if(counter+offset < STRING_LEN)
                    data_out_nxt[counter] = {counter,buckets[counter],buckets[counter+offset]};
                else
                    data_out_nxt[counter] = '{counter,buckets[counter],{8{8'h0}}};
                counter_nxt = counter + 1;
            end
        endcase
    end 
    
    
endmodule
