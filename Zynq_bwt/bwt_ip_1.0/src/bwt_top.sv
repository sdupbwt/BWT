`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2020 14:16:34
// Design Name: 
// Module Name: bwt_top
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


module bwt_top
    #(parameter STRING_LEN=32)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire send_data,
    input wire [7:0] input_string_char,
    input wire [7:0] input_check,
    output reg [7:0] output_string_char,
    output reg [7:0] output_check,
    output reg valid_out
    );
    
    localparam  ELEMENT_LEN = 8,
                IDLE = 0,
                READ_DATA = 1,
                WRITE_DATA = 2,
                WAIT_TO_ZERO = 3;
               
    
    reg [7:0] input_string [STRING_LEN-1:0];
    reg [7:0] ctr, ctr_nxt, ctr_send, ctr_send_nxt;
    wire start_bwt;
    reg done_bwt;
    reg [7:0] output_string [STRING_LEN-1:0];
    reg valid_out_nxt;
    reg [2:0] state, state_nxt;
    reg [7:0] output_string_char_nxt;
    reg [7:0] test_string[STRING_LEN-1:0];

    assign start_bwt = (ctr == STRING_LEN-1) && (input_string[ctr] == 8'h24);
    
    always@(posedge clk) begin
        if(rst) begin
            ctr <= 0;
            valid_out <= 0;
            ctr_send <= 0;
            state <= 0;
        end
        else begin
            valid_out <= valid_out_nxt;
            state <= state_nxt;
            ctr <= ctr_nxt;
            ctr_send <= ctr_send_nxt;
        end
    end
    
    always @* begin
        test_string[0] = "a";
        test_string[1] = "b";
        test_string[2] = "c";
        test_string[3] = "d";
        test_string[4] = "e";
        test_string[5] = "f";
        test_string[6] = "g";
        test_string[7] = "h";
        test_string[8] = "i";
        test_string[9] = "j";
        test_string[10] = "k";
        test_string[11] = "l";
        test_string[12] = "m";
        test_string[13] = "n";
        test_string[14] = "o";
        test_string[15] = "p";
        test_string[16] = "r";
        test_string[17] = "s";
        test_string[18] = "t";
        test_string[19] = "u";        
        test_string[20] = "w";
        test_string[21] = "0";
        test_string[22] = "1";
        test_string[23] = "2";
        test_string[24] = "3";
        test_string[25] = "4";
        test_string[26] = "5";
        test_string[27] = "6";
        test_string[28] = "7";
        test_string[29] = "8"; 
        test_string[30] = "9";
        test_string[31] = "$"; 
        
        if((done_bwt || valid_out != 0) && ctr_send < STRING_LEN) 
            valid_out_nxt = 1;
        else
            valid_out_nxt = 0;
        
        ctr_nxt = ctr;
        ctr_send_nxt = ctr_send;
//        input_string[ctr] = input_string_char;
            
        case(state)
            IDLE: begin
                if(start)
                    state_nxt = READ_DATA;
                else if(send_data)
                    state_nxt = WRITE_DATA;
                else 
                    state_nxt = IDLE;
                
                if(ctr >= STRING_LEN) begin
                    done_bwt = 1;
                    ctr_nxt = 0;
                end
                else begin
                    ctr_nxt = ctr;
                    done_bwt = 0;
                end
                    
                if(ctr_send >= STRING_LEN)
                    ctr_send_nxt = 0;
                else
                    ctr_send_nxt = ctr_send;
            end
            READ_DATA: begin
                state_nxt = WAIT_TO_ZERO;
                input_string[ctr] = input_string_char;
                ctr_nxt = ctr + 1;
            end
            WRITE_DATA: begin
                state_nxt = WAIT_TO_ZERO;
                output_string_char = input_string[ctr_send];
                output_check = test_string[ctr_send];
                ctr_send_nxt = ctr_send + 1;
            end
            WAIT_TO_ZERO: begin
                if(start == 0 && send_data == 0)
                    state_nxt = IDLE;
                else 
                    state_nxt = WAIT_TO_ZERO;
            end
            default: begin
                state_nxt = IDLE;
                ctr_nxt = ctr;
                ctr_send_nxt = ctr_send;
            end
            endcase
    end
 
//    MM_top #(STRING_LEN,4) build_sa
//    (
//    .clk(clk),
//    .rst(rst),
//    .input_string(input_string),
//    .start_sort(start_bwt),
//    .output_string(output_string),
//    .done(done_bwt)
//    );
   
endmodule