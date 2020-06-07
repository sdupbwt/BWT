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
                STRING_LEN_n = 32)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire sort_num,
    input wire [7:0] data_in [0:32-1][COLUMN-1:0],
    output reg [7:0] data_out[0:32-1][COLUMN-1:0],
    output wire sorted
    );
    
    localparam STRING_LEN = 32;
    localparam  ELEMENT_LEN = 8;

    // Variables for STAGE 2-element array
    wire rd_fifo2 [STRING_LEN>>1];
    wire [ELEMENT_LEN-1:0] arr2 [STRING_LEN>>1][COLUMN-1:0];
    wire [7:0] fifo_arr2        [STRING_LEN>>1][COLUMN-1:0];
    wire wr_fifo2 [STRING_LEN>>1];
    wire empt_fifo2 [STRING_LEN>>1];
    
    // Variables for STAGE 4-element array 
    wire [ELEMENT_LEN-1:0] arr4 [STRING_LEN>>2][COLUMN-1:0];
    wire [7:0] fifo_arr4        [STRING_LEN>>2][COLUMN-1:0];
    wire rd_fifo4 [STRING_LEN>>2];
    wire empt_fifo4 [STRING_LEN>>2];
    wire wr_fifo4 [STRING_LEN>>2];
    
    // Variables for STAGE 8-element array 
    wire [ELEMENT_LEN-1:0] arr8 [STRING_LEN>>3][COLUMN-1:0];
    wire [7:0] fifo_arr8        [STRING_LEN>>3][COLUMN-1:0];
    wire empt_fifo8 [STRING_LEN>>3];
    wire wr_fifo8 [STRING_LEN>>3];
    reg rd_fifo8 [STRING_LEN>>3];
    
    // Variables for STAGE 16-element array 
    wire [ELEMENT_LEN-1:0] arr16 [STRING_LEN>>4][COLUMN-1:0];
    wire [7:0] fifo_arr16        [STRING_LEN>>4][COLUMN-1:0];
    wire empt_fifo16 [STRING_LEN>>4];
    wire wr_fifo16 [STRING_LEN>>4];
    reg rd_fifo16 [STRING_LEN>>4];
    
    // Variables for STAGE 32-element array 
    wire [ELEMENT_LEN-1:0] arr32 [STRING_LEN>>5][COLUMN-1:0];
    wire [7:0] fifo_arr32        [STRING_LEN>>5][COLUMN-1:0];
    wire empt_fifo32 [STRING_LEN>>5];
    wire wr_fifo32 [STRING_LEN>>5];
    reg rd_fifo32 [STRING_LEN>>5];
    
    reg [7:0] i;
    genvar m_num;
    
    //STAGE 2-element array
    sort2elem #(COLUMN) 
        stage2 [0:(STRING_LEN>>1)-1](.clk(clk), 
                                     .rst(rst), 
                                     .en(start), 
                                     .byte_elem1({<<{data_in[8'd0],data_in[8'd2],data_in[8'd4],data_in[8'd6],
                                                     data_in[8'd8],data_in[8'd10],data_in[8'd12],data_in[8'd14],
                                                     data_in[8'd16],data_in[8'd18],data_in[8'd20],data_in[8'd22],
                                                     data_in[8'd24],data_in[8'd26],data_in[8'd28],data_in[8'd30]}}), 
                                     .byte_elem2({<<{data_in[8'd1],data_in[8'd3],data_in[8'd5],data_in[8'd7],
                                                     data_in[8'd9],data_in[8'd11],data_in[8'd13],data_in[8'd15],    
                                                     data_in[8'd17],data_in[8'd19],data_in[8'd21],data_in[8'd23],   
                                                     data_in[8'd25],data_in[8'd27],data_in[8'd29],data_in[8'd31]}}),
                                     .sorted_array(arr2[0:(STRING_LEN>>1)-1]), 
                                     .rd_fifo(), 
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
                                     .empty_FIFO_L({<<{empt_fifo2[0],empt_fifo2[2],empt_fifo2[4],empt_fifo2[6],
                                                        empt_fifo2[8],empt_fifo2[10],empt_fifo2[12],empt_fifo2[14]}}), 
                                     .empty_FIFO_R({<<{empt_fifo2[1],empt_fifo2[3],empt_fifo2[5],empt_fifo2[7],
                                                        empt_fifo2[9],empt_fifo2[11],empt_fifo2[13],empt_fifo2[15]}}),
                                     .array_L({<<{fifo_arr2[8'd0],fifo_arr2[8'd2],fifo_arr2[8'd4],fifo_arr2[8'd6],
                                                  fifo_arr2[8'd8],fifo_arr2[8'd10],fifo_arr2[8'd12],fifo_arr2[8'd14]}}), 
                                     .array_R({<<{fifo_arr2[8'd1],fifo_arr2[8'd3],fifo_arr2[8'd5],fifo_arr2[8'd7],
                                                  fifo_arr2[8'd9],fifo_arr2[8'd11],fifo_arr2[8'd13],fifo_arr2[8'd15]}}), 
                                     .merged_array(arr4[0:(STRING_LEN>>2)-1]), 
                                     .rd_fifo_L({<<{rd_fifo2[8'd0],rd_fifo2[8'd2],rd_fifo2[8'd4],rd_fifo2[8'd6],
                                                    rd_fifo2[8'd8],rd_fifo2[8'd10],rd_fifo2[8'd12],rd_fifo2[8'd14]}}), 
                                     .rd_fifo_R({<<{rd_fifo2[8'd1],rd_fifo2[8'd3],rd_fifo2[8'd5],rd_fifo2[8'd7],
                                                    rd_fifo2[8'd9],rd_fifo2[8'd11],rd_fifo2[8'd13],rd_fifo2[8'd15]}}), 
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
                                         .empty_FIFO_L({<<{empt_fifo4[0],empt_fifo4[2],empt_fifo4[4],empt_fifo4[6]}}), 
                                         .empty_FIFO_R({<<{empt_fifo4[1],empt_fifo4[3],empt_fifo4[5],empt_fifo4[7]}}), 
                                         .array_L({<<{fifo_arr4[0],fifo_arr4[2],fifo_arr4[4],fifo_arr4[6]}}), 
                                         .array_R({<<{fifo_arr4[1],fifo_arr4[3],fifo_arr4[5],fifo_arr4[7]}}), 
                                         .merged_array(arr8[0:(STRING_LEN>>3)-1]), 
                                         .rd_fifo_L({<<{rd_fifo4[8'd0],rd_fifo4[8'd2],rd_fifo4[8'd4],rd_fifo4[8'd6]}}),
                                         .rd_fifo_R({<<{rd_fifo4[8'd1],rd_fifo4[8'd3],rd_fifo4[8'd5],rd_fifo4[8'd7]}}), 
                                         .wr_fifo(wr_fifo8[0:(STRING_LEN>>3)-1]), 
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
                                     .empty_FIFO_L({<<{empt_fifo8[0],empt_fifo8[2]}}), 
                                     .empty_FIFO_R({<<{empt_fifo8[1],empt_fifo8[3]}}),
                                     .array_L({<<{fifo_arr8[8'd0],fifo_arr8[8'd2]}}), 
                                     .array_R({<<{fifo_arr8[8'd1],fifo_arr8[8'd3]}}), 
                                     .merged_array(arr16[0:(STRING_LEN>>4)-1]), 
                                     .rd_fifo_L({<<{rd_fifo8[8'd0],rd_fifo8[8'd2]}}), 
                                     .rd_fifo_R({<<{rd_fifo8[8'd1],rd_fifo8[8'd3]}}), 
                                     .wr_fifo(wr_fifo16[0:(STRING_LEN>>4)-1]), 
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
        stage32 (.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo16[0]), 
                                     .empty_FIFO_R(empt_fifo16[1]),
                                     .array_L(fifo_arr16[8'd0]), 
                                     .array_R(fifo_arr16[8'd1]), 
                                     .merged_array(arr32[0]), 
                                     .rd_fifo_L(rd_fifo16[8'd0]), 
                                     .rd_fifo_R(rd_fifo16[8'd1]), 
                                     .wr_fifo(wr_fifo32[0]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,5,COLUMN) 
        fifo32 (.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo32[0]), 
                                    .wr(wr_fifo32[0]), 
                                    .w_data(arr32[0]), 
                                    .empty(empt_fifo32[0]), 
                                    .full(), 
                                    .r_data(fifo_arr32[0]));    
    
                                
    always @(posedge clk) begin
        if(!empt_fifo32[0]) 
            rd_fifo32[0] <= 1;
        else begin
            rd_fifo32[0] <= 0;
            i <= 0;
        end
        if(rd_fifo32[0]) begin
            data_out[i] <= fifo_arr32[0];
            i <= i+1;
        end
        else begin
            i <= 0;
        end
    end
    
    assign sorted = (i == STRING_LEN-1);
    
endmodule
