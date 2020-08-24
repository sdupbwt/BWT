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
//    wire [11:0] input_char;
//    wire [31:0] x;
    reg reset;
    real r_angle;
//    integer i_x, i_y;
//    real r_x, r_y;
//    integer f;
    reg [7:0] input_string_char_tri_io;
    wire [7:0] output_string_char_tri_io, input_string_char;
    
    assign input_string_char = input_string_char_tri_io;
    // Dip switches stimulus
//    assign angle = 1024*r_angle;
    
    //Open file
//    initial begin 
//        f = $fopen("../../../../../ellipse_coordinates_mb.csv","w");
//    end
        
    // Reset stimulus
    initial
    begin
        reset = 1'b1;
        #10 reset = 1'b0;
        input_string_char_tri_io = "a";
        
        //Wait for initialization
//        @(output_string_char_tri_io === 32'b0);
//        repeat(10) @(posedge clk_p);
        #2_000;
        
        //Set angles to count
        repeat(128) begin
            #10_000;
            @(posedge clk_p);
            input_string_char_tri_io = input_string_char_tri_io + 1;
        end
        
        #750_000;
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
    //Put sin and cos as real values
    always @* // y i x zmieniaj¹ w ró¿nym czasies
    begin
/*        i_x = x;
        i_y = y;
        r_x = i_x / 1024.0;
        r_y = i_y / 1024.0;
        $fwrite(f,"%f,%f\n",r_x,r_y);*/
    end
   
    //Instantiate tested module
    mb_design_wrapper mb_design_inst ( clk_n, clk_p, input_string_char, output_string_char_tri_io, reset);
    
endmodule