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
    input wire [31:0][7:0] input_string_char,
    //input wire [7:0] input_check,
    output reg [31:0][7:0] output_string_char,
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
    wire start_bwt;
    reg done_bwt;
    reg [255:0] output_string;
    reg valid_out_nxt;
    reg [2:0] state, state_nxt;
    reg [STRING_LEN-1:0][7:0] output_string_char_nxt;
    //reg [7:0] test_string[STRING_LEN-1:0];

    //assign start_bwt = (ctr == STRING_LEN-1) && (input_string[ctr] == 8'h24);
    
    
always @ (posedge clk)
begin
    if(rst==1'b1)
    begin
        valid_out <= 1'b0;
        state <= IDLE;
    end
    else
    begin
        case(state)
            IDLE: begin
                //valid_out <=0;
                if(start)
                    state <= READ_DATA;
                else 
                    state <= IDLE;
            end
            READ_DATA: begin
                input_string <= input_string_char;
                valid_out <=0;
                state <= WRITE_DATA;
            end
            WRITE_DATA: begin
                state <= WAIT_TO_ZERO;
                output_string_char <= input_string;
                valid_out <= 1;
            end
            WAIT_TO_ZERO: begin
                if(start == 0)
                begin
                    state <= IDLE;
                end
                else 
                    state <= WAIT_TO_ZERO;
            end
            default: begin
                state <= IDLE;;
            end
            endcase
       
       end
            
end    
//    always@(posedge clk) begin
//        if(rst) begin
//            ctr <= 0;
//            valid_out <= 0;
//            ctr_send <= 0;
//            state <= 0;
//        end
//        else begin
//            valid_out <= valid_out_nxt;
//            state <= state_nxt;
//            ctr <= ctr_nxt;
//            ctr_send <= ctr_send_nxt;
//        end
//    end
    
//    always @* begin
//        if((done_bwt || valid_out != 0) && ctr_send < STRING_LEN) 
//            valid_out_nxt = 1;
//        else
//            valid_out_nxt = 0;
        
//        ctr_nxt = ctr;
//        ctr_send_nxt = ctr_send;
////        input_string[ctr] = input_string_char;
            
//        case(state)
//            IDLE: begin
//                if(start)
//                    state_nxt = READ_DATA;
//                else if(send_data)
//                    state_nxt = WRITE_DATA;
//                else 
//                    state_nxt = IDLE;
                
//                if(ctr >= STRING_LEN) begin
//                    done_bwt = 1;
//                    ctr_nxt = 0;
//                end
//                else begin
//                    ctr_nxt = ctr;
//                    done_bwt = 0;
//                end
                    
//                if(ctr_send >= STRING_LEN)
//                    ctr_send_nxt = 0;
//                else
//                    ctr_send_nxt = ctr_send;
//            end
//            READ_DATA: begin
//                state_nxt = WAIT_TO_ZERO;
//                input_string[ctr] = input_string_char;
//                ctr_nxt = ctr + 1;
//            end
//            WRITE_DATA: begin
//                state_nxt = WAIT_TO_ZERO;
//                output_string_char = input_string[ctr_send];
//                output_check = test_string[ctr_send];
//                ctr_send_nxt = ctr_send + 1;
//            end
//            WAIT_TO_ZERO: begin
//                if(start == 0 && send_data == 0)
//                    state_nxt = IDLE;
//                else 
//                    state_nxt = WAIT_TO_ZERO;
//            end
//            default: begin
//                state_nxt = IDLE;
//                ctr_nxt = ctr;
//                ctr_send_nxt = ctr_send;
//            end
//            endcase
//    end
 
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