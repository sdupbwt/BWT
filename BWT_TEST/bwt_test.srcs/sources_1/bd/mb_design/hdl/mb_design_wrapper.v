//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Aug 29 13:54:51 2020
//Host        : DESKTOP-O8F70A2 running 64-bit major release  (build 9200)
//Command     : generate_target mb_design_wrapper.bd
//Design      : mb_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_design_wrapper
   (clock_clk_n,
    clock_clk_p,
    input_string_char_tri_io,
    leds_8bits_tri_o,
    output_string_char_tri_io,
    reset,
    sws_8bits_tri_i);
  input clock_clk_n;
  input clock_clk_p;
  inout [7:0]input_string_char_tri_io;
  output [7:0]leds_8bits_tri_o;
  inout [7:0]output_string_char_tri_io;
  input reset;
  input [7:0]sws_8bits_tri_i;

  wire clock_clk_n;
  wire clock_clk_p;
  wire [0:0]input_string_char_tri_i_0;
  wire [1:1]input_string_char_tri_i_1;
  wire [2:2]input_string_char_tri_i_2;
  wire [3:3]input_string_char_tri_i_3;
  wire [4:4]input_string_char_tri_i_4;
  wire [5:5]input_string_char_tri_i_5;
  wire [6:6]input_string_char_tri_i_6;
  wire [7:7]input_string_char_tri_i_7;
  wire [0:0]input_string_char_tri_io_0;
  wire [1:1]input_string_char_tri_io_1;
  wire [2:2]input_string_char_tri_io_2;
  wire [3:3]input_string_char_tri_io_3;
  wire [4:4]input_string_char_tri_io_4;
  wire [5:5]input_string_char_tri_io_5;
  wire [6:6]input_string_char_tri_io_6;
  wire [7:7]input_string_char_tri_io_7;
  wire [0:0]input_string_char_tri_o_0;
  wire [1:1]input_string_char_tri_o_1;
  wire [2:2]input_string_char_tri_o_2;
  wire [3:3]input_string_char_tri_o_3;
  wire [4:4]input_string_char_tri_o_4;
  wire [5:5]input_string_char_tri_o_5;
  wire [6:6]input_string_char_tri_o_6;
  wire [7:7]input_string_char_tri_o_7;
  wire [0:0]input_string_char_tri_t_0;
  wire [1:1]input_string_char_tri_t_1;
  wire [2:2]input_string_char_tri_t_2;
  wire [3:3]input_string_char_tri_t_3;
  wire [4:4]input_string_char_tri_t_4;
  wire [5:5]input_string_char_tri_t_5;
  wire [6:6]input_string_char_tri_t_6;
  wire [7:7]input_string_char_tri_t_7;
  wire [7:0]leds_8bits_tri_o;
  wire [0:0]output_string_char_tri_i_0;
  wire [1:1]output_string_char_tri_i_1;
  wire [2:2]output_string_char_tri_i_2;
  wire [3:3]output_string_char_tri_i_3;
  wire [4:4]output_string_char_tri_i_4;
  wire [5:5]output_string_char_tri_i_5;
  wire [6:6]output_string_char_tri_i_6;
  wire [7:7]output_string_char_tri_i_7;
  wire [0:0]output_string_char_tri_io_0;
  wire [1:1]output_string_char_tri_io_1;
  wire [2:2]output_string_char_tri_io_2;
  wire [3:3]output_string_char_tri_io_3;
  wire [4:4]output_string_char_tri_io_4;
  wire [5:5]output_string_char_tri_io_5;
  wire [6:6]output_string_char_tri_io_6;
  wire [7:7]output_string_char_tri_io_7;
  wire [0:0]output_string_char_tri_o_0;
  wire [1:1]output_string_char_tri_o_1;
  wire [2:2]output_string_char_tri_o_2;
  wire [3:3]output_string_char_tri_o_3;
  wire [4:4]output_string_char_tri_o_4;
  wire [5:5]output_string_char_tri_o_5;
  wire [6:6]output_string_char_tri_o_6;
  wire [7:7]output_string_char_tri_o_7;
  wire [0:0]output_string_char_tri_t_0;
  wire [1:1]output_string_char_tri_t_1;
  wire [2:2]output_string_char_tri_t_2;
  wire [3:3]output_string_char_tri_t_3;
  wire [4:4]output_string_char_tri_t_4;
  wire [5:5]output_string_char_tri_t_5;
  wire [6:6]output_string_char_tri_t_6;
  wire [7:7]output_string_char_tri_t_7;
  wire reset;
  wire [7:0]sws_8bits_tri_i;

  IOBUF input_string_char_tri_iobuf_0
       (.I(input_string_char_tri_o_0),
        .IO(input_string_char_tri_io[0]),
        .O(input_string_char_tri_i_0),
        .T(input_string_char_tri_t_0));
  IOBUF input_string_char_tri_iobuf_1
       (.I(input_string_char_tri_o_1),
        .IO(input_string_char_tri_io[1]),
        .O(input_string_char_tri_i_1),
        .T(input_string_char_tri_t_1));
  IOBUF input_string_char_tri_iobuf_2
       (.I(input_string_char_tri_o_2),
        .IO(input_string_char_tri_io[2]),
        .O(input_string_char_tri_i_2),
        .T(input_string_char_tri_t_2));
  IOBUF input_string_char_tri_iobuf_3
       (.I(input_string_char_tri_o_3),
        .IO(input_string_char_tri_io[3]),
        .O(input_string_char_tri_i_3),
        .T(input_string_char_tri_t_3));
  IOBUF input_string_char_tri_iobuf_4
       (.I(input_string_char_tri_o_4),
        .IO(input_string_char_tri_io[4]),
        .O(input_string_char_tri_i_4),
        .T(input_string_char_tri_t_4));
  IOBUF input_string_char_tri_iobuf_5
       (.I(input_string_char_tri_o_5),
        .IO(input_string_char_tri_io[5]),
        .O(input_string_char_tri_i_5),
        .T(input_string_char_tri_t_5));
  IOBUF input_string_char_tri_iobuf_6
       (.I(input_string_char_tri_o_6),
        .IO(input_string_char_tri_io[6]),
        .O(input_string_char_tri_i_6),
        .T(input_string_char_tri_t_6));
  IOBUF input_string_char_tri_iobuf_7
       (.I(input_string_char_tri_o_7),
        .IO(input_string_char_tri_io[7]),
        .O(input_string_char_tri_i_7),
        .T(input_string_char_tri_t_7));
  mb_design mb_design_i
       (.clock_clk_n(clock_clk_n),
        .clock_clk_p(clock_clk_p),
        .input_string_char_tri_i({input_string_char_tri_i_7,input_string_char_tri_i_6,input_string_char_tri_i_5,input_string_char_tri_i_4,input_string_char_tri_i_3,input_string_char_tri_i_2,input_string_char_tri_i_1,input_string_char_tri_i_0}),
        .input_string_char_tri_o({input_string_char_tri_o_7,input_string_char_tri_o_6,input_string_char_tri_o_5,input_string_char_tri_o_4,input_string_char_tri_o_3,input_string_char_tri_o_2,input_string_char_tri_o_1,input_string_char_tri_o_0}),
        .input_string_char_tri_t({input_string_char_tri_t_7,input_string_char_tri_t_6,input_string_char_tri_t_5,input_string_char_tri_t_4,input_string_char_tri_t_3,input_string_char_tri_t_2,input_string_char_tri_t_1,input_string_char_tri_t_0}),
        .leds_8bits_tri_o(leds_8bits_tri_o),
        .output_string_char_tri_i({output_string_char_tri_i_7,output_string_char_tri_i_6,output_string_char_tri_i_5,output_string_char_tri_i_4,output_string_char_tri_i_3,output_string_char_tri_i_2,output_string_char_tri_i_1,output_string_char_tri_i_0}),
        .output_string_char_tri_o({output_string_char_tri_o_7,output_string_char_tri_o_6,output_string_char_tri_o_5,output_string_char_tri_o_4,output_string_char_tri_o_3,output_string_char_tri_o_2,output_string_char_tri_o_1,output_string_char_tri_o_0}),
        .output_string_char_tri_t({output_string_char_tri_t_7,output_string_char_tri_t_6,output_string_char_tri_t_5,output_string_char_tri_t_4,output_string_char_tri_t_3,output_string_char_tri_t_2,output_string_char_tri_t_1,output_string_char_tri_t_0}),
        .reset(reset),
        .sws_8bits_tri_i(sws_8bits_tri_i));
  IOBUF output_string_char_tri_iobuf_0
       (.I(output_string_char_tri_o_0),
        .IO(output_string_char_tri_io[0]),
        .O(output_string_char_tri_i_0),
        .T(output_string_char_tri_t_0));
  IOBUF output_string_char_tri_iobuf_1
       (.I(output_string_char_tri_o_1),
        .IO(output_string_char_tri_io[1]),
        .O(output_string_char_tri_i_1),
        .T(output_string_char_tri_t_1));
  IOBUF output_string_char_tri_iobuf_2
       (.I(output_string_char_tri_o_2),
        .IO(output_string_char_tri_io[2]),
        .O(output_string_char_tri_i_2),
        .T(output_string_char_tri_t_2));
  IOBUF output_string_char_tri_iobuf_3
       (.I(output_string_char_tri_o_3),
        .IO(output_string_char_tri_io[3]),
        .O(output_string_char_tri_i_3),
        .T(output_string_char_tri_t_3));
  IOBUF output_string_char_tri_iobuf_4
       (.I(output_string_char_tri_o_4),
        .IO(output_string_char_tri_io[4]),
        .O(output_string_char_tri_i_4),
        .T(output_string_char_tri_t_4));
  IOBUF output_string_char_tri_iobuf_5
       (.I(output_string_char_tri_o_5),
        .IO(output_string_char_tri_io[5]),
        .O(output_string_char_tri_i_5),
        .T(output_string_char_tri_t_5));
  IOBUF output_string_char_tri_iobuf_6
       (.I(output_string_char_tri_o_6),
        .IO(output_string_char_tri_io[6]),
        .O(output_string_char_tri_i_6),
        .T(output_string_char_tri_t_6));
  IOBUF output_string_char_tri_iobuf_7
       (.I(output_string_char_tri_o_7),
        .IO(output_string_char_tri_io[7]),
        .O(output_string_char_tri_i_7),
        .T(output_string_char_tri_t_7));
endmodule
