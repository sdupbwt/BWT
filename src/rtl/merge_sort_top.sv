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


module merge_sort_top(
    input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] data_in [0:7],
    output reg [7:0] data_out [0:7]
    );
    
    localparam  ELEMENT_NUM = 8,
                ELEMENT_LEN = 8;

    // Variables for STAGE 2-element array
    wire [ELEMENT_NUM-1:0] rd_fifo2;
    wire [ELEMENT_LEN-1:0] arr2 [ELEMENT_NUM>>1];
    wire [7:0] fifo_arr2 [ELEMENT_NUM>>1];
    wire wr_fifo2 [ELEMENT_NUM>>1];
    wire empt_fifo2 [ELEMENT_NUM>>1];
    
    // Variables for STAGE 4-element array 
    wire [ELEMENT_LEN-1:0] arr4 [ELEMENT_NUM>>2];
    wire [7:0] fifo_arr4 [ELEMENT_NUM>>2];
    wire [ELEMENT_NUM>>1-1:0] rd_fifo4;
    wire empt_fifo4 [ELEMENT_NUM>>2];
    wire wr_fifo4 [ELEMENT_NUM>>2];
    
    // Variables for STAGE 8-element array 
    wire [ELEMENT_LEN-1:0] arr8 [ELEMENT_NUM>>3];
    wire [7:0] fifo_arr8 [ELEMENT_NUM>>3];
    wire empt_fifo8 [ELEMENT_NUM>>3];
    wire wr_fifo8 [ELEMENT_NUM>>2];
    reg [ELEMENT_NUM>>2-1:0] rd_fifo8;
    
    reg [2:0] i;
    genvar m_num;
    
    //STAGE 2-element array
    for(m_num=0; m_num<(ELEMENT_NUM>>1); m_num++) begin: stage2
        sort2elem stage (.clk(clk), .rst(rst), .en(start), .byte_elem1(data_in[m_num<<1]), .byte_elem2(data_in[(m_num<<1)+1]), 
                        .sorted_array(arr2[m_num]), .rd_fifo(), .wr_fifo(wr_fifo2[m_num]));
                        
        fifo #(ELEMENT_LEN,1) fifo2 (.clk(clk), .reset(rst), .rd(rd_fifo2[m_num]), .wr(wr_fifo2[m_num]), .w_data(arr2[m_num]), 
                                    .empty(empt_fifo2[m_num]), .full(), .r_data(fifo_arr2[m_num]));
    end
    
    //STAGE 4-element array
    for(m_num=0; m_num<(ELEMENT_NUM>>2); m_num++) begin: stage4
    sort_arrays #(2,2) stage4 (.clk(clk), .rst(rst), .empty_FIFO_L(empt_fifo2[m_num<<1]), .empty_FIFO_R(empt_fifo2[(m_num<<1)+1]),
                                .array_L(fifo_arr2[m_num<<1]), .array_R(fifo_arr2[(m_num<<1)+1]), 
                                .merged_array(arr4[m_num]), .rd_fifo(rd_fifo2[(m_num<<1)+:2]),.wr_fifo(wr_fifo4[m_num]));
    
    fifo #(ELEMENT_LEN,2) fifo4 (.clk(clk), .reset(rst), .rd(rd_fifo4[m_num]), .wr(wr_fifo4[m_num]), .w_data(arr4[m_num]), 
                                .empty(empt_fifo4[m_num]), .full(), .r_data(fifo_arr4[m_num]));
    end
    
    //STAGE 8-element array
    for(m_num=0; m_num<(ELEMENT_NUM>>3); m_num++) begin: stage8
        sort_arrays #(4,3) stage8 (.clk(clk), .rst(rst), .empty_FIFO_L(empt_fifo4[m_num<<1]), .empty_FIFO_R(empt_fifo4[(m_num<<1)+1]),
                                    .array_L(fifo_arr4[m_num<<1]), .array_R(fifo_arr4[(m_num<<1)+1]), 
                                    .merged_array(arr8[m_num]), .rd_fifo(rd_fifo4[(m_num<<1)+:2]),.wr_fifo(wr_fifo8[m_num]));
        
        fifo #(ELEMENT_LEN,3) fifo8 (.clk(clk), .reset(rst), .rd(rd_fifo8[m_num]), .wr(wr_fifo8[m_num]), .w_data(arr8[m_num]), 
                                    .empty(empt_fifo8[m_num]), .full(), .r_data(fifo_arr8[m_num]));
    end
                                
    always @(posedge clk) begin
        if(!empt_fifo8[0]) 
            rd_fifo8[0] <= 1;
        else 
            rd_fifo8[0] <= 0;
        if(rd_fifo8[0]) begin
            data_out[i] <= fifo_arr8[0];
            i++;
        end
        else begin
            i <= 0;
        end
    end
    
endmodule
