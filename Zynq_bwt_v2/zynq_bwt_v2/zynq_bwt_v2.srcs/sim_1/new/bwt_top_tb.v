`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2020 15:23:55
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


    localparam STRING_LEN = 32;
    reg clk, rst, start, start_test, start_nxt;
    
    reg [7:0] input_string [STRING_LEN-1:0];
    reg [7:0] input_string_b [STRING_LEN-1:0];
    reg [7:0] iter, iter_nxt, iter_d, iter_d_nxt;
    reg [7:0] suffixes_out [STRING_LEN-1:0];
    reg [255:0] output_string;//, output_string_nxt [STRING_LEN-1:0];
    reg [7:0] output_bwt [STRING_LEN-1:0], test_bwt [STRING_LEN-1:0];
    reg [255:0] input_string_char, input_string_char_nxt;
    reg [255:0] output_string_char;
    reg valid_out;
    reg [3:0] test_num;
    int failed_tests;
    
    bwt_top#(STRING_LEN) bwt_test
    (
    .clk(clk),
    .rst(rst),
    .start(start),
    .input_string_char(input_string_char),
    .output_string_char(output_string_char),
    .valid_out(valid_out)
    );

    always begin
        #10 clk = 0;
        #10 clk = 1;
    end
    
    
//    always @(posedge clk) begin
//    if(rst) begin
//        iter <= 0;
////        input_string_char <= 0;
////        output_string <= '{STRING_LEN{7'h0}};
//        start <= 0;
//        iter_d <= 0;
//    end
//    else begin
//        iter <= iter_nxt;
////        input_string_char <= input_string_char_nxt;
////        output_string <= output_string_nxt;
//        start <= start_nxt;
//        iter_d <= iter_d_nxt;
//    end
//    end
    
//    always @* begin
//    iter_nxt = iter;
//    start_nxt = 0;
//    iter_d_nxt = iter_d;
//        if(start_test || iter != 0) begin
//            input_string_char_nxt = input_string[iter];
//            iter_nxt = iter + 1;
//            start_nxt = 1;
//            if(iter == STRING_LEN) begin
//                iter_nxt = 0;
//                start_nxt = 0;
//            end
//        end
//        if(done) begin
//            output_string_nxt[iter_d] = output_string_char;
//            iter_d_nxt = iter_d + 1;
//            if(iter_d == STRING_LEN-1)
//                iter_d_nxt = 0;
//        end
//    end
    
//    task test_string (input [7:0] in_string [STRING_LEN-1:0], input [7:0] gen_test_bwt [STRING_LEN-1:0], input [3:0] test_n, output [7:0] out_string [STRING_LEN-1:0]);
//        $display("TESTS: %d", test_n);
//        $write("Input string: ");
////        foreach(in_string[i]) begin
////            $write("%s",in_string[i]);
////            input_string[STRING_LEN-1-i]=in_string[i];
////        end
//         $display();
//        repeat (2) @(posedge clk);
//        rst = 1;
//        start_test = 0;
//        repeat (2) @(posedge clk);
//        rst = 0;
//        repeat (2) @(posedge clk);
//        start_test = 1;
//        repeat (2) @(posedge clk);
//        start_test = 0;
//        #300000;
        
//         $write("String after BWT: ");
//        foreach(output_string[i]) begin
//            $write("%s",output_string[STRING_LEN-1-i]);
//            out_string[STRING_LEN-1-i]=output_string[i];
//        end 
//        $display();
//        if(gen_test_bwt == out_string)
//            $display("TEST %d PASSED",test_n);
//        else begin
//            $display("TEST %d FAILED",test_n);  
//            $write("Expected output: ");
//            foreach(gen_test_bwt[i]) begin
//                $write("%s", gen_test_bwt[i]);
//            end 
//            failed_tests++;
//        end 
            
//        $display();
//    endtask 
    
    initial begin
        #20;
        $display("\nTest is comparing output string from BWT processor with string generated by behavioral model.\n");
        $display("\t\t\t\t\t\t\t\t\t\t\t\t\t***** START SIMULATION *****");
        
        failed_tests = 0;
        test_num = 1;
        
        $display();
        repeat (2) @(posedge clk);
        rst = 1;
        start = 0;
        repeat (2) @(posedge clk);
        rst = 0;
        repeat (2) @(posedge clk);
//        input_string_char = "mississippimississippimississip$";
        input_string_char = "$pississimippississimippississim";
        
        start = 1;
        repeat (2) @(posedge clk);
        start = 0;
//        for(iter=0; iter <32; iter+8) begin
//            $write(
//        end
        #300000;
//        input_string_b = "sdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdusdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdupsdup$";
//        test_bwt = "pssssssssssssssssssssssssssssssssuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuupppppppppppppppu$pppppppppppppppdddddddddddddddddddddddddddddddd";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);

//        test_num++;
//        input_string_b = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh augue, suscipit a, scelerisque sed, lacinia in, mi. Cras ve$";
//        test_bwt ="..trth,mgam,,n,er,setdnaeit $ i l  r issas eea uvussc rlmtnubmnno ccdc prpsl eeouea iiii ordclLiiisuoCoePa iun  ip iieiceqgasts ";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
            
//        test_num++;
//        input_string_b = "mississippimississippimississippimississippimississippimississippimississippimississippimississippimississippimississippimissis$";
//        test_bwt = "spppppppppppsssssssssssssssssssssssmmmmmmmmmmmmiiiiiiiiiii$pppppppppppiiiiiiiiiiiisssssssssssssssssssssssiiiiiiiiiiiiiiiiiiiiiii";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
            
//        test_num++;
//        input_string_b = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa$";
//        test_bwt = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa$";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "bananabananabananabananabananabananabananabananabananabananabananabananabananabananabananabananabananabananabananabananabananab$";
//        test_bwt = "bnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnbbbbbbbbbbbbbbbbbbbbbaaaaaaaaaaaaaaaaaaaaa$aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "w szczebrzeszynie chrzaszcz brzmi w trzcinie i szczebrzeszyn z tego slynie. Wol go pyta: Panie chrzaszczu, Po co pan tak brzecz$";
//        test_bwt = ":,.kzeeoleoooiwnzwinzuea   ttpPzz ee   z zezzziiiizzztzz ecc mnnnncaoszayyaiyPcggW  hhtbbbb a  aeey   z$ zzlpc crrrssssccrrrrcss";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "Vivamus iaculis, massa vitae bibendum iaculis, quam nisl venenatis justo, suscipit lobortis sem tellus eu augue. Donec vitae qu$";
//        test_bwt = ".uessmst,me,s,mlacussoe $siittuvmn i oesaanaauntsnbv u  bcttllnpvvV suue luae aeeoe tlDbi  ouuiiiisu iau iii arseqqgaccdlmsji   ";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "qwertyuiopasdfghjklzxcvbnm,./1234567890-=qwertyuiopasdfghjklzxcvbnm,./1234567890-=qwertyuiop[asdfghjkl;zxcvbnm,./1234567890-=qw$";
//        test_bwt = "wmmm000,,,...999///111222333444555666777888l---p[ppvvvxxxssswwwdddfffggguuuhhhjjjkkknnnbbbiiiooo===$eeeaaarrryyycccqqqqzzzttt;ll";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "mississippimississippimississip$";
//        test_bwt =       "pppssssssmmmii$ippiissssssiiiiii";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "abcdefghijklmnoprstuw0123456789$";
//        test_bwt =       "pppssssssmmmii$ippiissssssiiiiii";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
//        test_num++;
//        input_string_b = "Bananananananananananananananan$";
//        test_bwt =       "pppssssssmmmii$ippiissssssiiiiii";
//        test_string(input_string_b,test_bwt,test_num,output_bwt);
        
        
        $display();
        $display("\n\t\t\t\t\t\t\t\t\t\t\t\t\t ***** SIMULATION FINISHED *****\n");
        $display("Ran tests: %d", test_num);
        $display("Failed tests: %d", failed_tests);
        $display("Pass rate: %d%%", ((test_num-failed_tests)/test_num)*100);
        $display("\n\t\t\t\t\t\t\t\t\t\t\t\t\t ***************************");
        if(failed_tests!=0)
            $display("\t\t\t\t\t\t\t\t\t\t\t\t\t **** SIMULATION FAILED ****");
        else
            $display("\t\t\t\t\t\t\t\t\t\t\t\t\t **** SIMULATION PASSED ****");
        $display("\t\t\t\t\t\t\t\t\t\t\t\t\t ***************************");
        $finish;
    end 
    
endmodule
