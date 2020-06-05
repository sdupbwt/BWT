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
    #(parameter STRING_LEN=8,
      parameter VAR_LEN=4)
    (
    input wire clk,
    input wire rst,
    input wire [7:0] input_string [STRING_LEN-1:0],
    input wire [7:0] suffixes [STRING_LEN-1:0],
    input wire start_sort,
    output reg [7:0] suffixes_out [STRING_LEN-1:0]
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
//    reg [4:0] k, k_nxt;         //dobraæ rozmiar]
    wire [7:0] k;
//    reg [7:0] suffixes [STRING_LEN-1:0];
//    reg [7:0] suffixes_nxt [STRING_LEN-1:0];
//    reg [7:0] keys      [STRING_LEN-1:0][1:0];
//    reg [7:0] keys_nxt  [STRING_LEN-1:0][1:0];
    
    reg sort_done_1, sort_done_1_nxt, sort_done_2, sort_done_2_nxt, buckets_done, keys_done;
    reg [7:0] max_bucket;
    reg sort_start_1, sort_start_1_nxt, sort_start_2, sort_start_2_nxt;
    reg [7:0] sort_data_in_1[0:STRING_LEN-1] [3-1:0], sort_data_in_1_nxt[0:STRING_LEN-1] [3-1:0];
    wire [7:0] sort_data_out_1[0:STRING_LEN-1][3-1:0];
    reg [7:0] sort_data_in_2[0:STRING_LEN-1] [3-1:0], sort_data_in_2_nxt[0:STRING_LEN-1] [3-1:0];
    wire [7:0] sort_data_out_2[0:STRING_LEN-1][3-1:0];
    
    reg [7:0] buckets [0:STRING_LEN-1];
    reg [7:0] buckets_nxt [0:STRING_LEN-1];

    reg [7:0] keys_data_nxt[0:STRING_LEN-1] [3-1:0];
    reg [7:0] keys_data[0:STRING_LEN-1] [3-1:0];
    reg [7:0] suffixes_out_nxt[0:STRING_LEN-1];
    reg buckets_done_nxt, keys_done_nxt;
    reg [7:0] counter, counter_nxt;
    reg [7:0] counter_k, counter_k_nxt;
    reg [7:0] current_bucket, current_bucket_nxt;

    
    always@(posedge clk) begin
        if(rst) begin
            state <= IDLE;
            phase <= 0; 
            sort_data_in_1 <= '{8{'{3{8'h0}}}};
            sort_done_1 <= 0;
            sort_data_in_2 <= '{8{'{3{8'h0}}}};
            sort_done_2 <= 0;
            suffixes_out <= '{8{8'h0}};
            sort_start_1 <= 0;
            sort_start_2 <= 0;
            
            buckets_done <= 0;
            keys_done <= 0;
            keys_data <= '{8{'{3{8'h0}}}};
            counter_k <= 0;
            counter <= 0;
            current_bucket <= 0;
            buckets <= '{8{8'h0}};
        end
        else begin
            state <= state_nxt;
            phase <= phase_nxt;
            sort_data_in_1 <= sort_data_in_1_nxt;
            sort_done_1 <= sort_done_1_nxt;
            sort_data_in_2 <= sort_data_in_2_nxt;
            sort_done_2 <= sort_done_2_nxt;
            suffixes_out <= suffixes_out_nxt;
            sort_start_1 <= sort_start_1_nxt;
            sort_start_2 <= sort_start_2_nxt;
            buckets_done <= buckets_done_nxt;
            keys_done <= keys_done_nxt;
            keys_data <= keys_data_nxt;
            counter <= counter_nxt;
            counter_k <= counter_k_nxt;
            current_bucket <= current_bucket_nxt;
            buckets <= buckets_nxt;
        end
    end
    
    always@* begin
        case(state)
            IDLE: state_nxt             = start_sort ? SORT_2_ST : IDLE;
            SORT_1_ST: state_nxt        = SORT_1;
            SORT_1: state_nxt           = sort_done_1 ? SORT_2_ST : SORT_1;
            SORT_2_ST: state_nxt        = SORT_2;
            SORT_2: state_nxt           = sort_done_2 ? BUILD_BUCKETS : SORT_2;
            BUILD_BUCKETS: state_nxt    = (counter >= STRING_LEN) ? (max_bucket == STRING_LEN ? DONE : BUILD_KEYS) : BUILD_BUCKETS;
            BUILD_KEYS: state_nxt       = (counter_k >= STRING_LEN) ? INC_PHASE : BUILD_KEYS;
            INC_PHASE: state_nxt        = SORT_1_ST;
            DONE:state_nxt              = IDLE;
            default: state_nxt          = IDLE;
        endcase
    end
    
    always@(posedge clk) begin
        sort_start_1_nxt = 1'b0;
        sort_start_2_nxt = 1'b0;
//        phase_nxt = phase;
        case(state)
            IDLE: begin
//                suffixes_nxt = input_suffixes;
                sort_data_in_2_nxt[0] = {suffixes[0],input_string[0],8'h0}; //suffixes moze nie byc
                sort_data_in_2_nxt[1] = {suffixes[1],input_string[1],8'h0};
                sort_data_in_2_nxt[2] = {suffixes[2],input_string[2],8'h0};
                sort_data_in_2_nxt[3] = {suffixes[3],input_string[3],8'h0};
                sort_data_in_2_nxt[4] = {suffixes[4],input_string[4],8'h0};
                sort_data_in_2_nxt[5] = {suffixes[5],input_string[5],8'h0};
                sort_data_in_2_nxt[6] = {suffixes[6],input_string[6],8'h0};
                sort_data_in_2_nxt[7] = {suffixes[7],input_string[7],8'h0};
                phase_nxt = 0;
                max_bucket = 0;
                counter_nxt = 8'h0;
                counter_k_nxt = 8'h0;
                current_bucket_nxt = 8'h1;
                buckets_nxt = '{8{8'h0}};
                keys_data_nxt = '{8{'{3{8'h0}}}};
//                suffixes_out_nxt = '{8{8'h0}};
            end
            SORT_1_ST: begin
                sort_start_1_nxt = 1;
                sort_data_in_1_nxt = keys_data;
            end
            SORT_1: begin
                sort_start_1_nxt = 0;
                sort_data_in_2_nxt = sort_data_out_1;
            end
            SORT_2_ST: begin
                sort_start_2_nxt = 1;
                if(phase != 0) 
                    sort_data_in_2_nxt = sort_data_out_1;
            end
            SORT_2: begin
                sort_start_2_nxt = 0;
            end
            BUILD_BUCKETS: begin
                if(sort_data_out_2[counter][0] != sort_data_out_2[counter+1][0] ||
                    sort_data_out_2[counter][1] != sort_data_out_2[counter+1][1]) 
                    current_bucket_nxt = current_bucket + 8'h1;
                    
                buckets_nxt[sort_data_out_2[counter][2]] = current_bucket;
                counter_nxt = counter + 1;
                max_bucket = current_bucket_nxt;
                keys_data_nxt = '{8{'{3{8'h0}}}}; 
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
                buckets_nxt = '{8{8'h0}}; 
                current_bucket_nxt = 8'h1;  
                max_bucket = 0;                  
                counter_nxt = 8'h0;   
            end
            DONE: begin
                suffixes_out_nxt[0] = sort_data_out_2[0][2];
                suffixes_out_nxt[1] = sort_data_out_2[1][2];
                suffixes_out_nxt[2] = sort_data_out_2[2][2];
                suffixes_out_nxt[3] = sort_data_out_2[3][2];
                suffixes_out_nxt[4] = sort_data_out_2[4][2];
                suffixes_out_nxt[5] = sort_data_out_2[5][2];
                suffixes_out_nxt[6] = sort_data_out_2[6][2];
                suffixes_out_nxt[7] = sort_data_out_2[7][2]; 
            end
        endcase
    end
    
    assign k = (8'h1 << phase);
    
    merge_sort_top #(3,STRING_LEN) merge_sort_1(
    .clk(clk),
    .rst(rst),
    .start(sort_start_1),
    .data_in(sort_data_in_1),
    .data_out(sort_data_out_1), 
    .sort_num(2'h0), 
    .sorted(sort_done_1_nxt));
    
    merge_sort_top #(3,STRING_LEN) merge_sort_2(
    .clk(clk),
    .rst(rst),
    .start(sort_start_2),
    .data_in(sort_data_in_2),
    .data_out(sort_data_out_2), 
    .sort_num(2'h1), 
    .sorted(sort_done_2_nxt));
endmodule