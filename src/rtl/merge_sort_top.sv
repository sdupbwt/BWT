`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2020 23:00:12
// Design Name: 
// Module Name: merge_sort_top
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


module merge_sort_top
    #(parameter COLUMN = 3,
                STRING_LEN = 32)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire sort_num,
    input wire [7:0] data_in [0:STRING_LEN-1][COLUMN-1:0],
    output reg [7:0] data_out[0:STRING_LEN-1][COLUMN-1:0],
    output wire sorted
    );
    
    localparam  ELEMENT_LEN = 8;

    reg [7:0] data_in_odd [0:((STRING_LEN-1)>>1)][COLUMN-1:0];
    reg [7:0] data_in_even [0:((STRING_LEN-1)>>1)][COLUMN-1:0];

    // Variables for STAGE 2-element array
    reg rd_fifo2 [STRING_LEN>>1];
    wire [ELEMENT_LEN-1:0] arr2 [STRING_LEN>>1][COLUMN-1:0];
    wire [7:0] fifo_arr2        [STRING_LEN>>1][COLUMN-1:0];
    wire wr_fifo2 [STRING_LEN>>1];
    wire empt_fifo2 [STRING_LEN>>1];

    reg empt_fifo2_even [STRING_LEN>>2];
    reg empt_fifo2_odd [STRING_LEN>>2];
    reg [ELEMENT_LEN-1:0] fifo_arr2_even [STRING_LEN>>2][COLUMN-1:0];
    reg [ELEMENT_LEN-1:0] fifo_arr2_odd [STRING_LEN>>2][COLUMN-1:0];
    wire rd_fifo2_even [STRING_LEN>>2];
    wire rd_fifo2_odd [STRING_LEN>>2];
    
    // Variables for STAGE 4-element array 
    wire [ELEMENT_LEN-1:0] arr4 [STRING_LEN>>2][COLUMN-1:0];
    wire [ELEMENT_LEN-1:0] fifo_arr4 [STRING_LEN>>2][COLUMN-1:0];
    reg rd_fifo4 [STRING_LEN>>2];
    wire empt_fifo4 [STRING_LEN>>2];
    wire wr_fifo4 [STRING_LEN>>2];
    
    reg empt_fifo4_even [STRING_LEN>>3];
    reg empt_fifo4_odd [STRING_LEN>>3];
    reg [ELEMENT_LEN-1:0] fifo_arr4_even [STRING_LEN>>3][COLUMN-1:0];
    reg [ELEMENT_LEN-1:0] fifo_arr4_odd [STRING_LEN>>3][COLUMN-1:0];
    wire rd_fifo4_even [STRING_LEN>>3];
    wire rd_fifo4_odd [STRING_LEN>>3];
    
    // Variables for STAGE 8-element array 
    wire [ELEMENT_LEN-1:0] arr8 [STRING_LEN>>3][COLUMN-1:0];
    wire [ELEMENT_LEN-1:0] fifo_arr8        [STRING_LEN>>3][COLUMN-1:0];
    wire empt_fifo8 [STRING_LEN>>3];
    wire wr_fifo8 [STRING_LEN>>3];
    reg rd_fifo8 [STRING_LEN>>3];
    
    reg empt_fifo8_even [STRING_LEN>>4];
    reg empt_fifo8_odd [STRING_LEN>>4];
    reg [ELEMENT_LEN-1:0] fifo_arr8_even [STRING_LEN>>4][COLUMN-1:0];
    reg [ELEMENT_LEN-1:0] fifo_arr8_odd [STRING_LEN>>4][COLUMN-1:0];
    wire rd_fifo8_even [STRING_LEN>>4];
    wire rd_fifo8_odd [STRING_LEN>>4];
    
    // Variables for STAGE 16-element array 
    wire [ELEMENT_LEN-1:0] arr16 [STRING_LEN>>4][COLUMN-1:0];
    wire [7:0] fifo_arr16        [STRING_LEN>>4][COLUMN-1:0];
    wire empt_fifo16 [STRING_LEN>>4];
    wire wr_fifo16 [STRING_LEN>>4];
    reg rd_fifo16 [STRING_LEN>>4];
    
    reg empt_fifo16_even [STRING_LEN>>5];
    reg empt_fifo16_odd [STRING_LEN>>5];
    reg [ELEMENT_LEN-1:0] fifo_arr16_even [STRING_LEN>>5][COLUMN-1:0];
    reg [ELEMENT_LEN-1:0] fifo_arr16_odd [STRING_LEN>>5][COLUMN-1:0];
    wire rd_fifo16_even [STRING_LEN>>5];
    wire rd_fifo16_odd [STRING_LEN>>5];
    
    // Variables for STAGE 32-element array 
    wire [ELEMENT_LEN-1:0] arr32 [STRING_LEN>>5][COLUMN-1:0];
    wire [ELEMENT_LEN-1:0] fifo_arr32 [STRING_LEN>>5][COLUMN-1:0];
    wire empt_fifo32 [STRING_LEN>>5];
    wire wr_fifo32 [STRING_LEN>>5];
    reg rd_fifo32 [STRING_LEN>>5];
    
    reg empt_fifo32_even [STRING_LEN>>6];
    reg empt_fifo32_odd [STRING_LEN>>6];
    reg [ELEMENT_LEN-1:0] fifo_arr32_even [STRING_LEN>>6][COLUMN-1:0];
    reg [ELEMENT_LEN-1:0] fifo_arr32_odd [STRING_LEN>>6][COLUMN-1:0];
    wire rd_fifo32_even [STRING_LEN>>6];
    wire rd_fifo32_odd [STRING_LEN>>6];
    
    
    // Variables for STAGE 64-element array 
    wire [ELEMENT_LEN-1:0] arr64 [STRING_LEN>>6][COLUMN-1:0];
    wire [ELEMENT_LEN-1:0] fifo_arr64        [STRING_LEN>>6][COLUMN-1:0];
    wire empt_fifo64 [STRING_LEN>>6];
    wire wr_fifo64 [STRING_LEN>>6];
    reg rd_fifo64 [STRING_LEN>>6];
    
    // Variables for STAGE 128-element array 
    wire [ELEMENT_LEN-1:0] arr128 [STRING_LEN>>7][COLUMN-1:0];
    wire [ELEMENT_LEN-1:0] fifo_arr128        [STRING_LEN>>7][COLUMN-1:0];
    wire empt_fifo128 [STRING_LEN>>7];
    wire wr_fifo128 [STRING_LEN>>7];
    reg rd_fifo128 [STRING_LEN>>7];
    
    reg [7:0] i, n;
    
    always @* begin
        for(n=0; n <= (STRING_LEN>>1)-1; n++) begin
            data_in_even[n] = data_in[2*n];
            data_in_odd[n]  = data_in[2*n+1];
        end
        for(n=0; n <= (STRING_LEN>>2)-1; n++) begin
            empt_fifo2_even[n] = empt_fifo2[2*n];
            empt_fifo2_odd[n]  = empt_fifo2[2*n+1];
            fifo_arr2_even[n]  = fifo_arr2[2*n];
            fifo_arr2_odd[n]   = fifo_arr2[2*n+1];
            rd_fifo2[2*n]      = rd_fifo2_even[n];
            rd_fifo2[2*n+1]    = rd_fifo2_odd[n];
        end
        for(n=0; n <= (STRING_LEN>>3)-1; n++) begin
            empt_fifo4_even[n] = empt_fifo4[2*n];
            empt_fifo4_odd[n]  = empt_fifo4[2*n+1];
            fifo_arr4_even[n]  = fifo_arr4[2*n];
            fifo_arr4_odd[n]   = fifo_arr4[2*n+1];
            rd_fifo4[2*n]      = rd_fifo4_even[n];
            rd_fifo4[2*n+1]    = rd_fifo4_odd[n];
        end
        for(n=0; n <= (STRING_LEN>>4)-1; n++) begin
            empt_fifo8_even[n] = empt_fifo8[2*n];
            empt_fifo8_odd[n]  = empt_fifo8[2*n+1];
            fifo_arr8_even[n]  = fifo_arr8[2*n];
            fifo_arr8_odd[n]   = fifo_arr8[2*n+1];
            rd_fifo8[2*n]      = rd_fifo8_even[n];
            rd_fifo8[2*n+1]    = rd_fifo8_odd[n];
        end
        for(n=0; n <= (STRING_LEN>>5)-1; n++) begin
            empt_fifo16_even[n] = empt_fifo16[2*n];
            empt_fifo16_odd[n]  = empt_fifo16[2*n+1];
            fifo_arr16_even[n]  = fifo_arr16[2*n];
            fifo_arr16_odd[n]   = fifo_arr16[2*n+1];
            rd_fifo16[2*n]      = rd_fifo16_even[n];
            rd_fifo16[2*n+1]    = rd_fifo16_odd[n];
        end
        for(n=0; n <= (STRING_LEN>>6)-1; n++) begin
            empt_fifo32_even[n] = empt_fifo32[2*n];
            empt_fifo32_odd[n]  = empt_fifo32[2*n+1];
            fifo_arr32_even[n]  = fifo_arr32[2*n];
            fifo_arr32_odd[n]   = fifo_arr32[2*n+1];
            rd_fifo32[2*n]      = rd_fifo32_even[n];
            rd_fifo32[2*n+1]    = rd_fifo32_odd[n];
        end
    end
    
    
    
    //STAGE 2-element array
    sort2elem #(COLUMN) 
        stage2 [0:(STRING_LEN>>1)-1](.clk(clk), 
                                     .rst(rst), 
                                     .en(start), 
                                     .byte_elem1(data_in_even[0:(STRING_LEN>>1)-1]), 
                                     .byte_elem2(data_in_odd[0:(STRING_LEN>>1)-1]),
                                     .sorted_array(arr2[0:(STRING_LEN>>1)-1]), 
                                     .wr_fifo(wr_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .sort_num(sort_num));
                        
    fifo #(ELEMENT_LEN,1,COLUMN) 
        fifo2 [(STRING_LEN>>1)-1:0] (.clk(clk), 
                                     .reset(rst), 
                                     .rd(rd_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .wr(wr_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .w_data(arr2[0:(STRING_LEN>>1)-1]), 
                                     .empty(empt_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .full(), 
                                     .r_data(fifo_arr2[0:(STRING_LEN>>1)-1]));
    
    
    //STAGE 4-element array
    sort_arrays #(2,2,COLUMN) 
        stage4 [0:(STRING_LEN>>2)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo2_even[0:(STRING_LEN>>2)-1]), 
                                     .empty_FIFO_R(empt_fifo2_odd[0:(STRING_LEN>>2)-1]),
                                     .array_L(fifo_arr2_even[0:(STRING_LEN>>2)-1]), 
                                     .array_R(fifo_arr2_odd[0:(STRING_LEN>>2)-1]), 
                                     .rd_fifo_L(rd_fifo2_even[0:(STRING_LEN>>2)-1]), 
                                     .rd_fifo_R(rd_fifo2_odd[0:(STRING_LEN>>2)-1]), 
                                     .merged_array(arr4[0:(STRING_LEN>>2)-1]), 
                                     .wr_fifo(wr_fifo4[0:(STRING_LEN>>2)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,2,COLUMN) 
        fifo4 [0:(STRING_LEN>>2)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo4[0:(STRING_LEN>>2)-1]), 
                                    .wr(wr_fifo4[0:(STRING_LEN>>2)-1]), 
                                    .w_data(arr4[0:(STRING_LEN>>2)-1]), 
                                    .empty(empt_fifo4[0:(STRING_LEN>>2)-1]), 
                                    .full(), 
                                    .r_data(fifo_arr4[0:(STRING_LEN>>2)-1]));
    
    
    //STAGE 8-element array
        sort_arrays #(4,3,COLUMN) 
            stage8 [0:(STRING_LEN>>3)-1](.clk(clk), 
                                         .rst(rst), 
                                         .empty_FIFO_L(empt_fifo4_even[0:(STRING_LEN>>3)-1]), 
                                         .empty_FIFO_R(empt_fifo4_odd[0:(STRING_LEN>>3)-1]), 
                                         .array_L(fifo_arr4_even[0:(STRING_LEN>>3)-1]), 
                                         .array_R(fifo_arr4_odd[0:(STRING_LEN>>3)-1]), 
                                         .rd_fifo_L(rd_fifo4_even[0:(STRING_LEN>>3)-1]), 
                                         .rd_fifo_R(rd_fifo4_odd[0:(STRING_LEN>>3)-1]),
                                         .wr_fifo(wr_fifo8[0:(STRING_LEN>>3)-1]), 
                                         .merged_array(arr8[0:(STRING_LEN>>3)-1]),
                                         .sort_num(sort_num));
        
        fifo #(ELEMENT_LEN,3,COLUMN) 
            fifo8 [0:(STRING_LEN>>3)-1](.clk(clk), 
                                        .reset(rst), 
                                        .rd(rd_fifo8[0:(STRING_LEN>>3)-1]), 
                                        .wr(wr_fifo8[0:(STRING_LEN>>3)-1]), 
                                        .w_data(arr8[0:(STRING_LEN>>3)-1]), 
                                        .empty(empt_fifo8[0:(STRING_LEN>>3)-1]), 
                                        .full(), 
                                        .r_data(fifo_arr8[0:(STRING_LEN>>3)-1]));
                                        
    //STAGE 16-element array
    sort_arrays #(2,2,COLUMN) 
        stage16 [0:(STRING_LEN>>4)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo8_even[0:(STRING_LEN>>4)-1]), 
                                     .empty_FIFO_R(empt_fifo8_odd[0:(STRING_LEN>>4)-1]), 
                                     .array_L(fifo_arr8_even[0:(STRING_LEN>>4)-1]), 
                                     .array_R(fifo_arr8_odd[0:(STRING_LEN>>4)-1]), 
                                     .rd_fifo_L(rd_fifo8_even[0:(STRING_LEN>>4)-1]), 
                                     .rd_fifo_R(rd_fifo8_odd[0:(STRING_LEN>>4)-1]), 
                                     .wr_fifo(wr_fifo16[0:(STRING_LEN>>4)-1]), 
                                     .merged_array(arr16[0:(STRING_LEN>>4)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,4,COLUMN) 
        fifo16 [0:(STRING_LEN>>4)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo16[0:(STRING_LEN>>4)-1]), 
                                    .wr(wr_fifo16[0:(STRING_LEN>>4)-1]), 
                                    .w_data(arr16[0:(STRING_LEN>>4)-1]), 
                                    .empty(empt_fifo16[0:(STRING_LEN>>4)-1]), 
                                    .full(),                          
                                    .r_data(fifo_arr16[0:(STRING_LEN>>4)-1]));
    
    //STAGE 32-element array
    sort_arrays #(2,2,COLUMN) 
        stage32 [0:(STRING_LEN>>5)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo16_even[0:(STRING_LEN>>5)-1]), 
                                     .empty_FIFO_R(empt_fifo16_odd[0:(STRING_LEN>>5)-1]), 
                                     .array_L(fifo_arr16_even[0:(STRING_LEN>>5)-1]), 
                                     .array_R(fifo_arr16_odd[0:(STRING_LEN>>5)-1]), 
                                     .rd_fifo_L(rd_fifo16_even[0:(STRING_LEN>>5)-1]), 
                                     .rd_fifo_R(rd_fifo16_odd[0:(STRING_LEN>>5)-1]), 
                                     .wr_fifo(wr_fifo32[0:(STRING_LEN>>5)-1]), 
                                     .merged_array(arr32[0:(STRING_LEN>>5)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,5,COLUMN) 
        fifo32 [0:(STRING_LEN>>5)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo32[0:(STRING_LEN>>5)-1]), 
                                    .wr(wr_fifo32[0:(STRING_LEN>>5)-1]), 
                                    .w_data(arr32[0:(STRING_LEN>>5)-1]), 
                                    .empty(empt_fifo32[0:(STRING_LEN>>5)-1]), 
                                    .full(),                          
                                    .r_data(fifo_arr32[0:(STRING_LEN>>5)-1]));
    
    //STAGE 64-element array
    sort_arrays #(2,2,COLUMN) 
        stage64 [0:(STRING_LEN>>6)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo32_even[0:(STRING_LEN>>6)-1]), 
                                     .empty_FIFO_R(empt_fifo32_odd[0:(STRING_LEN>>6)-1]), 
                                     .array_L(fifo_arr32_even[0:(STRING_LEN>>6)-1]), 
                                     .array_R(fifo_arr32_odd[0:(STRING_LEN>>6)-1]), 
                                     .rd_fifo_L(rd_fifo32_even[0:(STRING_LEN>>6)-1]), 
                                     .rd_fifo_R(rd_fifo32_odd[0:(STRING_LEN>>6)-1]), 
                                     .wr_fifo(wr_fifo64[0:(STRING_LEN>>6)-1]), 
                                     .merged_array(arr64[0:(STRING_LEN>>6)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,6,COLUMN) 
        fifo64 [0:(STRING_LEN>>6)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo64[0:(STRING_LEN>>6)-1]), 
                                    .wr(wr_fifo64[0:(STRING_LEN>>6)-1]), 
                                    .w_data(arr64[0:(STRING_LEN>>6)-1]), 
                                    .empty(empt_fifo64[0:(STRING_LEN>>6)-1]), 
                                    .full(),                          
                                    .r_data(fifo_arr64[0:(STRING_LEN>>6)-1]));
    
    
   //STAGE 128-element array
    sort_arrays #(2,2,COLUMN) 
        stage128 (.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo64[0]), 
                                     .empty_FIFO_R(empt_fifo64[1]),
                                     .array_L(fifo_arr64[8'd0]), 
                                     .array_R(fifo_arr64[8'd1]), 
                                     .rd_fifo_L(rd_fifo64[8'd0]), 
                                     .rd_fifo_R(rd_fifo64[8'd1]), 
                                     .wr_fifo(wr_fifo128[0]), 
                                     .sort_num(sort_num),
                                     .merged_array(arr128[0]));
    
    fifo #(ELEMENT_LEN,7,COLUMN) 
        fifo128 (.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo128[0]), 
                                    .wr(wr_fifo128[0]), 
                                    .w_data(arr128[0]), 
                                    .empty(empt_fifo128[0]), 
                                    .full(), 
                                    .r_data(fifo_arr128[0]));    
    
                                
    always @(posedge clk) begin
        if(!empt_fifo128[0]) 
            rd_fifo128[0] <= 1;
        else begin
            rd_fifo128[0] <= 0;
            i <= 0;
        end
        if(rd_fifo128[0]) begin
            data_out[i] <= fifo_arr128[0];
            i <= i+1;
        end
        else begin
            i <= 0;
        end
    end
    
    assign sorted = (i == STRING_LEN-1);
    
endmodule
