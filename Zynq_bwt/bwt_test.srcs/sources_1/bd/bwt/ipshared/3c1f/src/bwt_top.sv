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
    input wire read_data,
    input wire send_data,
    input wire [7:0] input_string_char,
    input wire [7:0] input_check,
    output reg [7:0] output_string_char,
    output reg [7:0] output_check,
    output reg valid_out
    );
    
    localparam ELEMENT_LEN = 8;
    
    wire [7:0] input_string_char_b[0:0];
    wire rd_fifo;
    reg wr_fifo, empt_fifo, full_fifo, rd_fifo_nxt;
    reg rd_fifo_out, wr_fifo_out, empt_fifo_out, full_fifo_out;
    reg [7:0] string_char[0:0];
    reg [7:0] input_string [STRING_LEN-1:0], input_string_nxt [STRING_LEN-1:0];
    reg [7:0] ctr, ctr_nxt, ctr_send, ctr_send_nxt;
    wire pull_string, put_string;
    wire start_bwt, done_bwt;
    reg [7:0] output_string [STRING_LEN-1:0];
    reg valid_out_nxt;
    reg [7:0] output_string_char_nxt;
    wire fifo_wr;
    
    assign pull_string = full_fifo ? 1 : ((!empt_fifo) ? 1 : 0);
    assign start_bwt = ctr == STRING_LEN-1;
    assign put_string = done_bwt ? 1 : ((put_string && !full_fifo_out) ? 1 : 0);
    assign input_string_char_b[0] = input_string_char;
    assign rd_fifo = pull_string;
    assign fifo_wr = start && read_data;
    
    always@(posedge clk) begin
        if(rst) begin
            ctr <= 0;
            valid_out <= 0;
            ctr_send <= 0;
            input_string <= '{STRING_LEN{8'h0}};
            output_string_char <= 0;
            output_check <= 0;
//            rd_fifo <= 0;
        end
        else begin
            ctr <= ctr_nxt;
            ctr_send <= ctr_send_nxt;
            input_string <= input_string_nxt;
            valid_out <= valid_out_nxt;
            output_string_char <= output_string_char_nxt;
            output_check <= input_check;
        end
    end
    
    always @* begin
        ctr_nxt = ctr;
        ctr_send_nxt = ctr_send;
        output_string_char_nxt = output_string_char;
        valid_out_nxt = 0;
        input_string_nxt = input_string;
        
        if(pull_string) begin
            input_string_nxt[ctr] = string_char[0];
            ctr_nxt = ctr+1;
        end
        else if((done_bwt || valid_out != 0) && ctr_send < STRING_LEN) begin
            valid_out_nxt = 1;
            if(ctr_send == 0) begin
                output_string_char_nxt = output_string[ctr_send];
                ctr_send_nxt = ctr_send+1;
            end
            else if(send_data) begin
                output_string_char_nxt = output_string[ctr_send];
                ctr_send_nxt = ctr_send+1;
            end 
            else begin
                ctr_send_nxt = ctr_send;
                output_string_char_nxt = output_string_char;
            end 
        end
    end
    
//    always @(posedge start) begin
//        fifo_wr <= 1;
//    end
    
//    always @(negedge start) begin
//        fifo_wr <= 1;
//    end
    
//    always @(posedge clk) begin 
//        if(fifo_wr)
//            fifo_wr <= 0;
//    end
    
   
    fifo #(ELEMENT_LEN,5,1) fifo_input
      (
      .clk(clk),                               
      .reset(rst),
      .rd(rd_fifo),
      .wr(fifo_wr),
      .w_data(input_string_char_b),      
      .empty(empt_fifo), 
      .full(full_fifo),                                 
      .r_data(string_char)
      );
    
    MM_top #(STRING_LEN,4) build_sa
    (
    .clk(clk),
    .rst(rst),
    .input_string(input_string),
    .start_sort(start_bwt),
    .output_string(output_string),
    .done(done_bwt)
    );
   
    
endmodule