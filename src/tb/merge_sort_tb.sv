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
    reg [7:0] data_in [0:7];
    reg [7:0] data_out [0:7];
    
    always begin
        #5 clk = 0;
        #5 clk = 1;
    end
    
    merge_sort_top ms_test(.clk(clk),.rst(rst),.start(start),.data_in(data_in),.data_out(data_out));
    
    initial begin
        $display("***** START TEST *****\n");
        data_in = "cadbabab";
        rst = 1;
        start = 0;
        $write("input string:");
        foreach(data_in[i])
            $write("%s", data_in[i]);
        $write("\n");
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #1000;
        $write("output string:");
        foreach(data_out[i])
            $write("%s", data_out[i]);
        $write("\n\n");
        
        data_in = "babacdaf";
        rst = 1;
        start = 0;
        $write("input string:");
        foreach(data_in[i])
            $write("%s", data_in[i]);
        $write("\n");
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #200;
        $write("output string:");
        foreach(data_out[i])
            $write("%s", data_out[i]);
        $write("\n\n");
        
        data_in = "twoabbtt";
        rst = 1;
        start = 0;
        $write("input string:");
        foreach(data_in[i])
            $write("%s", data_in[i]);
        $write("\n");
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #200;
        $write("output string:");
        foreach(data_out[i])
            $write("%s", data_out[i]);
        $write("\n\n");
        
        data_in = "abcdefgh";
        rst = 1;
        start = 0;
        $write("input string:");
        foreach(data_in[i])
            $write("%s", data_in[i]);
        $write("\n");
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #200;
        $write("output string:");
        foreach(data_out[i])
            $write("%s", data_out[i]);
        $write("\n\n");
        
        data_in = "hgfedcba";
        rst = 1;
        start = 0;
        $write("input string:");
        foreach(data_in[i])
            $write("%s", data_in[i]);
        $write("\n");
        #10;
        rst = 0;
        #10;
        start = 1;
        #10;
        start = 0;
        #200;
        $write("output string:");
        foreach(data_out[i])
            $write("%s", data_out[i]);
        $write("\n\n");
        
        $display("***** FINISH TEST *****\n");
        $finish;
    end 
    
    
endmodule
