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

    localparam STRING_LEN = 64;
    reg clk, rst, start, start_test, start_nxt;
    
    reg [7:0] input_string [STRING_LEN-1:0];
    reg [7:0] input_string_b [STRING_LEN-1:0];
    reg [7:0] iter, iter_nxt, iter_d, iter_d_nxt;
//    reg [7:0] suffixes_out [7:0];
    reg [7:0] output_string [STRING_LEN-1:0], output_string_nxt [STRING_LEN-1:0];
    reg [7:0] output_bwt [STRING_LEN-1:0], test_bwt [STRING_LEN-1:0];
    reg [7:0] input_string_char, input_string_char_nxt;
    reg [7:0] output_string_char;
    reg done;
    reg [3:0] test_num;
    
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
    
    task test_string (input [7:0] in_string [STRING_LEN-1:0], input [7:0] in_test_bwt [STRING_LEN-1:0], input [3:0] test_n, output [7:0] out_string [STRING_LEN-1:0]);
        $display("TESTS: %d", test_n);
        $write("Input string: ");
        foreach(in_string[i]) begin
            $write("%s",in_string[i]);
            input_string[STRING_LEN-1-i]=in_string[i];
        end
         $display();
        #50;
        rst = 1;
        start_test = 0;
        #10;
        rst = 0;
        #10;
        start_test = 1;
        #20;
        start_test = 0;
        #30000;
        
         $write("String after BWT: ");
        foreach(output_string[i]) begin
            $write("%s",output_string[STRING_LEN-1-i]);
            out_string[STRING_LEN-1-i]=output_string[i];
        end 
        $display();
        if(in_test_bwt == test_bwt)
            $display("TEST %d PASSED",test_n);
        else
            $display("TEST %d FAILED",test_n);  
            
        $display();
    endtask 
    
    initial begin
        #20;
        $display("\n\t\t\t\t\t\t\t\t***** START TEST *****");
        test_num = 1;
        input_string_b = "sdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdu$";
        test_bwt = "ussssssssssssssssuuuuuuuuuuuuuuuppppppppppppppp$dddddddddddddddd";
        test_string(input_string_b,test_bwt,test_num,output_bwt);

        test_num++;
        input_string_b = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin$";
        test_bwt = " .rt,mgmrntt$   s ea s rmtnocd psleoueaiiordclLiiuooPin pieicest";
        test_string(input_string_b,test_bwt,test_num,output_bwt);
            
        test_num++;
        input_string_b = "mississippimississippimississippimississippimississippimississi$";
        test_bwt = "ispppppsssssssssssmmmmmmiiiii$pppppiiiiissssssssssssiiiiiiiiiiii";
        test_string(input_string_b,test_bwt,test_num,output_bwt);
            
        test_num++;
        input_string_b = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa$";
        test_bwt = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa$";
        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
        test_num++;
        input_string_b = "bananabananabananabananabananabananabananabananabananabananaban$";
        test_bwt = "nnnnnnnnnnnbnnnnnnnnnnbbbbbbbbbbaaaaaaaaaa$aaaaaaaaaaaaaaaaaaaaa$";
        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
        test_num++;
        input_string_b = "W Szczebrzeszynie chrzaszcz brzmi w trzcinie I Szczebrzeszyn z $";
        test_bwt = "zeIWzewin    $zee  zzzziizzzzcmnnczyiyhtbbbaee  zz crrsSSccrrrss$";
        test_string(input_string_b,test_bwt,test_num,output_bwt);
            
            
        $display("\n\t\t\t\t\t\t\t\t***** TEST FINISHED *****\n");
        $finish;
    end 
    
endmodule
