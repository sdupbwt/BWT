`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2020 22:43:04
// Design Name: 
// Module Name: sort_arrays
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


module sort_arrays
    #(parameter INPUT_ARR_LEN=2,
      parameter VAR_LEN=2)
    (
    input wire clk,
    input wire rst,
    input wire empty_FIFO_L,
    input wire empty_FIFO_R,
    input wire [7:0] array_L,
    input wire [7:0] array_R,
    output reg [7:0] merged_array,
    output reg [1:0] rd_fifo ,
    output reg wr_fifo
    );
    
    localparam  IDLE        = 3'h0,
                COPY_VAL_L  = 3'h1,
                COPY_VAL_R  = 3'h2,
                READ_DATA   = 3'h3;

    reg [VAR_LEN-1:0] i,j,i_nxt,j_nxt;
    
    always @(posedge clk || rst==1) begin
        if(rst) begin
            i <= 0;
            j <= 0;
            end 
        else begin
            i <= i_nxt;
            j <= j_nxt;
            end 
    end 

    always @* begin
        i_nxt = i;
        j_nxt = j;
        if(!empty_FIFO_L && !empty_FIFO_R) begin
            if (array_L <= array_R) begin
                rd_fifo = {1'b0, 1'b1};
                merged_array = array_L;
                wr_fifo = 1'b1;
                i_nxt = i + 1;
                end
            else begin
                rd_fifo = {1'b1, 1'b0};
                merged_array = array_R;
                wr_fifo = 1'b1;
                j_nxt = j + 1;
                end
            end
            else if(!empty_FIFO_L) begin
                rd_fifo = {1'b0, 1'b1};
                merged_array = array_L;
                wr_fifo = 1'b1;
                i_nxt = i + 1;
            end
            else if(!empty_FIFO_R) begin
                rd_fifo = {1'b1, 1'b0};
                merged_array = array_R;
                wr_fifo = 1'b1;
                j_nxt = j + 1;
            end
            else begin
                rd_fifo = {1'b0, 1'b0};
                i_nxt = 0;
                j_nxt = 0;
                wr_fifo = 1'b0;
            end                 
    end 
endmodule
