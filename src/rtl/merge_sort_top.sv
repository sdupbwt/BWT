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
                STRING_LEN = 8)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [1:0] sort_num,
    input wire [COLUMN-1:0][7:0] data_in [0:STRING_LEN-1],
    output reg [COLUMN-1:0][7:0] data_out [0:STRING_LEN-1],
    output wire sorted
    );
    
    
    localparam  ELEMENT_LEN = 8;

    // Variables for STAGE 2-element array
    wire rd_fifo2 [STRING_LEN>>1];
    wire [COLUMN-1:0][ELEMENT_LEN-1:0] arr2 [STRING_LEN>>1];
    wire [COLUMN-1:0][7:0] fifo_arr2 [STRING_LEN>>1];
    wire wr_fifo2 [STRING_LEN>>1];
    wire empt_fifo2 [STRING_LEN>>1];
    
    // Variables for STAGE 4-element array 
    wire [COLUMN-1:0][ELEMENT_LEN-1:0] arr4 [STRING_LEN>>2];
    wire [COLUMN-1:0][7:0] fifo_arr4 [STRING_LEN>>2];
    wire rd_fifo4 [STRING_LEN>>2];
    wire empt_fifo4 [STRING_LEN>>2];
    wire wr_fifo4 [STRING_LEN>>2];
    
    // Variables for STAGE 8-element array 
    wire [COLUMN-1:0][ELEMENT_LEN-1:0] arr8 [STRING_LEN>>3];
    wire [COLUMN-1:0][7:0] fifo_arr8 [STRING_LEN>>3];
    wire empt_fifo8 [STRING_LEN>>3];
    wire wr_fifo8 [STRING_LEN>>3];
    reg rd_fifo8 [STRING_LEN>>3];
    
    reg [2:0] i;
    genvar m_num;
    
    //STAGE 2-element array
    sort2elem #(COLUMN) 
        stage2 [0:(STRING_LEN>>1)-1](.clk(clk), 
                                     .rst(rst), 
                                     .en(start), 
                                     .byte_elem1(data_in[0:(STRING_LEN>>1)-1]), 
                                     .byte_elem2(data_in[(STRING_LEN>>1)+:(STRING_LEN>>1)]), 
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
                                     .empty_FIFO_L(empt_fifo2[0:(STRING_LEN>>2)-1]), 
                                     .empty_FIFO_R(empt_fifo2[(STRING_LEN>>2)+:(STRING_LEN>>2)]),
                                     .array_L(fifo_arr2[0:(STRING_LEN>>2)-1]), 
                                     .array_R(fifo_arr2[(STRING_LEN>>2)+:(STRING_LEN>>2)]), 
                                     .merged_array(arr4[0:(STRING_LEN>>2)-1]), 
                                     .rd_fifo_L(rd_fifo2[0:1]), 
                                     .rd_fifo_R(rd_fifo2[2:3]), 
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
            stage8 (.clk(clk), 
                    .rst(rst), 
                    .empty_FIFO_L(empt_fifo4[0]), 
                    .empty_FIFO_R(empt_fifo4[1]),
                    .array_L(fifo_arr4[0]), 
                    .array_R(fifo_arr4[1]), 
                    .merged_array(arr8[0]), 
                    .rd_fifo_L(rd_fifo4[0]), 
                    .rd_fifo_R(rd_fifo4[1]), 
                    .wr_fifo(wr_fifo8[0]), 
                    .sort_num(sort_num));
        
        fifo #(ELEMENT_LEN,3,COLUMN) 
            fifo8 (.clk(clk), 
                   .reset(rst), 
                   .rd(rd_fifo8[0]), 
                   .wr(wr_fifo8[0]), 
                   .w_data(arr8[0]), 
                   .empty(empt_fifo8[0]), 
                   .full(), 
                   .r_data(fifo_arr8[0]));
                                
    always @(posedge clk) begin
        if(!empt_fifo8[0]) 
            rd_fifo8[0] <= 1;
        else begin
            rd_fifo8[0] <= 0;
            i <= 0;
        end
        if(rd_fifo8[0]) begin
            data_out[i] <= fifo_arr8[0];
            i <= i+1;
        end
        else begin
            i <= 0;
        end
    end
    
    assign sorted = (i == ELEMENT_LEN-1);
    
endmodule
