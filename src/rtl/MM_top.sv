`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2020 13:26:28
// Design Name: 
// Module Name: MM_top
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


module MM_top
    #(parameter STRING_LEN=32,
      parameter VAR_LEN=4)
    (
    input wire clk,
    input wire rst,
    input wire [7:0] input_string [STRING_LEN-1:0],
    input wire start_sort,
    output reg [7:0] suffixes_out [STRING_LEN-1:0],
    output reg [7:0] output_string [STRING_LEN-1:0],
    output reg done
    );
    
    localparam  IDLE = 4'h0,
                SORT_1_ST = 4'h1,
                SORT_1 = 4'h2,
                SORT_2_ST = 4'h3,
                SORT_2 = 4'h4,
                BUILD_BUCKETS = 4'h5,
                BUILD_KEYS = 4'h6,
                INC_PHASE = 4'h7,
                DONE = 4'h8;
                
    reg [3:0] state, state_nxt;
    reg [4:0] phase, phase_nxt;
    wire [7:0] k;
    
    reg sort_done, sort_done_nxt;
    reg sort_start, sort_start_nxt;
    
    reg [7:0] sort_data_in[0:STRING_LEN-1] [3-1:0], sort_data_in_nxt[0:STRING_LEN-1] [3-1:0];
    wire [7:0] sort_data_out[0:STRING_LEN-1][3-1:0];
    reg [7:0] buckets [0:STRING_LEN-1];
    reg [7:0] buckets_nxt [0:STRING_LEN-1];
    reg [7:0] keys_data_nxt[0:STRING_LEN-1] [3-1:0];
    reg [7:0] keys_data[0:STRING_LEN-1] [3-1:0];
    reg [7:0] suffixes_out_nxt[0:STRING_LEN-1];
    
    reg [7:0] counter_b, counter_b_nxt;
    reg [7:0] counter_k, counter_k_nxt;
    reg [7:0] current_bucket, current_bucket_nxt;
    reg [7:0] max_bucket;
    reg [7:0] char_ctr;
    reg sort_num, sort_num_nxt;
    reg [7:0] output_string_nxt [STRING_LEN-1:0];
    reg done_nxt;
    
    always@(posedge clk) begin
        if(rst) begin
            state <= IDLE;
            phase <= 0; 
            sort_data_in <= '{STRING_LEN{'{3{8'h0}}}};
            sort_done <= 0;
            suffixes_out <= '{STRING_LEN{8'h0}};
            sort_start <= 0;
            keys_data <= '{STRING_LEN{'{3{8'h0}}}};
            counter_k <= 0;
            counter_b <= 0;
            current_bucket <= 0;
            buckets <= '{STRING_LEN{8'h0}};
            sort_num <= 0;
            output_string <= '{STRING_LEN{8'h0}};
            done <= 0;
        end
        else begin
            state <= state_nxt;
            phase <= phase_nxt;
            sort_data_in <= sort_data_in_nxt;
            sort_done <= sort_done_nxt;
            suffixes_out <= suffixes_out_nxt;
            sort_start <= sort_start_nxt;
            keys_data <= keys_data_nxt;
            counter_b <= counter_b_nxt;
            counter_k <= counter_k_nxt;
            current_bucket <= current_bucket_nxt;
            buckets <= buckets_nxt;
            sort_num <= sort_num_nxt;
            output_string <= output_string_nxt;
            done <= done_nxt;
        end
    end
    
    always@* begin
        case(state)
            IDLE: state_nxt             = start_sort ? SORT_2_ST : IDLE;
            SORT_1_ST: state_nxt        = SORT_1;
            SORT_1: state_nxt           = sort_done ? SORT_2_ST : SORT_1;
            SORT_2_ST: state_nxt        = SORT_2;
            SORT_2: state_nxt           = sort_done ? BUILD_BUCKETS : SORT_2;
            BUILD_BUCKETS: state_nxt    = (counter_b >= STRING_LEN) ? (max_bucket == STRING_LEN ? DONE : BUILD_KEYS) : BUILD_BUCKETS;
            BUILD_KEYS: state_nxt       = (counter_k >= STRING_LEN) ? INC_PHASE : BUILD_KEYS;
            INC_PHASE: state_nxt        = SORT_1_ST;
            DONE:state_nxt              = IDLE;
            default: state_nxt          = IDLE;
        endcase
    end
    
    always@(posedge clk) begin
        sort_start_nxt = 1'b0;
//        phase_nxt = phase;
        case(state)
            IDLE: begin
                for(char_ctr = 0; char_ctr < STRING_LEN; char_ctr = char_ctr + 1) begin
                    sort_data_in_nxt[char_ctr] = {char_ctr,input_string[char_ctr],8'h0}; 
                end
                phase_nxt = 0;
                max_bucket = 0;
                counter_b_nxt = 8'h0;
                counter_k_nxt = 8'h0;
                current_bucket_nxt = 8'h1;
                buckets_nxt = '{STRING_LEN{8'h0}};
                keys_data_nxt = '{STRING_LEN{'{3{8'h0}}}};
                sort_num_nxt = 0;
                done_nxt = 0;
            end
            SORT_1_ST: begin
                sort_start_nxt = 1;
                sort_num_nxt = 1'h0;
                sort_data_in_nxt = keys_data;
            end
            SORT_1: begin
                sort_start_nxt = 0;
            end
            SORT_2_ST: begin
                sort_start_nxt = 1;
                sort_num_nxt = 1'h1;
                if(phase != 0) 
                    sort_data_in_nxt = sort_data_out;
            end
            SORT_2: begin
                sort_start_nxt = 0;
            end
            BUILD_BUCKETS: begin
                if(sort_data_out[counter_b][0] != sort_data_out[counter_b+1][0] ||
                    sort_data_out[counter_b][1] != sort_data_out[counter_b+1][1]) 
                    current_bucket_nxt = current_bucket + 8'h1;
                    
                buckets_nxt[sort_data_out[counter_b][2]] = current_bucket;
                counter_b_nxt = counter_b + 1;
                max_bucket = current_bucket_nxt;
                keys_data_nxt = '{STRING_LEN{'{3{8'h0}}}}; 
            end 
            BUILD_KEYS: begin
                if(counter_k+k < STRING_LEN)
                    keys_data_nxt[counter_k] = {counter_k,buckets[counter_k],buckets[counter_k+k]};
                else
                    keys_data_nxt[counter_k] = '{counter_k,buckets[counter_k],{8{8'h0}}};
                counter_k_nxt = counter_k + 1;                
            end
            INC_PHASE: begin
                phase_nxt = phase + 1;
                counter_k_nxt = 8'h0;     
                buckets_nxt = '{STRING_LEN{8'h0}}; 
                current_bucket_nxt = 8'h1;  
                max_bucket = 0;                  
                counter_b_nxt = 8'h0;   
            end
            DONE: begin
                for(char_ctr = 0; char_ctr < STRING_LEN; char_ctr = char_ctr + 1) begin
                    suffixes_out_nxt[char_ctr] = sort_data_out[char_ctr][2];
                    if(sort_data_out[char_ctr][2] == 0)
                        output_string_nxt[char_ctr] = input_string[STRING_LEN-1];
                    else
                        output_string_nxt[char_ctr] = input_string[sort_data_out[char_ctr][2]-1];
                end
                done_nxt = 1;
            end
        endcase
    end
    
    assign k = (8'h1 << phase);
    
    merge_sort_top #(3,STRING_LEN) merge_sort(
    .clk(clk),
    .rst(rst),
    .start(sort_start),
    .data_in(sort_data_in),
    .data_out(sort_data_out), 
    .sort_num(sort_num), 
    .sorted(sort_done_nxt));
endmodule