`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2020 17:08:58
// Design Name: 
// Module Name: buff
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


module buff(
    input clk,
    input rst,
    input [31:0] data_in,
    output reg [31:0] data_out
    );
    
    reg [31:0] data_out_buff;
    
    always @(posedge clk) begin
        if(rst) begin
            data_out <= 31'h0;
            data_out_buff <= 31'h0;
        end
        else begin
            data_out <= 31'h55;
            data_out_buff <= data_in;
        end
    end
endmodule
