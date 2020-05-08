`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2020 21:56:29
// Design Name: 
// Module Name: sort2elem
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


module sort2elem(
    input wire clk,
    input wire rst,
    input wire en,
    input wire [7:0] byte_elem1,
    input wire [7:0] byte_elem2,
    output reg [7:0] sorted_array,
    output reg rd_fifo [1:0],
    output reg wr_fifo
    );
    
    localparam  IDLE = 2'h0,
                COPY_VAL_1 = 2'h1,
                COPY_VAL_2 = 2'h2;
    
    reg [7:0] sorted_array_nxt;
    reg rd_fifo_nxt [1:0];
    reg wr_fifo_nxt;
    reg [1:0] state, state_nxt;
   
    always @(posedge clk) begin
    if(rst) begin
        sorted_array <= '{8'h0};
        wr_fifo <= 0;
        rd_fifo <= {1'b0, 1'b0};
        state <= IDLE;
    end 
    else begin
        sorted_array <= sorted_array_nxt;
        wr_fifo <= wr_fifo_nxt;
        rd_fifo <= rd_fifo_nxt;
        state <= state_nxt;
    end   
    end 
        
    always @* begin
        case(state)
            IDLE: state_nxt = en ? ((byte_elem1 <= byte_elem2) ? COPY_VAL_1 : COPY_VAL_2) : IDLE;
            COPY_VAL_1: state_nxt = wr_fifo ? IDLE : COPY_VAL_2;
            COPY_VAL_2: state_nxt = wr_fifo ? IDLE : COPY_VAL_1;
            default: state_nxt = IDLE;
        endcase
    end    
        
        
    always @* begin
        case(state)
            IDLE: begin
                rd_fifo_nxt = {1'b1, 1'b1};
                wr_fifo_nxt = 1'b0;
            end
            COPY_VAL_1: begin
                sorted_array_nxt = byte_elem1;
                rd_fifo_nxt = {1'b0, 1'b0};
                wr_fifo_nxt = 1'b1;
            end
            COPY_VAL_2: begin
                sorted_array_nxt = byte_elem2;
                rd_fifo_nxt = {1'b0, 1'b0};
                wr_fifo_nxt = 1'b1;
            end
            default: begin
                rd_fifo_nxt = {1'b0, 1'b0};
                wr_fifo_nxt = 1'b0;
            end
        endcase
    end
    
endmodule
