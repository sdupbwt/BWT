`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2020 21:14:07
// Design Name: 
// Module Name: bwt_top_tb
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


module bwt_top_tb();

    localparam STRING_LEN = 128;
    reg clk, rst, start, start_test, start_nxt;
    
    reg [7:0] input_string [STRING_LEN-1:0];
    reg [7:0] input_string_nxt [STRING_LEN-1:0];
    reg [7:0] iter, iter_nxt, iter_d, iter_d_nxt;
//    reg [7:0] suffixes_out [7:0];
    reg [7:0] output_string [STRING_LEN-1:0], output_string_nxt [STRING_LEN-1:0];
    
    reg [7:0] input_string_char, input_string_char_nxt;
    reg [7:0] output_string_char;
    reg done;
    
    bwt_top#(STRING_LEN) bwt_test
    (
    .clk(clk),
    .rst(rst),
    .start(start),
    .input_string_char(input_string_char),
    .output_string_char(output_string_char),
    .valid_out(done)
    );

    always begin
        #5 clk = 0;
        #5 clk = 1;
    end
    
    always @(posedge clk) begin
    if(rst) begin
        iter <= 0;
        input_string_char <= 0;
        output_string <= '{STRING_LEN{7'h0}};
        start <= 0;
        iter_d <= 0;
    end
    else begin
        iter <= iter_nxt;
        input_string_char <= input_string_char_nxt;
        output_string <= output_string_nxt;
        start <= start_nxt;
        iter_d <= iter_d_nxt;
    end
    end
    
    always @* begin
    iter_nxt = iter;
    start_nxt = 0;
    iter_d_nxt = iter_d;
        if(start_test || iter != 0) begin
            input_string_char_nxt = input_string[iter];
            iter_nxt = iter + 1;
            start_nxt = 1;
            if(iter == STRING_LEN) begin
                iter_nxt = 0;
                start_nxt = 0;
            end
        end
        if(done) begin
            output_string_nxt[iter_d] = output_string_char;
            iter_d_nxt = iter_d + 1;
            if(iter_d == STRING_LEN-1)
                iter_d_nxt = 0;
        end
    end
    
    initial begin
        $display("***** START TEST *****\n");
        input_string_nxt = "mississippiamississippiamississippiamississippiamississippiamississippiamississippiamississippiamississippiamississippiaabcdefg$";
        foreach(input_string_nxt[i]) begin
            input_string[STRING_LEN-1-i]=input_string_nxt[i];
        end
        #50;
        rst = 1;
        start_test = 0;
        #10;
        rst = 0;
        #10;
        start_test = 1;
        #20;
        start_test = 0;
        #200000;
        
        foreach(output_string[i])
            $write("%s",output_string[STRING_LEN-1-i]);
            
        $display();
        $finish;
    end 
    
endmodule
