`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2020 21:19:23
// Design Name: 
// Module Name: mb_design_tb
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


module mb_design_tb();

    reg clk_n, clk_p;
    reg reset_n;
    reg [7:0] input_string_char_tri_io;
    wire [7:0] output_string_char_tri_io, input_string_char;
    
    assign input_string_char = input_string_char_tri_io;
   
    // Reset stimulus
    initial
    begin
        reset_n = 1'b0;
        #10 reset_n = 1'b1;
        input_string_char_tri_io = "a";
        
        #2_000;
        
        //Set angles to count
//        repeat(128) begin
//            #2_000;
//            @(posedge clk_p);
//            input_string_char_tri_io = input_string_char_tri_io + 1;
//        end
        
        #6_800_000;
//        $fclose(f);
        $finish;
    end
    
    // Clocks stimulus
    initial
    begin
        clk_n = 1'b0; //set clk to 0
        clk_p = 1'b1;
    end
    
    always
    begin
        #5 clk_n = ~clk_n; //toggle clk every 5 time units
        clk_p = ~clk_p; //toggle clk every 5 time units
    end
    //Instantiate tested module
    mb_design_wrapper mb_design_inst ( clk_n, clk_p, input_string_char, output_string_char_tri_io, reset_n);
    
endmodule