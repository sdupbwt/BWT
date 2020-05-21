`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2020 13:26:28
// Design Name: 
// Module Name: build_buckets
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


module build_buckets
    #(parameter STRING_LEN = 8)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] data_in [0:STRING_LEN-1] [3-1:0],
    output reg [7:0] buckets [0:STRING_LEN-1],
    output wire [7:0] max_bucket,
    output wire done
    );
    
    localparam  IDLE = 2'h0,
                BUILD_BUCKETS = 2'h1,
                SEND_OUTPUTS = 2'h2;
                
    reg [1:0] state, state_nxt;
    reg [7:0] buckets_nxt [0:STRING_LEN-1];
    reg [7:0] counter, counter_nxt;
    reg [7:0] current_bucket, current_bucket_nxt;
    wire [7:0] data_in_cp [0:STRING_LEN-1] [3-1:0];
    
    assign data_in_cp = data_in;
    assign done = (counter >= STRING_LEN);
    assign max_bucket = current_bucket;
                
    always@(posedge clk) begin
        if(rst) begin
            state <= IDLE;
            buckets <= '{8{8'h0}};
            counter <= 8'h0;
            current_bucket <= 8'h0;
        end
        else begin
            state <= state_nxt;
            buckets <= buckets_nxt;
            counter <= counter_nxt;
            current_bucket <= current_bucket_nxt;
        end
    end
    
    always@* begin
        case(state)
            IDLE: state_nxt = start ? BUILD_BUCKETS : IDLE;
            BUILD_BUCKETS: state_nxt = (counter < STRING_LEN) ? BUILD_BUCKETS : SEND_OUTPUTS;
            SEND_OUTPUTS: state_nxt = IDLE;
        endcase
    end           
    
    always@* begin
    buckets_nxt = buckets;
    current_bucket_nxt = current_bucket;
    counter_nxt = counter;
        case(state)
            IDLE: begin
                buckets_nxt = '{8{8'h0}};
                buckets_nxt[data_in[0][2]] = 8'h1;
                current_bucket_nxt = 8'h1;
                counter_nxt = 8'h0;
            end
            BUILD_BUCKETS: begin
                if(data_in[counter][0] != data_in[counter+1][0] ||
                    data_in[counter][1] != data_in[counter+1][1]) 
                    current_bucket_nxt = current_bucket + 8'h1;
                    
                buckets_nxt[data_in[counter][2]] = current_bucket;
                counter_nxt = counter + 1;
            end
            SEND_OUTPUTS: begin
                buckets_nxt = buckets;
            end
        endcase
    end 
    
    
    
endmodule