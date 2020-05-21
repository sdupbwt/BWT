`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2020 21:56:54
// Design Name: 
// Module Name: bwt_tb
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


module bwt_tb();

    reg clk, rst, start, start_2;
//    reg [7:0] data_in [0:7][2:0];
//    reg [7:0] data_out  [0:7] [2:0];    

//    reg [7:0] data_out_2 [0:7][2:0];
    reg [7:0] input_string [7:0];
    reg [7:0] input_string_nxt [7:0];
    reg [7:0] input_suffixes [7:0];
    reg [2:0] sort_num;
    reg [3:0] iter;
    reg [7:0] suffixes_out [7:0];
    
    
    MM_top #(8,4) build_sa
    (
    .clk(clk),
    .rst(rst),
    .input_string(input_string),
    .suffixes(input_suffixes),
    .start_sort(start),
    .suffixes_out(suffixes_out)
    );

    always begin
        #5 clk = 0;
        #5 clk = 1;
    end
    
    initial begin
        $display("***** START TEST *****\n");
//        data_in = {{8'h0,8'h1,8'h2},{8'h1,8'h1,8'h3},{8'h2,8'h1,8'h2},{8'h3,8'ha,8'h3},{8'h4,8'h1,8'h2},{8'h5,8'h7,8'h2},{8'h6,8'h1,8'h7},{8'h7,8'h1,8'h2}};
        input_string_nxt = "mississ$";
        foreach(input_string_nxt[i]) begin
            input_suffixes[i] = i;
            input_string[7-i]=input_string_nxt[i];
        end
        #50;
        rst = 1;
        start = 0;
        sort_num = 0;
        iter=0;
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #3500;
        
        $display(suffixes_out);
        $finish;
    end 
    

endmodule
