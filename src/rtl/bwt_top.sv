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
    #(parameter STRING_LEN=64)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire [7:0] input_string_char,
    output reg [7:0] output_string_char,
    output reg valid_out
    );
    
    wire [7:0] input_string_char_b[0:0];
    wire rd_fifo;
    reg wr_fifo, empt_fifo, full_fifo, rd_fifo_nxt;
    reg rd_fifo_out, wr_fifo_out, empt_fifo_out, full_fifo_out;
    reg [7:0] string_char[0:0];
    reg [7:0] input_string [STRING_LEN-1:0], input_string_nxt [STRING_LEN-1:0];
    reg [7:0] ctr, ctr_nxt, ctr_send, ctr_send_nxt;
    wire pull_string, put_string;
    wire start_bwt, done_bwt;
//    reg [7:0] suffixes_out [STRING_LEN-1:0];
    reg [7:0] output_string [STRING_LEN-1:0];
    reg valid_out_nxt;
    reg [7:0] output_string_char_nxt;
    
    assign pull_string = full_fifo ? 1 : ((pull_string && !empt_fifo) ? 1 : 0);
    assign start_bwt = ctr == STRING_LEN-1;
    assign put_string = done_bwt ? 1 : ((put_string && !full_fifo_out) ? 1 : 0);
    assign input_string_char_b[0] = input_string_char;
    assign rd_fifo = pull_string;
    
    always@(posedge clk) begin
        if(rst) begin
            ctr <= 0;
            valid_out <= 0;
            ctr_send <= 0;
            input_string <= '{STRING_LEN{8'h0}};
            output_string_char <= 0;
//            rd_fifo <= 0;
        end
        else begin
            ctr <= ctr_nxt;
            ctr_send <= ctr_send_nxt;
            input_string <= input_string_nxt;
            valid_out <= valid_out_nxt;
            output_string_char <= output_string_char_nxt;
        end
    end
    
    always @* begin
    ctr_nxt = 0;
    ctr_send_nxt = 0;
    output_string_char_nxt = output_string_char;
    valid_out_nxt = 0;
    input_string_nxt = input_string;
    
    if(pull_string) begin
        input_string_nxt[ctr] = string_char[0];
        ctr_nxt = ctr+1;
    end
    else if((done_bwt || ctr_send != 0) && ctr_send < STRING_LEN) begin
        output_string_char_nxt = output_string[ctr_send];
        valid_out_nxt = 1;
        ctr_send_nxt = ctr_send+1;
    end
    
    end
   
    fifo #(8,6,1) fifo_input
      (
      .clk(clk),                               
      .reset(rst),
      .rd(rd_fifo),
      .wr(start),
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
