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
    input wire [255:0] input_string_char,
    //input wire [7:0] input_check,
    output reg [255:0] output_string_char,
    //output reg [7:0] output_check,
    output reg valid_out
    );
    
    localparam  ELEMENT_LEN = 8,
                IDLE = 0,
                READ_DATA = 1,
                WRITE_DATA = 2,
                WAIT_TO_ZERO = 3;
               
    
    reg [255:0] input_string;
    //reg [7:0] ctr, ctr_nxt, ctr_send, ctr_send_nxt;
    reg start_bwt;
    wire done_bwt;
    reg [255:0] output_string;
    reg valid_out_nxt;
    reg [2:0] state, state_nxt;
    reg [255:0] output_string_char_nxt;
    //reg [7:0] test_string[STRING_LEN-1:0];
    assign done_bwt = 0;
    //assign start_bwt = (ctr == STRING_LEN-1) && (input_string[ctr] == 8'h24);
    
    
always @ (posedge clk)
begin
    if(rst==1'b1)
    begin
        valid_out <= 1'b0;
        start_bwt <= 1'b0;
        state <= IDLE;
        output_string_char <= 256'h717171717171717171717171717171717171717171;
    end
    else
    begin
        case(state)
            IDLE: begin
                //valid_out <=0;
                start_bwt <= 0;
                if(start)begin
                    state <= READ_DATA;
                    output_string_char <= 256'h61616161616161616161616161616161;
                end
                else begin
                    state <= IDLE;
                    output_string_char <= 256'h70707070707070707070707070707070;
                end
            end
            READ_DATA: begin
                output_string_char <= 256'h6262626262626262626262626262626262626262;
//                input_string[0] <= input_string_char[7:0];
//                input_string[1] <= input_string_char[15:8];
//                input_string[2] <= input_string_char[23:16];
//                input_string[3] <= input_string_char[31:24];
//                input_string[4] <= input_string_char[39:32];
//                input_string[5] <= input_string_char[47:40];
//                input_string[6] <= input_string_char[55:48];
//                input_string[7] <= input_string_char[63:56];
//                input_string[8] <= input_string_char[71:64];
//                input_string[9] <= input_string_char[79:72];
//                input_string[10] <= input_string_char[87:80];
//                input_string[11] <= input_string_char[95:89];
//                input_string[12] <= input_string_char[103:96];
//                input_string[13] <= input_string_char[111:104];
//                input_string[14] <= input_string_char[119:112];
//                input_string[15] <= input_string_char[127:120];
//                input_string[16] <= input_string_char[135:128];
//                input_string[17] <= input_string_char[143:136];
//                input_string[18] <= input_string_char[151:144];
//                input_string[19] <= input_string_char[159:152];
//                input_string[20] <= input_string_char[167:160];
//                input_string[21] <= input_string_char[175:168];
//                input_string[22] <= input_string_char[183:176];
//                input_string[23] <= input_string_char[191:184];
//                input_string[24] <= input_string_char[199:192];
//                input_string[25] <= input_string_char[207:200];
//                input_string[26] <= input_string_char[215:208];
//                input_string[27] <= input_string_char[223:216];
//                input_string[28] <= input_string_char[231:224];
//                input_string[29] <= input_string_char[239:232];
//                input_string[30] <= input_string_char[247:240];
//                input_string[31] <= input_string_char[255:248];
////                    input_string[i] <= input_string_char[((i*8)+7)-:7];
                
                input_string <= input_string_char;
                valid_out <= 0;
                state <= WRITE_DATA;
            end
                WRITE_DATA: begin
                start_bwt <= 1;
                state <= WAIT_TO_ZERO;
                
                if(done_bwt == 0)begin
                    state <= WRITE_DATA;
                    output_string_char <= input_string;
                    valid_out <= 1;
//                    output_string_char <= {>>{output_string}};
                end
                else begin
                    state <= WRITE_DATA;
                    output_string_char <= 256'h64646464646464646464646464646464646464646464;
                end
            end
            WAIT_TO_ZERO: begin
                if(start == 0)
                begin
                    state <= IDLE;
                end
                else 
                    state <= WAIT_TO_ZERO;
                output_string_char <= 256'h66666666666666666666666666666666666666666666666666;
            end
            default: begin
                state <= IDLE;
                output_string_char <= 256'h72727272727272727272727272727272727272727272727272;
            end
            endcase
       
       end
            
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