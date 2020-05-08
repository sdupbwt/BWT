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
    input wire start,
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
    reg [7:0] merged_array_nxt;
    reg [2:0] state, state_nxt;
    reg wr_fifo_nxt;
    
    always @(posedge clk || rst==1) begin
        if(rst) begin
            merged_array <= 0;
            i <= 0;
            j <= 0;
            state <= 0;
            wr_fifo <= 0;
            end 
        else begin
            merged_array <= merged_array_nxt;
            i <= i_nxt;
            j <= j_nxt;
            state <= state_nxt;
            wr_fifo <= wr_fifo_nxt;
            end 
    end 

    always @* begin
        i_nxt = i;
        j_nxt = j;
        merged_array_nxt = merged_array;
        case(state)
            IDLE: begin
                i_nxt = 0;
                j_nxt = 0;
                wr_fifo_nxt = 1'b0;
                if(start) begin
                    state_nxt = READ_DATA;
                    if (array_L <= array_R) begin
                        rd_fifo = {1'b0, 1'b1};
                        merged_array_nxt = array_L;
                        wr_fifo_nxt = 1'b1;
                        i_nxt = i + 1;
                    end
                    else begin
                        rd_fifo = {1'b1, 1'b0};
                        merged_array_nxt = array_R;
                        wr_fifo_nxt = 1'b1;
                        j_nxt = j + 1;
                    end
                end
                else begin
                    state_nxt = IDLE;
                    rd_fifo = {1'b0, 1'b0};
                end
            end
            READ_DATA: begin
                wr_fifo_nxt = 1'b0;
                if(i+j >= INPUT_ARR_LEN<<1) begin
                    rd_fifo = {1'b1, 1'b1};
                    state_nxt = IDLE;
                end
                else begin
                    if((j >= INPUT_ARR_LEN) || ((i <= INPUT_ARR_LEN-1) && (array_L <= array_R))) begin
                        merged_array_nxt = array_L;
                        wr_fifo_nxt = 1'b1;
                        i_nxt = i + 1;
                        state_nxt = READ_DATA;
                        if(i >= INPUT_ARR_LEN-1)
                            rd_fifo = {1'b0, 1'b0};
                        else
                            rd_fifo = {1'b0, 1'b1};
                    end
                    else if((i >= INPUT_ARR_LEN) || ((j <= INPUT_ARR_LEN-1) && (array_L > array_R))) begin
                        merged_array_nxt = array_R;
                        wr_fifo_nxt = 1'b1;
                        j_nxt = j + 1;
                        state_nxt = READ_DATA;
                        if(j >= INPUT_ARR_LEN-1)
                            rd_fifo = {1'b0, 1'b0};
                        else
                            rd_fifo = {1'b1, 1'b0};
                    end
                    else begin
                        rd_fifo = {1'b1, 1'b1};
                        state_nxt = IDLE;
                    end
                end
            end
            default: begin
                i_nxt = 0;
                j_nxt = 0;
                rd_fifo = {1'b0, 1'b0};
                wr_fifo_nxt = 1'b0;
                state_nxt = IDLE;
            end
        endcase
    end 
endmodule
