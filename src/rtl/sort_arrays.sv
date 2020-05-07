`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2020 22:43:04
// Design Name: 
// Module Name: sort_arrays
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


module sort_arrays
    #(parameter INPUT_ARR_LEN=2,
      parameter VAR_LEN=4)
    (
    input wire clk,
    input wire rst,
    input wire [7:0] array_L [INPUT_ARR_LEN-1:0],
    input wire [7:0] array_R [INPUT_ARR_LEN-1:0],
    output reg [7:0] merged_array [2*INPUT_ARR_LEN-1:0]
    );
    
    reg [VAR_LEN-1:0] i,j,k;
    reg [7:0] merged_array_temp [2*INPUT_ARR_LEN-1:0];
    
    always @(posedge clk || rst==1) begin
        if(rst != 0) begin
            merged_array <= '{2*INPUT_ARR_LEN{8'h0}};
            end 
        else begin
            merged_array <= merged_array_temp;
            end 
    end 
   
   always @* begin
        i=0;
        j=0;
        for (k=0; k<(INPUT_ARR_LEN<<1); k++) begin
            if (i >= INPUT_ARR_LEN) begin       //copy remaining elements
                merged_array_temp[k] = array_R[j];
                j++;
            end
            else if (j >= INPUT_ARR_LEN) begin      //copy remaining elements
                merged_array_temp[k] = array_L[i];
                i++;
            end
            else if (array_L[i] <= array_R[j]) begin
                merged_array_temp[k] = array_L[i];  
                i++;
            end
            else begin
                merged_array_temp[k] = array_R[j]; 
                j++;
            end 
        end
    end 
     

endmodule
