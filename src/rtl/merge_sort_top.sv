`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2020 23:00:12
// Design Name: 
// Module Name: merge_sort_top
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


module merge_sort_top
    #(parameter COLUMN = 3,
                STRING_LEN = 32)
    (
    input wire clk,
    input wire rst,
    input wire start,
    input wire sort_num,
    input wire [7:0] data_in [0:STRING_LEN-1][COLUMN-1:0],
    output reg [7:0] data_out[0:STRING_LEN-1][COLUMN-1:0],
    output wire sorted
    );
    
    localparam  ELEMENT_LEN = 8;

    // Variables for STAGE 2-element array
    wire rd_fifo2 [STRING_LEN>>1];
    wire [ELEMENT_LEN-1:0] arr2 [STRING_LEN>>1][COLUMN-1:0];
    wire [7:0] fifo_arr2        [STRING_LEN>>1][COLUMN-1:0];
    wire wr_fifo2 [STRING_LEN>>1];
    wire empt_fifo2 [STRING_LEN>>1];
    
    // Variables for STAGE 4-element array 
    wire [ELEMENT_LEN-1:0] arr4 [STRING_LEN>>2][COLUMN-1:0];
    wire [7:0] fifo_arr4        [STRING_LEN>>2][COLUMN-1:0];
    wire rd_fifo4 [STRING_LEN>>2];
    wire empt_fifo4 [STRING_LEN>>2];
    wire wr_fifo4 [STRING_LEN>>2];
    
    // Variables for STAGE 8-element array 
    wire [ELEMENT_LEN-1:0] arr8 [STRING_LEN>>3][COLUMN-1:0];
    wire [7:0] fifo_arr8        [STRING_LEN>>3][COLUMN-1:0];
    wire empt_fifo8 [STRING_LEN>>3];
    wire wr_fifo8 [STRING_LEN>>3];
    reg rd_fifo8 [STRING_LEN>>3];
    
    // Variables for STAGE 16-element array 
    wire [ELEMENT_LEN-1:0] arr16 [STRING_LEN>>4][COLUMN-1:0];
    wire [7:0] fifo_arr16        [STRING_LEN>>4][COLUMN-1:0];
    wire empt_fifo16 [STRING_LEN>>4];
    wire wr_fifo16 [STRING_LEN>>4];
    reg rd_fifo16 [STRING_LEN>>4];
    
    // Variables for STAGE 32-element array 
    wire [ELEMENT_LEN-1:0] arr32 [STRING_LEN>>5][COLUMN-1:0];
    wire [7:0] fifo_arr32        [STRING_LEN>>5][COLUMN-1:0];
    wire empt_fifo32 [STRING_LEN>>5];
    wire wr_fifo32 [STRING_LEN>>5];
    reg rd_fifo32 [STRING_LEN>>5];
    
    // Variables for STAGE 64-element array 
    wire [ELEMENT_LEN-1:0] arr64 [STRING_LEN>>6][COLUMN-1:0];
    wire [7:0] fifo_arr64        [STRING_LEN>>6][COLUMN-1:0];
    wire empt_fifo64 [STRING_LEN>>6];
    wire wr_fifo64 [STRING_LEN>>6];
    reg rd_fifo64 [STRING_LEN>>6];
    
    // Variables for STAGE 128-element array 
    wire [ELEMENT_LEN-1:0] arr128 [STRING_LEN>>7][COLUMN-1:0];
    wire [7:0] fifo_arr128        [STRING_LEN>>7][COLUMN-1:0];
    wire empt_fifo128 [STRING_LEN>>7];
    wire wr_fifo128 [STRING_LEN>>7];
    reg rd_fifo128 [STRING_LEN>>7];
    
    reg [7:0] i;
    genvar m_num;
    
    //STAGE 2-element array
    sort2elem #(COLUMN) 
        stage2 [0:(STRING_LEN>>1)-1](.clk(clk), 
                                     .rst(rst), 
                                     .en(start), 
                                     .byte_elem1({<<{data_in[8'd0],data_in[8'd2],data_in[8'd4],data_in[8'd6],
                                                     data_in[8'd8],data_in[8'd10],data_in[8'd12],data_in[8'd14],
                                                     data_in[8'd16],data_in[8'd18],data_in[8'd20],data_in[8'd22],
                                                     data_in[8'd24],data_in[8'd26],data_in[8'd28],data_in[8'd30],
                                                     data_in[8'd32],data_in[8'd34],data_in[8'd36],data_in[8'd38],    
                                                     data_in[8'd40],data_in[8'd42],data_in[8'd44],data_in[8'd46], 
                                                     data_in[8'd48],data_in[8'd50],data_in[8'd52],data_in[8'd54],
                                                     data_in[8'd56],data_in[8'd58],data_in[8'd60],data_in[8'd62],
                                                     data_in[8'd64],data_in[8'd66],data_in[8'd68],data_in[8'd70],    
                                                     data_in[8'd72],data_in[8'd74],data_in[8'd76],data_in[8'd78], 
                                                     data_in[8'd80],data_in[8'd82],data_in[8'd84],data_in[8'd86],
                                                     data_in[8'd88],data_in[8'd90],data_in[8'd92],data_in[8'd94],
                                                     data_in[8'd96],data_in[8'd98],data_in[8'd100],data_in[8'd102],
                                                     data_in[8'd104],data_in[8'd106],data_in[8'd108],data_in[8'd110],
                                                     data_in[8'd112],data_in[8'd114],data_in[8'd116],data_in[8'd118],
                                                     data_in[8'd120],data_in[8'd122],data_in[8'd124],data_in[8'd126]
                                                     }}), 
                                     .byte_elem2({<<{data_in[8'd1],data_in[8'd3],data_in[8'd5],data_in[8'd7],
                                                     data_in[8'd9],data_in[8'd11],data_in[8'd13],data_in[8'd15],    
                                                     data_in[8'd17],data_in[8'd19],data_in[8'd21],data_in[8'd23],   
                                                     data_in[8'd25],data_in[8'd27],data_in[8'd29],data_in[8'd31], 
                                                     data_in[8'd33],data_in[8'd35],data_in[8'd37],data_in[8'd39],    
                                                     data_in[8'd41],data_in[8'd43],data_in[8'd45],data_in[8'd47], 
                                                     data_in[8'd49],data_in[8'd51],data_in[8'd53],data_in[8'd55],
                                                     data_in[8'd57],data_in[8'd59],data_in[8'd61],data_in[8'd63], 
                                                     data_in[8'd65],data_in[8'd67],data_in[8'd69],data_in[8'd71],    
                                                     data_in[8'd73],data_in[8'd75],data_in[8'd77],data_in[8'd79], 
                                                     data_in[8'd81],data_in[8'd83],data_in[8'd85],data_in[8'd87],
                                                     data_in[8'd89],data_in[8'd91],data_in[8'd93],data_in[8'd95],
                                                     data_in[8'd97],data_in[8'd99],data_in[8'd101],data_in[8'd103],
                                                     data_in[8'd105],data_in[8'd107],data_in[8'd109],data_in[8'd111],
                                                     data_in[8'd113],data_in[8'd115],data_in[8'd117],data_in[8'd119],
                                                     data_in[8'd121],data_in[8'd123],data_in[8'd125],data_in[8'd127] 
                                                     }}),
                                     .sorted_array(arr2[0:(STRING_LEN>>1)-1]), 
                                     .wr_fifo(wr_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .sort_num(sort_num));
                        
    fifo #(ELEMENT_LEN,1,COLUMN) 
        fifo2 [(STRING_LEN>>1)-1:0] (.clk(clk), 
                                     .reset(rst), 
                                     .rd(rd_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .wr(wr_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .w_data(arr2[0:(STRING_LEN>>1)-1]), 
                                     .empty(empt_fifo2[0:(STRING_LEN>>1)-1]), 
                                     .full(), 
                                     .r_data(fifo_arr2[0:(STRING_LEN>>1)-1]));
    
    
    //STAGE 4-element array
    sort_arrays #(2,2,COLUMN) 
        stage4 [0:(STRING_LEN>>2)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L({<<{ empt_fifo2[0],empt_fifo2[2],empt_fifo2[4],empt_fifo2[6],
                                                        empt_fifo2[8],empt_fifo2[10],empt_fifo2[12],empt_fifo2[14],
                                                        empt_fifo2[16],empt_fifo2[18],empt_fifo2[20],empt_fifo2[22],   
                                                        empt_fifo2[24],empt_fifo2[26],empt_fifo2[28],empt_fifo2[30], 
                                                        empt_fifo2[32],empt_fifo2[34],empt_fifo2[36],empt_fifo2[38],    
                                                        empt_fifo2[40],empt_fifo2[42],empt_fifo2[44],empt_fifo2[46], 
                                                        empt_fifo2[48],empt_fifo2[50],empt_fifo2[52],empt_fifo2[54],
                                                        empt_fifo2[56],empt_fifo2[58],empt_fifo2[60],empt_fifo2[62] 
                                                        }}), 
                                     .empty_FIFO_R({<<{ empt_fifo2[1],empt_fifo2[3],empt_fifo2[5],empt_fifo2[7],
                                                        empt_fifo2[9],empt_fifo2[11],empt_fifo2[13],empt_fifo2[15],
                                                        empt_fifo2[17],empt_fifo2[19],empt_fifo2[21],empt_fifo2[23],   
                                                        empt_fifo2[25],empt_fifo2[27],empt_fifo2[29],empt_fifo2[31], 
                                                        empt_fifo2[33],empt_fifo2[35],empt_fifo2[37],empt_fifo2[39],    
                                                        empt_fifo2[41],empt_fifo2[43],empt_fifo2[45],empt_fifo2[47], 
                                                        empt_fifo2[49],empt_fifo2[51],empt_fifo2[53],empt_fifo2[55],
                                                        empt_fifo2[57],empt_fifo2[59],empt_fifo2[61],empt_fifo2[63] 
                                                        }}),
                                     .array_L({<<{fifo_arr2[8'd0],fifo_arr2[8'd2],fifo_arr2[8'd4],fifo_arr2[8'd6],
                                                  fifo_arr2[8'd8],fifo_arr2[8'd10],fifo_arr2[8'd12],fifo_arr2[8'd14],
                                                  fifo_arr2[8'd16],fifo_arr2[8'd18],fifo_arr2[8'd20],fifo_arr2[8'd22],  
                                                  fifo_arr2[8'd24],fifo_arr2[8'd26],fifo_arr2[8'd28],fifo_arr2[8'd30], 
                                                  fifo_arr2[8'd32],fifo_arr2[8'd34],fifo_arr2[8'd36],fifo_arr2[8'd38],    
                                                  fifo_arr2[8'd40],fifo_arr2[8'd42],fifo_arr2[8'd44],fifo_arr2[8'd46], 
                                                  fifo_arr2[8'd48],fifo_arr2[8'd50],fifo_arr2[8'd52],fifo_arr2[8'd54],
                                                  fifo_arr2[8'd56],fifo_arr2[8'd58],fifo_arr2[8'd60],fifo_arr2[8'd62] 
                                                  }}), 
                                     .array_R({<<{fifo_arr2[8'd1],fifo_arr2[8'd3],fifo_arr2[8'd5],fifo_arr2[8'd7],
                                                  fifo_arr2[8'd9],fifo_arr2[8'd11],fifo_arr2[8'd13],fifo_arr2[8'd15],
                                                  fifo_arr2[8'd17],fifo_arr2[8'd19],fifo_arr2[8'd21],fifo_arr2[8'd23],  
                                                  fifo_arr2[8'd25],fifo_arr2[8'd27],fifo_arr2[8'd29],fifo_arr2[8'd31], 
                                                  fifo_arr2[8'd33],fifo_arr2[8'd35],fifo_arr2[8'd37],fifo_arr2[8'd39],    
                                                  fifo_arr2[8'd41],fifo_arr2[8'd43],fifo_arr2[8'd45],fifo_arr2[8'd47], 
                                                  fifo_arr2[8'd49],fifo_arr2[8'd51],fifo_arr2[8'd53],fifo_arr2[8'd55],
                                                  fifo_arr2[8'd57],fifo_arr2[8'd59],fifo_arr2[8'd61],fifo_arr2[8'd63] 
                                                  }}), 
                                     .rd_fifo_L({<<{rd_fifo2[8'd0],rd_fifo2[8'd2],rd_fifo2[8'd4],rd_fifo2[8'd6],
                                                    rd_fifo2[8'd8],rd_fifo2[8'd10],rd_fifo2[8'd12],rd_fifo2[8'd14],
                                                    rd_fifo2[8'd16],rd_fifo2[8'd18],rd_fifo2[8'd20],rd_fifo2[8'd22],  
                                                    rd_fifo2[8'd24],rd_fifo2[8'd26],rd_fifo2[8'd28],rd_fifo2[8'd30],
                                                    rd_fifo2[8'd32],rd_fifo2[8'd34],rd_fifo2[8'd36],rd_fifo2[8'd38],
                                                    rd_fifo2[8'd40],rd_fifo2[8'd42],rd_fifo2[8'd44],rd_fifo2[8'd46],
                                                    rd_fifo2[8'd48],rd_fifo2[8'd50],rd_fifo2[8'd52],rd_fifo2[8'd54],
                                                    rd_fifo2[8'd56],rd_fifo2[8'd58],rd_fifo2[8'd60],rd_fifo2[8'd62] 
                                                    }}), 
                                     .rd_fifo_R({<<{rd_fifo2[8'd1],rd_fifo2[8'd3],rd_fifo2[8'd5],rd_fifo2[8'd7],
                                                    rd_fifo2[8'd9],rd_fifo2[8'd11],rd_fifo2[8'd13],rd_fifo2[8'd15],
                                                    rd_fifo2[8'd17],rd_fifo2[8'd19],rd_fifo2[8'd21],rd_fifo2[8'd23],  
                                                    rd_fifo2[8'd25],rd_fifo2[8'd27],rd_fifo2[8'd29],rd_fifo2[8'd31],
                                                    rd_fifo2[8'd33],rd_fifo2[8'd35],rd_fifo2[8'd37],rd_fifo2[8'd39],
                                                    rd_fifo2[8'd41],rd_fifo2[8'd43],rd_fifo2[8'd45],rd_fifo2[8'd47],
                                                    rd_fifo2[8'd49],rd_fifo2[8'd51],rd_fifo2[8'd53],rd_fifo2[8'd55],
                                                    rd_fifo2[8'd57],rd_fifo2[8'd59],rd_fifo2[8'd61],rd_fifo2[8'd63] 
                                                    }}), 
                                     .merged_array(arr4[0:(STRING_LEN>>2)-1]), 
                                     .wr_fifo(wr_fifo4[0:(STRING_LEN>>2)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,2,COLUMN) 
        fifo4 [0:(STRING_LEN>>2)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo4[0:(STRING_LEN>>2)-1]), 
                                    .wr(wr_fifo4[0:(STRING_LEN>>2)-1]), 
                                    .w_data(arr4[0:(STRING_LEN>>2)-1]), 
                                    .empty(empt_fifo4[0:(STRING_LEN>>2)-1]), 
                                    .full(), 
                                    .r_data(fifo_arr4[0:(STRING_LEN>>2)-1]));
    
    
    //STAGE 8-element array
        sort_arrays #(4,3,COLUMN) 
            stage8 [0:(STRING_LEN>>3)-1](.clk(clk), 
                                         .rst(rst), 
                                         .empty_FIFO_L({<<{empt_fifo4[0],empt_fifo4[2],empt_fifo4[4],empt_fifo4[6],
                                                           empt_fifo4[8],empt_fifo4[10],empt_fifo4[12],empt_fifo4[14],
                                                           empt_fifo4[16],empt_fifo4[18],empt_fifo4[20],empt_fifo4[22],
                                                           empt_fifo4[24],empt_fifo4[26],empt_fifo4[28],empt_fifo4[30]
                                                           }}), 
                                         .empty_FIFO_R({<<{empt_fifo4[1],empt_fifo4[3],empt_fifo4[5],empt_fifo4[7],
                                                           empt_fifo4[9],empt_fifo4[11],empt_fifo4[13],empt_fifo4[15],
                                                           empt_fifo4[17],empt_fifo4[19],empt_fifo4[21],empt_fifo4[23],
                                                           empt_fifo4[25],empt_fifo4[27],empt_fifo4[29],empt_fifo4[31]
                                                           }}), 
                                         .array_L({<<{fifo_arr4[0],fifo_arr4[2],fifo_arr4[4],fifo_arr4[6],
                                                      fifo_arr4[8],fifo_arr4[10],fifo_arr4[12],fifo_arr4[14],
                                                      fifo_arr4[16],fifo_arr4[18],fifo_arr4[20],fifo_arr4[22],
                                                      fifo_arr4[24],fifo_arr4[26],fifo_arr4[28],fifo_arr4[30] 
                                                      }}), 
                                         .array_R({<<{fifo_arr4[1],fifo_arr4[3],fifo_arr4[5],fifo_arr4[7],
                                                      fifo_arr4[9],fifo_arr4[11],fifo_arr4[13],fifo_arr4[15],
                                                      fifo_arr4[17],fifo_arr4[19],fifo_arr4[21],fifo_arr4[23],
                                                      fifo_arr4[25],fifo_arr4[27],fifo_arr4[29],fifo_arr4[31] 
                                                      }}), 
                                         .rd_fifo_L({<<{rd_fifo4[8'd0],rd_fifo4[8'd2],rd_fifo4[8'd4],rd_fifo4[8'd6],
                                                        rd_fifo4[8'd8],rd_fifo4[8'd10],rd_fifo4[8'd12],rd_fifo4[8'd14],
                                                        rd_fifo4[8'd16],rd_fifo4[8'd18],rd_fifo4[8'd20],rd_fifo4[8'd22],
                                                        rd_fifo4[8'd24],rd_fifo4[8'd26],rd_fifo4[8'd28],rd_fifo4[8'd30]
                                                        }}),
                                         .rd_fifo_R({<<{rd_fifo4[8'd1],rd_fifo4[8'd3],rd_fifo4[8'd5],rd_fifo4[8'd7],
                                                        rd_fifo4[8'd9],rd_fifo4[8'd11],rd_fifo4[8'd13],rd_fifo4[8'd15],
                                                        rd_fifo4[8'd17],rd_fifo4[8'd19],rd_fifo4[8'd21],rd_fifo4[8'd23],
                                                        rd_fifo4[8'd25],rd_fifo4[8'd27],rd_fifo4[8'd29],rd_fifo4[8'd31]
                                                        }}), 
                                         .wr_fifo(wr_fifo8[0:(STRING_LEN>>3)-1]), 
                                         .merged_array(arr8[0:(STRING_LEN>>3)-1]),
                                         .sort_num(sort_num));
        
        fifo #(ELEMENT_LEN,3,COLUMN) 
            fifo8 [0:(STRING_LEN>>3)-1](.clk(clk), 
                                        .reset(rst), 
                                        .rd(rd_fifo8[0:(STRING_LEN>>3)-1]), 
                                        .wr(wr_fifo8[0:(STRING_LEN>>3)-1]), 
                                        .w_data(arr8[0:(STRING_LEN>>3)-1]), 
                                        .empty(empt_fifo8[0:(STRING_LEN>>3)-1]), 
                                        .full(), 
                                        .r_data(fifo_arr8[0:(STRING_LEN>>3)-1]));
                                        
    //STAGE 16-element array
    sort_arrays #(2,2,COLUMN) 
        stage16 [0:(STRING_LEN>>4)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L({<<{empt_fifo8[0],empt_fifo8[2],empt_fifo8[4],empt_fifo8[6],
                                                       empt_fifo8[8],empt_fifo8[10],empt_fifo8[12],empt_fifo8[14]}}), 
                                     .empty_FIFO_R({<<{empt_fifo8[1],empt_fifo8[3],empt_fifo8[5],empt_fifo8[7],
                                                       empt_fifo8[9],empt_fifo8[11],empt_fifo8[13],empt_fifo8[15]}}),
                                     .array_L({<<{fifo_arr8[8'd0],fifo_arr8[8'd2],fifo_arr8[8'd4],fifo_arr8[8'd6],
                                                  fifo_arr8[8'd8],fifo_arr8[8'd10],fifo_arr8[8'd12],fifo_arr8[8'd14]}}), 
                                     .array_R({<<{fifo_arr8[8'd1],fifo_arr8[8'd3],fifo_arr8[8'd5],fifo_arr8[8'd7],
                                                  fifo_arr8[8'd9],fifo_arr8[8'd11],fifo_arr8[8'd13],fifo_arr8[8'd15]}}), 
                                     .rd_fifo_L({<<{rd_fifo8[8'd0],rd_fifo8[8'd2],rd_fifo8[8'd4],rd_fifo8[8'd6],
                                                    rd_fifo8[8'd8],rd_fifo8[8'd10],rd_fifo8[8'd12],rd_fifo8[8'd14]}}), 
                                     .rd_fifo_R({<<{rd_fifo8[8'd1],rd_fifo8[8'd3],rd_fifo8[8'd5],rd_fifo8[8'd7],
                                                    rd_fifo8[8'd9],rd_fifo8[8'd11],rd_fifo8[8'd13],rd_fifo8[8'd15]}}), 
                                     .wr_fifo(wr_fifo16[0:(STRING_LEN>>4)-1]), 
                                     .merged_array(arr16[0:(STRING_LEN>>4)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,4,COLUMN) 
        fifo16 [0:(STRING_LEN>>4)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo16[0:(STRING_LEN>>4)-1]), 
                                    .wr(wr_fifo16[0:(STRING_LEN>>4)-1]), 
                                    .w_data(arr16[0:(STRING_LEN>>4)-1]), 
                                    .empty(empt_fifo16[0:(STRING_LEN>>4)-1]), 
                                    .full(),                          
                                    .r_data(fifo_arr16[0:(STRING_LEN>>4)-1]));
    
    //STAGE 32-element array
    sort_arrays #(2,2,COLUMN) 
        stage32 [0:(STRING_LEN>>5)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L({<<{empt_fifo16[0],empt_fifo16[2],empt_fifo16[4],empt_fifo16[6]}}), 
                                     .empty_FIFO_R({<<{empt_fifo16[1],empt_fifo16[3],empt_fifo16[5],empt_fifo16[7]}}),
                                     .array_L({<<{fifo_arr16[8'd0],fifo_arr16[8'd2],fifo_arr16[8'd4],fifo_arr16[8'd6]}}), 
                                     .array_R({<<{fifo_arr16[8'd1],fifo_arr16[8'd3],fifo_arr16[8'd5],fifo_arr16[8'd7]}}), 
                                     .rd_fifo_L({<<{rd_fifo16[8'd0],rd_fifo16[8'd2],rd_fifo16[8'd4],rd_fifo16[8'd6]}}), 
                                     .rd_fifo_R({<<{rd_fifo16[8'd1],rd_fifo16[8'd3],rd_fifo16[8'd5],rd_fifo16[8'd7]}}), 
                                     .wr_fifo(wr_fifo32[0:(STRING_LEN>>5)-1]), 
                                     .merged_array(arr32[0:(STRING_LEN>>5)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,5,COLUMN) 
        fifo32 [0:(STRING_LEN>>5)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo32[0:(STRING_LEN>>5)-1]), 
                                    .wr(wr_fifo32[0:(STRING_LEN>>5)-1]), 
                                    .w_data(arr32[0:(STRING_LEN>>5)-1]), 
                                    .empty(empt_fifo32[0:(STRING_LEN>>5)-1]), 
                                    .full(),                          
                                    .r_data(fifo_arr32[0:(STRING_LEN>>5)-1]));
    
    //STAGE 64-element array
    sort_arrays #(2,2,COLUMN) 
        stage64 [0:(STRING_LEN>>6)-1](.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L({<<{empt_fifo32[0],empt_fifo32[2]}}), 
                                     .empty_FIFO_R({<<{empt_fifo32[1],empt_fifo32[3]}}),
                                     .array_L({<<{fifo_arr32[8'd0],fifo_arr32[8'd2]}}), 
                                     .array_R({<<{fifo_arr32[8'd1],fifo_arr32[8'd3]}}), 
                                     .rd_fifo_L({<<{rd_fifo32[8'd0],rd_fifo32[8'd2]}}), 
                                     .rd_fifo_R({<<{rd_fifo32[8'd1],rd_fifo32[8'd3]}}), 
                                     .wr_fifo(wr_fifo64[0:(STRING_LEN>>6)-1]), 
                                     .merged_array(arr64[0:(STRING_LEN>>6)-1]), 
                                     .sort_num(sort_num));
    
    fifo #(ELEMENT_LEN,6,COLUMN) 
        fifo64 [0:(STRING_LEN>>6)-1](.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo64[0:(STRING_LEN>>6)-1]), 
                                    .wr(wr_fifo64[0:(STRING_LEN>>6)-1]), 
                                    .w_data(arr64[0:(STRING_LEN>>6)-1]), 
                                    .empty(empt_fifo64[0:(STRING_LEN>>6)-1]), 
                                    .full(),                          
                                    .r_data(fifo_arr64[0:(STRING_LEN>>6)-1]));
    
    
   //STAGE 128-element array
    sort_arrays #(2,2,COLUMN) 
        stage128 (.clk(clk), 
                                     .rst(rst), 
                                     .empty_FIFO_L(empt_fifo64[0]), 
                                     .empty_FIFO_R(empt_fifo64[1]),
                                     .array_L(fifo_arr64[8'd0]), 
                                     .array_R(fifo_arr64[8'd1]), 
                                     .rd_fifo_L(rd_fifo64[8'd0]), 
                                     .rd_fifo_R(rd_fifo64[8'd1]), 
                                     .wr_fifo(wr_fifo128[0]), 
                                     .sort_num(sort_num),
                                     .merged_array(arr128[0]));
    
    fifo #(ELEMENT_LEN,7,COLUMN) 
        fifo128 (.clk(clk), 
                                    .reset(rst), 
                                    .rd(rd_fifo128[0]), 
                                    .wr(wr_fifo128[0]), 
                                    .w_data(arr128[0]), 
                                    .empty(empt_fifo128[0]), 
                                    .full(), 
                                    .r_data(fifo_arr128[0]));    
    
                                
    always @(posedge clk) begin
        if(!empt_fifo128[0]) 
            rd_fifo128[0] <= 1;
        else begin
            rd_fifo128[0] <= 0;
            i <= 0;
        end
        if(rd_fifo128[0]) begin
            data_out[i] <= fifo_arr128[0];
            i <= i+1;
        end
        else begin
            i <= 0;
        end
    end
    
    assign sorted = (i == STRING_LEN-1);
    
endmodule
