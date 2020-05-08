`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2020 00:40:03
// Design Name: 
// Module Name: merge_sort_tb
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


module merge_sort_tb(
    );
    
    reg clk, rst, start;
    reg [7:0] data_in [0:3];
    reg [7:0] data_out [0:3];
    
    always begin
        #5 clk = 0;
        #5 clk = 1;
    end
    
    merge_sort_top ms_test(.clk(clk),.rst(rst),.start(start),.data_in(data_in),.data_out(data_out));
    
    initial begin
        data_in = "badc";
        rst = 1;
        start = 0;
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #1000;
        $display("merged_array: %p", data_out);
        $finish;
    end 
    
    
endmodule
