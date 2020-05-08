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
      parameter VAR_LEN=4)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] array_L,
    input wire [7:0] array_R,
    output reg [7:0] merged_array,
    output reg rd_fifo [0:1],
    output reg wr_fifo
    );
    
    localparam  IDLE        = 3'h0,
                COPY_VAL_L  = 3'h1,
                COPY_VAL_R  = 3'h2,
                READ_DATA   = 3'h3;

    
    reg [VAR_LEN-1:0] i,j,i_nxt,j_nxt;
    reg [7:0] merged_array_nxt;
    reg [2:0] state, state_nxt;
    reg rd_fifo_nxt [1:0];
    reg wr_fifo_nxt;
    reg [7:0] val_L, val_R;
    
    always @(posedge clk || rst==1) begin
        if(rst) begin
            merged_array <= 0;
            i <= 0;
            j <= 0;
            state <= 0;
//            rd_fifo <= {1'b0,1'b0};
            wr_fifo <= 0;
            end 
        else begin
            merged_array <= merged_array_nxt;
            i <= i_nxt;
            j <= j_nxt;
            state <= state_nxt;
//            rd_fifo <= rd_fifo_nxt;
            wr_fifo <= wr_fifo_nxt;
            end 
    end 

    always @* begin
        case(state)
            IDLE: begin
                i_nxt = 0;
                j_nxt = 0;
                wr_fifo_nxt = 1'b0;
                if(start) begin
                    state_nxt = READ_DATA;
                    val_L = array_L;
                    val_R = array_R;
                    if (val_L <= val_R) begin
                        state_nxt = COPY_VAL_L;
                        rd_fifo = {1'b1, 1'b0};
                        merged_array_nxt = array_L;
                    end
                    else begin
                        state_nxt = COPY_VAL_R;
                        rd_fifo = {1'b0, 1'b1};
                        merged_array_nxt = array_R;
                    end
                end
                else begin
                    state_nxt = IDLE;
                    rd_fifo = {1'b0, 1'b0};
                end
            end
            COPY_VAL_L: begin
                if(i+j >= INPUT_ARR_LEN<<1) begin
                    rd_fifo = {1'b0, 1'b0};
                    state_nxt = IDLE;
                end
                else begin
                    
                    wr_fifo_nxt = 1'b1;
                    i_nxt = i + 1;
                    if((j >= INPUT_ARR_LEN) || ((i < INPUT_ARR_LEN-1)&& (array_L <= array_R))) begin
                        rd_fifo = {1'b1, 1'b0};
                        merged_array_nxt = array_L;
                        state_nxt = COPY_VAL_L;
                    end
                    else if(j < INPUT_ARR_LEN-1)begin
                        rd_fifo = {1'b0, 1'b1};
                        merged_array_nxt = array_R;
                        state_nxt = COPY_VAL_R;
                    end
                    else begin
                        rd_fifo = {1'b0, 1'b0};
                        state_nxt = IDLE;
                    end
                end
            end
            COPY_VAL_R: begin
                if(i+j >= INPUT_ARR_LEN<<1) begin
                    rd_fifo = {1'b0, 1'b0};
                    state_nxt = IDLE;
                end
                else begin
                    
                    wr_fifo = 1'b1;
                    j_nxt = j + 1;
                    if((i >= INPUT_ARR_LEN) || ((j < INPUT_ARR_LEN-1)&& (array_L > array_R))) begin
                        rd_fifo = {1'b0, 1'b1};
                        state_nxt = COPY_VAL_R;
                        merged_array_nxt = array_R;
                    end
                    else if(i < INPUT_ARR_LEN-1)begin
                        rd_fifo = {1'b1, 1'b0};
                        state_nxt = COPY_VAL_L;
                        merged_array_nxt = array_L;
                    end
                    else begin
                        rd_fifo = {1'b0, 1'b0};
                        state_nxt = IDLE;
                    end
                end
            end
            default: begin
                i_nxt = 0;
                j_nxt = 0;
                rd_fifo = {1'b0, 1'b0};
                wr_fifo = 1'b0;
                state_nxt = IDLE;
            end
        endcase
    end 
   
   
  
   
//   always @* begin
//        i=0;
//        j=0;
//        for (k=0; k<(INPUT_ARR_LEN<<1); k++) begin
//            if (i >= INPUT_ARR_LEN) begin       //copy remaining elements
//                merged_array_temp[k] = array_R[j];
//                j++;
//            end
//            else if (j >= INPUT_ARR_LEN) begin      //copy remaining elements
//                merged_array_temp[k] = array_L[i];
//                i++;
//            end
//            else if (array_L[i] <= array_R[j]) begin
//                merged_array_temp[k] = array_L[i];  
//                i++;
//            end
//            else begin
//                merged_array_temp[k] = array_R[j]; 
//                j++;
//            end 
//        end
//    end 
     

endmodule
