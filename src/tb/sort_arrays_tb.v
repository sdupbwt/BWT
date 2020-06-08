`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2020 00:26:57
// Design Name: 
// Module Name: sort_arrays_tb
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


module sort_arrays_tb(
    );
    
    parameter INPUT_ARR_LEN=2;
    
    reg clk, rst;
    reg [7:0]  array_L[INPUT_ARR_LEN-1:0];
    reg [7:0]  array_R[INPUT_ARR_LEN-1:0];
    reg [7:0]  merged_array [2*INPUT_ARR_LEN-1:0];
    
    //clock generator stimuli
    always begin
        #5 clk = 0;
        #5 clk = 1;
    end
    
    sort_arrays sort_2elem_arr(
    .clk(clk),
    .rst(rst),
    .array_L(array_L),
    .array_R(array_R),
    .merged_array(merged_array));
    
    initial begin
        array_L = "ba";
        array_R = "ca";
        rst = 1;
        #10;
        rst = 0;
        #10;
        #1000;
        $display("merged_array: %p", merged_array);
        $finish;
    end 
    
    
endmodule
