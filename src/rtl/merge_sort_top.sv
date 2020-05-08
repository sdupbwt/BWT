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
    input wire [7:0] data_in [0:3],
    output reg [7:0] data_out [0:3]
    );
    
    
    wire rd_fifo2_1 [2];
    wire wr_fifo2_1, wr_fifo2_2, wr_fifo4_1;
    wire [7:0] arr2_1, arr2_2, arr4_1;
    wire emp_fifo2_1, emp_fifo2_2, emp_fifo4_1;
    wire [7:0] fifo_arr2_1, fifo_arr2_2, fifo_arr4_1;
    
    reg [2:0] i;
    reg rd_fifo4_1;
    
    sort2elem stage2_1 (.clk(clk), .rst(rst), .en(start), .byte_elem1(data_in[0]), .byte_elem2(data_in[1]), 
                        .sorted_array(arr2_1), .rd_fifo(), .wr_fifo(wr_fifo2_1));
    
    sort2elem stage2_2 (.clk(clk), .rst(rst), .en(start), .byte_elem1(data_in[2]), .byte_elem2(data_in[3]), 
                        .sorted_array(arr2_2), .rd_fifo(), .wr_fifo(wr_fifo2_2));
                        
    
    fifo #(8,1) fifo2_1 (.clk(clk), .reset(rst), .rd(rd_fifo2_1[0]), .wr(wr_fifo2_1), .w_data(arr2_1), 
                                .empty(emp_fifo2_1), .full(), .r_data(fifo_arr2_1));
    
    fifo #(8,1) fifo2_2 (.clk(clk), .reset(rst), .rd(rd_fifo2_1[1]), .wr(wr_fifo2_2), .w_data(arr2_2), 
                                .empty(emp_fifo2_2), .full(), .r_data(fifo_arr2_2));
    
    sort_arrays #(2,4) stage4_1 (.clk(clk), .rst(rst), .start(!emp_fifo2_1 && !emp_fifo2_2),
                                .array_L(fifo_arr2_1), .array_R(fifo_arr2_2), 
                                .merged_array(arr4_1), .rd_fifo(rd_fifo2_1),.wr_fifo(wr_fifo4_1));
    
    fifo #(8,2) fifo4_1 (.clk(clk), .reset(rst), .rd(rd_fifo4_1), .wr(wr_fifo4_1), .w_data(arr4_1), 
                                .empty(emp_fifo4_1), .full(), .r_data(fifo_arr4_1));
                                
    always @(posedge clk) begin
        if(!emp_fifo4_1) 
            rd_fifo4_1 <= 1;
        else 
            rd_fifo4_1 <= 0;
        if(rd_fifo4_1) begin
            data_out[i] <= fifo_arr4_1;
            i++;
        end
        else begin
            i <= 0;
        end
    end
    
endmodule
