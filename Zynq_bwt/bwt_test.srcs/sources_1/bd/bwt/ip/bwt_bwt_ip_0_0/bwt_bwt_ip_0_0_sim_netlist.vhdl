-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Sep  3 01:17:59 2020
-- Host        : DESKTOP-64JSPKI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/MTM/semestr8/SDUP_BWT/BWT_2/BWT/Zynq_bwt/bwt_test.srcs/sources_1/bd/bwt/ip/bwt_bwt_ip_0_0/bwt_bwt_ip_0_0_sim_netlist.vhdl
-- Design      : bwt_bwt_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bwt_bwt_ip_0_0_bwt_top is
  port (
    slv_wire2 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \output_string_char_reg[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bwt_bwt_ip_0_0_bwt_top : entity is "bwt_top";
end bwt_bwt_ip_0_0_bwt_top;

architecture STRUCTURE of bwt_bwt_ip_0_0_bwt_top is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ctr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[5]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[6]_i_2_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctr[7]_i_3_n_0\ : STD_LOGIC;
  signal ctr_nxt : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal ctr_send : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ctr_send[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_send[5]_i_2_n_0\ : STD_LOGIC;
  signal \ctr_send[7]_i_1_n_0\ : STD_LOGIC;
  signal \ctr_send[7]_i_3_n_0\ : STD_LOGIC;
  signal \ctr_send[7]_i_4_n_0\ : STD_LOGIC;
  signal ctr_send_nxt0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal done_bwt : STD_LOGIC;
  signal done_bwt_reg_i_1_n_0 : STD_LOGIC;
  signal done_bwt_reg_i_2_n_0 : STD_LOGIC;
  signal input_string : STD_LOGIC;
  signal \input_string_reg[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[13][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[14][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[14][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[15][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[15][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[16][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[17][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[18][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[19][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[20][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[21][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[22][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[23][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[24][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[25][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[26][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[27][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[28][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[28][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[29][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[29][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[30][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[30][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[31][7]_i_2_n_0\ : STD_LOGIC;
  signal \input_string_reg[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[16][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[17][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[18][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[19][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[20][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[21][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[22][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[23][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[24][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[25][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[26][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[27][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[28][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[29][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[30][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[31][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \input_string_reg_n_0_[9][7]\ : STD_LOGIC;
  signal \output_check_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_check_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \output_check_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_check_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_check_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_check_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \output_string_char_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \^slv_wire2\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_nxt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal valid_out_nxt : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair23";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "READ_DATA:01,WRITE_DATA:10,WAIT_TO_ZERO:11,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "READ_DATA:01,WRITE_DATA:10,WAIT_TO_ZERO:11,IDLE:00";
  attribute SOFT_HLUTNM of \ctr[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ctr[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ctr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctr[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctr[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ctr[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ctr_send[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ctr_send[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctr_send[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctr_send[5]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ctr_send[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ctr_send[7]_i_2\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of done_bwt_reg : label is "LD";
  attribute SOFT_HLUTNM of done_bwt_reg_i_2 : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[0][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[0][7]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[10][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[10][7]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[11][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[11][7]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[12][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[12][7]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[13][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[13][7]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[14][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[14][7]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[15][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[15][7]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[16][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[16][7]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[17][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[17][7]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[18][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[18][7]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[19][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[19][7]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[1][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[1][7]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[20][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[20][7]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[21][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[21][7]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[22][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[22][7]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[23][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[23][7]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[24][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[24][7]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[25][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[25][7]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[26][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[26][7]_i_1\ : label is "soft_lutpair10";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[27][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[27][7]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[28][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[28][7]_i_1\ : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[29][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[29][7]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[2][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[2][7]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[30][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[30][7]_i_1\ : label is "soft_lutpair12";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[31][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[31][7]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[3][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[3][7]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[4][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[4][7]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[5][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[5][7]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[6][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[6][7]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[7][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[7][7]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[8][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[8][7]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \input_string_reg[9][7]\ : label is "LD";
  attribute SOFT_HLUTNM of \input_string_reg[9][7]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \output_check_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_check_reg[0]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \output_check_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_check_reg[1]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \output_check_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_check_reg[2]_i_1\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \output_check_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_check_reg[3]_i_1\ : label is "soft_lutpair21";
  attribute XILINX_LEGACY_PRIM of \output_check_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_check_reg[4]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \output_check_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_check_reg[6]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \output_string_char_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \output_string_char_reg[7]_i_2\ : label is "soft_lutpair22";
begin
  SR(0) <= \^sr\(0);
  slv_wire2 <= \^slv_wire2\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFC"
    )
        port map (
      I0 => Q(1),
      I1 => state(1),
      I2 => Q(0),
      I3 => state(0),
      O => state_nxt(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDBA"
    )
        port map (
      I0 => state(1),
      I1 => Q(0),
      I2 => Q(1),
      I3 => state(0),
      O => state_nxt(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => state_nxt(0),
      Q => state(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => state_nxt(1),
      Q => state(1),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\ctr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => ctr(0),
      O => \ctr[0]_i_1_n_0\
    );
\ctr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ctr(0),
      I1 => ctr(1),
      I2 => state(0),
      O => ctr_nxt(1)
    );
\ctr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => ctr(0),
      I1 => ctr(1),
      I2 => ctr(2),
      I3 => state(0),
      O => ctr_nxt(2)
    );
\ctr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => ctr(2),
      I1 => ctr(0),
      I2 => ctr(1),
      I3 => ctr(3),
      I4 => state(0),
      O => ctr_nxt(3)
    );
\ctr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => ctr(4),
      I1 => ctr(3),
      I2 => ctr(2),
      I3 => ctr(0),
      I4 => ctr(1),
      I5 => state(0),
      O => ctr_nxt(4)
    );
\ctr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctr[5]_i_2_n_0\,
      I1 => state(0),
      O => ctr_nxt(5)
    );
\ctr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ctr(0),
      I1 => ctr(1),
      I2 => ctr(4),
      I3 => ctr(2),
      I4 => ctr(3),
      I5 => ctr(5),
      O => \ctr[5]_i_2_n_0\
    );
\ctr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => ctr(6),
      I1 => ctr(3),
      I2 => \ctr[6]_i_2_n_0\,
      I3 => state(0),
      O => ctr_nxt(6)
    );
\ctr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ctr(5),
      I1 => ctr(0),
      I2 => ctr(1),
      I3 => ctr(4),
      I4 => ctr(2),
      I5 => ctr(6),
      O => \ctr[6]_i_2_n_0\
    );
\ctr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => state(0),
      I1 => ctr(6),
      I2 => ctr(5),
      I3 => ctr(7),
      I4 => state(1),
      O => \ctr[7]_i_1_n_0\
    );
\ctr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EA2A0000"
    )
        port map (
      I0 => ctr(7),
      I1 => ctr(3),
      I2 => ctr(2),
      I3 => \ctr[7]_i_3_n_0\,
      I4 => state(0),
      O => ctr_nxt(7)
    );
\ctr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ctr(5),
      I1 => ctr(0),
      I2 => ctr(6),
      I3 => ctr(1),
      I4 => ctr(4),
      I5 => ctr(7),
      O => \ctr[7]_i_3_n_0\
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => \ctr[0]_i_1_n_0\,
      Q => ctr(0),
      R => \^sr\(0)
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(1),
      Q => ctr(1),
      R => \^sr\(0)
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(2),
      Q => ctr(2),
      R => \^sr\(0)
    );
\ctr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(3),
      Q => ctr(3),
      R => \^sr\(0)
    );
\ctr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(4),
      Q => ctr(4),
      R => \^sr\(0)
    );
\ctr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(5),
      Q => ctr(5),
      R => \^sr\(0)
    );
\ctr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(6),
      Q => ctr(6),
      R => \^sr\(0)
    );
\ctr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr[7]_i_1_n_0\,
      D => ctr_nxt(7),
      Q => ctr(7),
      R => \^sr\(0)
    );
\ctr_send[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => ctr_send(0),
      O => \ctr_send[0]_i_1_n_0\
    );
\ctr_send[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ctr_send(0),
      I1 => ctr_send(1),
      I2 => state(1),
      O => ctr_send_nxt0_in(1)
    );
\ctr_send[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => ctr_send(0),
      I1 => ctr_send(1),
      I2 => ctr_send(2),
      I3 => state(1),
      O => ctr_send_nxt0_in(2)
    );
\ctr_send[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => ctr_send(2),
      I1 => ctr_send(0),
      I2 => ctr_send(1),
      I3 => ctr_send(3),
      I4 => state(1),
      O => ctr_send_nxt0_in(3)
    );
\ctr_send[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => ctr_send(3),
      I1 => ctr_send(1),
      I2 => ctr_send(0),
      I3 => ctr_send(2),
      I4 => ctr_send(4),
      I5 => state(1),
      O => ctr_send_nxt0_in(4)
    );
\ctr_send[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => ctr_send(4),
      I1 => ctr_send(2),
      I2 => \ctr_send[5]_i_2_n_0\,
      I3 => ctr_send(3),
      I4 => ctr_send(5),
      I5 => state(1),
      O => ctr_send_nxt0_in(5)
    );
\ctr_send[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctr_send(0),
      I1 => ctr_send(1),
      O => \ctr_send[5]_i_2_n_0\
    );
\ctr_send[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \ctr_send[7]_i_3_n_0\,
      I1 => ctr_send(6),
      I2 => \ctr_send[7]_i_4_n_0\,
      I3 => state(1),
      O => ctr_send_nxt0_in(6)
    );
\ctr_send[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => state(1),
      I1 => ctr_send(7),
      I2 => ctr_send(6),
      I3 => ctr_send(5),
      I4 => state(0),
      O => \ctr_send[7]_i_1_n_0\
    );
\ctr_send[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8580000"
    )
        port map (
      I0 => ctr_send(6),
      I1 => \ctr_send[7]_i_3_n_0\,
      I2 => ctr_send(7),
      I3 => \ctr_send[7]_i_4_n_0\,
      I4 => state(1),
      O => ctr_send_nxt0_in(7)
    );
\ctr_send[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ctr_send(4),
      I1 => ctr_send(2),
      I2 => ctr_send(0),
      I3 => ctr_send(1),
      I4 => ctr_send(3),
      I5 => ctr_send(5),
      O => \ctr_send[7]_i_3_n_0\
    );
\ctr_send[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => ctr_send(4),
      I1 => ctr_send(2),
      I2 => ctr_send(1),
      I3 => ctr_send(0),
      I4 => ctr_send(3),
      I5 => ctr_send(5),
      O => \ctr_send[7]_i_4_n_0\
    );
\ctr_send_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => \ctr_send[0]_i_1_n_0\,
      Q => ctr_send(0),
      R => \^sr\(0)
    );
\ctr_send_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(1),
      Q => ctr_send(1),
      R => \^sr\(0)
    );
\ctr_send_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(2),
      Q => ctr_send(2),
      R => \^sr\(0)
    );
\ctr_send_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(3),
      Q => ctr_send(3),
      R => \^sr\(0)
    );
\ctr_send_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(4),
      Q => ctr_send(4),
      R => \^sr\(0)
    );
\ctr_send_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(5),
      Q => ctr_send(5),
      R => \^sr\(0)
    );
\ctr_send_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(6),
      Q => ctr_send(6),
      R => \^sr\(0)
    );
\ctr_send_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \ctr_send[7]_i_1_n_0\,
      D => ctr_send_nxt0_in(7),
      Q => ctr_send(7),
      R => \^sr\(0)
    );
done_bwt_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => done_bwt_reg_i_1_n_0,
      G => done_bwt_reg_i_2_n_0,
      GE => '1',
      Q => done_bwt
    );
done_bwt_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ctr(6),
      I1 => ctr(5),
      I2 => ctr(7),
      O => done_bwt_reg_i_1_n_0
    );
done_bwt_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => done_bwt_reg_i_2_n_0
    );
\input_string_reg[0][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][0]\
    );
\input_string_reg[0][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][1]\
    );
\input_string_reg[0][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][2]\
    );
\input_string_reg[0][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][3]\
    );
\input_string_reg[0][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][4]\
    );
\input_string_reg[0][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][5]\
    );
\input_string_reg[0][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][6]\
    );
\input_string_reg[0][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[0][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[0][7]\
    );
\input_string_reg[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[12][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[0][7]_i_1_n_0\
    );
\input_string_reg[10][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][0]\
    );
\input_string_reg[10][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][1]\
    );
\input_string_reg[10][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][2]\
    );
\input_string_reg[10][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][3]\
    );
\input_string_reg[10][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][4]\
    );
\input_string_reg[10][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][5]\
    );
\input_string_reg[10][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][6]\
    );
\input_string_reg[10][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[10][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[10][7]\
    );
\input_string_reg[10][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[14][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[10][7]_i_1_n_0\
    );
\input_string_reg[11][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][0]\
    );
\input_string_reg[11][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][1]\
    );
\input_string_reg[11][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][2]\
    );
\input_string_reg[11][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][3]\
    );
\input_string_reg[11][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][4]\
    );
\input_string_reg[11][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][5]\
    );
\input_string_reg[11][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][6]\
    );
\input_string_reg[11][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[11][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[11][7]\
    );
\input_string_reg[11][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[15][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[11][7]_i_1_n_0\
    );
\input_string_reg[12][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][0]\
    );
\input_string_reg[12][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][1]\
    );
\input_string_reg[12][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][2]\
    );
\input_string_reg[12][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][3]\
    );
\input_string_reg[12][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][4]\
    );
\input_string_reg[12][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][5]\
    );
\input_string_reg[12][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][6]\
    );
\input_string_reg[12][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[12][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[12][7]\
    );
\input_string_reg[12][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[12][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[12][7]_i_1_n_0\
    );
\input_string_reg[12][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[12][7]_i_2_n_0\
    );
\input_string_reg[13][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][0]\
    );
\input_string_reg[13][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][1]\
    );
\input_string_reg[13][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][2]\
    );
\input_string_reg[13][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][3]\
    );
\input_string_reg[13][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][4]\
    );
\input_string_reg[13][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][5]\
    );
\input_string_reg[13][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][6]\
    );
\input_string_reg[13][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[13][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[13][7]\
    );
\input_string_reg[13][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[13][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[13][7]_i_1_n_0\
    );
\input_string_reg[13][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[13][7]_i_2_n_0\
    );
\input_string_reg[14][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][0]\
    );
\input_string_reg[14][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][1]\
    );
\input_string_reg[14][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][2]\
    );
\input_string_reg[14][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][3]\
    );
\input_string_reg[14][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][4]\
    );
\input_string_reg[14][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][5]\
    );
\input_string_reg[14][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][6]\
    );
\input_string_reg[14][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[14][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[14][7]\
    );
\input_string_reg[14][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[14][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[14][7]_i_1_n_0\
    );
\input_string_reg[14][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[14][7]_i_2_n_0\
    );
\input_string_reg[15][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][0]\
    );
\input_string_reg[15][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][1]\
    );
\input_string_reg[15][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][2]\
    );
\input_string_reg[15][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][3]\
    );
\input_string_reg[15][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][4]\
    );
\input_string_reg[15][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][5]\
    );
\input_string_reg[15][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][6]\
    );
\input_string_reg[15][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[15][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[15][7]\
    );
\input_string_reg[15][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[15][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[15][7]_i_1_n_0\
    );
\input_string_reg[15][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[15][7]_i_2_n_0\
    );
\input_string_reg[16][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][0]\
    );
\input_string_reg[16][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][1]\
    );
\input_string_reg[16][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][2]\
    );
\input_string_reg[16][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][3]\
    );
\input_string_reg[16][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][4]\
    );
\input_string_reg[16][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][5]\
    );
\input_string_reg[16][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][6]\
    );
\input_string_reg[16][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[16][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[16][7]\
    );
\input_string_reg[16][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[28][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[16][7]_i_1_n_0\
    );
\input_string_reg[17][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][0]\
    );
\input_string_reg[17][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][1]\
    );
\input_string_reg[17][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][2]\
    );
\input_string_reg[17][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][3]\
    );
\input_string_reg[17][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][4]\
    );
\input_string_reg[17][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][5]\
    );
\input_string_reg[17][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][6]\
    );
\input_string_reg[17][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[17][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[17][7]\
    );
\input_string_reg[17][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[29][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[17][7]_i_1_n_0\
    );
\input_string_reg[18][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][0]\
    );
\input_string_reg[18][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][1]\
    );
\input_string_reg[18][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][2]\
    );
\input_string_reg[18][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][3]\
    );
\input_string_reg[18][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][4]\
    );
\input_string_reg[18][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][5]\
    );
\input_string_reg[18][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][6]\
    );
\input_string_reg[18][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[18][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[18][7]\
    );
\input_string_reg[18][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[30][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[18][7]_i_1_n_0\
    );
\input_string_reg[19][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][0]\
    );
\input_string_reg[19][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][1]\
    );
\input_string_reg[19][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][2]\
    );
\input_string_reg[19][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][3]\
    );
\input_string_reg[19][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][4]\
    );
\input_string_reg[19][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][5]\
    );
\input_string_reg[19][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][6]\
    );
\input_string_reg[19][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[19][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[19][7]\
    );
\input_string_reg[19][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[31][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[19][7]_i_1_n_0\
    );
\input_string_reg[1][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][0]\
    );
\input_string_reg[1][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][1]\
    );
\input_string_reg[1][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][2]\
    );
\input_string_reg[1][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][3]\
    );
\input_string_reg[1][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][4]\
    );
\input_string_reg[1][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][5]\
    );
\input_string_reg[1][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][6]\
    );
\input_string_reg[1][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[1][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[1][7]\
    );
\input_string_reg[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[13][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[1][7]_i_1_n_0\
    );
\input_string_reg[20][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][0]\
    );
\input_string_reg[20][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][1]\
    );
\input_string_reg[20][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][2]\
    );
\input_string_reg[20][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][3]\
    );
\input_string_reg[20][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][4]\
    );
\input_string_reg[20][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][5]\
    );
\input_string_reg[20][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][6]\
    );
\input_string_reg[20][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[20][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[20][7]\
    );
\input_string_reg[20][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[28][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[20][7]_i_1_n_0\
    );
\input_string_reg[21][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][0]\
    );
\input_string_reg[21][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][1]\
    );
\input_string_reg[21][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][2]\
    );
\input_string_reg[21][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][3]\
    );
\input_string_reg[21][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][4]\
    );
\input_string_reg[21][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][5]\
    );
\input_string_reg[21][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][6]\
    );
\input_string_reg[21][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[21][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[21][7]\
    );
\input_string_reg[21][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[29][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[21][7]_i_1_n_0\
    );
\input_string_reg[22][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][0]\
    );
\input_string_reg[22][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][1]\
    );
\input_string_reg[22][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][2]\
    );
\input_string_reg[22][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][3]\
    );
\input_string_reg[22][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][4]\
    );
\input_string_reg[22][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][5]\
    );
\input_string_reg[22][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][6]\
    );
\input_string_reg[22][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[22][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[22][7]\
    );
\input_string_reg[22][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[30][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[22][7]_i_1_n_0\
    );
\input_string_reg[23][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][0]\
    );
\input_string_reg[23][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][1]\
    );
\input_string_reg[23][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][2]\
    );
\input_string_reg[23][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][3]\
    );
\input_string_reg[23][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][4]\
    );
\input_string_reg[23][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][5]\
    );
\input_string_reg[23][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][6]\
    );
\input_string_reg[23][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[23][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[23][7]\
    );
\input_string_reg[23][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[31][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[23][7]_i_1_n_0\
    );
\input_string_reg[24][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][0]\
    );
\input_string_reg[24][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][1]\
    );
\input_string_reg[24][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][2]\
    );
\input_string_reg[24][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][3]\
    );
\input_string_reg[24][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][4]\
    );
\input_string_reg[24][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][5]\
    );
\input_string_reg[24][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][6]\
    );
\input_string_reg[24][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[24][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[24][7]\
    );
\input_string_reg[24][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[28][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[24][7]_i_1_n_0\
    );
\input_string_reg[25][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][0]\
    );
\input_string_reg[25][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][1]\
    );
\input_string_reg[25][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][2]\
    );
\input_string_reg[25][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][3]\
    );
\input_string_reg[25][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][4]\
    );
\input_string_reg[25][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][5]\
    );
\input_string_reg[25][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][6]\
    );
\input_string_reg[25][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[25][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[25][7]\
    );
\input_string_reg[25][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[29][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[25][7]_i_1_n_0\
    );
\input_string_reg[26][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][0]\
    );
\input_string_reg[26][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][1]\
    );
\input_string_reg[26][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][2]\
    );
\input_string_reg[26][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][3]\
    );
\input_string_reg[26][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][4]\
    );
\input_string_reg[26][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][5]\
    );
\input_string_reg[26][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][6]\
    );
\input_string_reg[26][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[26][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[26][7]\
    );
\input_string_reg[26][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[30][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[26][7]_i_1_n_0\
    );
\input_string_reg[27][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][0]\
    );
\input_string_reg[27][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][1]\
    );
\input_string_reg[27][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][2]\
    );
\input_string_reg[27][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][3]\
    );
\input_string_reg[27][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][4]\
    );
\input_string_reg[27][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][5]\
    );
\input_string_reg[27][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][6]\
    );
\input_string_reg[27][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[27][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[27][7]\
    );
\input_string_reg[27][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[31][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[27][7]_i_1_n_0\
    );
\input_string_reg[28][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][0]\
    );
\input_string_reg[28][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][1]\
    );
\input_string_reg[28][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][2]\
    );
\input_string_reg[28][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][3]\
    );
\input_string_reg[28][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][4]\
    );
\input_string_reg[28][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][5]\
    );
\input_string_reg[28][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][6]\
    );
\input_string_reg[28][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[28][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[28][7]\
    );
\input_string_reg[28][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[28][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[28][7]_i_1_n_0\
    );
\input_string_reg[28][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[28][7]_i_2_n_0\
    );
\input_string_reg[29][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][0]\
    );
\input_string_reg[29][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][1]\
    );
\input_string_reg[29][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][2]\
    );
\input_string_reg[29][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][3]\
    );
\input_string_reg[29][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][4]\
    );
\input_string_reg[29][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][5]\
    );
\input_string_reg[29][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][6]\
    );
\input_string_reg[29][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[29][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[29][7]\
    );
\input_string_reg[29][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[29][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[29][7]_i_1_n_0\
    );
\input_string_reg[29][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[29][7]_i_2_n_0\
    );
\input_string_reg[2][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][0]\
    );
\input_string_reg[2][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][1]\
    );
\input_string_reg[2][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][2]\
    );
\input_string_reg[2][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][3]\
    );
\input_string_reg[2][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][4]\
    );
\input_string_reg[2][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][5]\
    );
\input_string_reg[2][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][6]\
    );
\input_string_reg[2][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[2][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[2][7]\
    );
\input_string_reg[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[14][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[2][7]_i_1_n_0\
    );
\input_string_reg[30][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][0]\
    );
\input_string_reg[30][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][1]\
    );
\input_string_reg[30][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][2]\
    );
\input_string_reg[30][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][3]\
    );
\input_string_reg[30][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][4]\
    );
\input_string_reg[30][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][5]\
    );
\input_string_reg[30][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][6]\
    );
\input_string_reg[30][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[30][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[30][7]\
    );
\input_string_reg[30][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[30][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[30][7]_i_1_n_0\
    );
\input_string_reg[30][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[30][7]_i_2_n_0\
    );
\input_string_reg[31][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][0]\
    );
\input_string_reg[31][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][1]\
    );
\input_string_reg[31][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][2]\
    );
\input_string_reg[31][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][3]\
    );
\input_string_reg[31][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][4]\
    );
\input_string_reg[31][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][5]\
    );
\input_string_reg[31][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][6]\
    );
\input_string_reg[31][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => input_string,
      GE => '1',
      Q => \input_string_reg_n_0_[31][7]\
    );
\input_string_reg[31][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[31][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => input_string
    );
\input_string_reg[31][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => ctr(1),
      I1 => ctr(6),
      I2 => ctr(0),
      I3 => ctr(5),
      I4 => ctr(7),
      I5 => ctr(4),
      O => \input_string_reg[31][7]_i_2_n_0\
    );
\input_string_reg[3][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][0]\
    );
\input_string_reg[3][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][1]\
    );
\input_string_reg[3][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][2]\
    );
\input_string_reg[3][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][3]\
    );
\input_string_reg[3][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][4]\
    );
\input_string_reg[3][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][5]\
    );
\input_string_reg[3][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][6]\
    );
\input_string_reg[3][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[3][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[3][7]\
    );
\input_string_reg[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[15][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[3][7]_i_1_n_0\
    );
\input_string_reg[4][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][0]\
    );
\input_string_reg[4][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][1]\
    );
\input_string_reg[4][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][2]\
    );
\input_string_reg[4][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][3]\
    );
\input_string_reg[4][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][4]\
    );
\input_string_reg[4][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][5]\
    );
\input_string_reg[4][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][6]\
    );
\input_string_reg[4][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[4][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[4][7]\
    );
\input_string_reg[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[12][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[4][7]_i_1_n_0\
    );
\input_string_reg[5][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][0]\
    );
\input_string_reg[5][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][1]\
    );
\input_string_reg[5][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][2]\
    );
\input_string_reg[5][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][3]\
    );
\input_string_reg[5][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][4]\
    );
\input_string_reg[5][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][5]\
    );
\input_string_reg[5][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][6]\
    );
\input_string_reg[5][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[5][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[5][7]\
    );
\input_string_reg[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[13][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[5][7]_i_1_n_0\
    );
\input_string_reg[6][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][0]\
    );
\input_string_reg[6][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][1]\
    );
\input_string_reg[6][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][2]\
    );
\input_string_reg[6][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][3]\
    );
\input_string_reg[6][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][4]\
    );
\input_string_reg[6][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][5]\
    );
\input_string_reg[6][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][6]\
    );
\input_string_reg[6][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[6][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[6][7]\
    );
\input_string_reg[6][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[14][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[6][7]_i_1_n_0\
    );
\input_string_reg[7][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][0]\
    );
\input_string_reg[7][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][1]\
    );
\input_string_reg[7][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][2]\
    );
\input_string_reg[7][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][3]\
    );
\input_string_reg[7][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][4]\
    );
\input_string_reg[7][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][5]\
    );
\input_string_reg[7][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][6]\
    );
\input_string_reg[7][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[7][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[7][7]\
    );
\input_string_reg[7][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[15][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[7][7]_i_1_n_0\
    );
\input_string_reg[8][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][0]\
    );
\input_string_reg[8][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][1]\
    );
\input_string_reg[8][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][2]\
    );
\input_string_reg[8][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][3]\
    );
\input_string_reg[8][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][4]\
    );
\input_string_reg[8][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][5]\
    );
\input_string_reg[8][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][6]\
    );
\input_string_reg[8][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[8][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[8][7]\
    );
\input_string_reg[8][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[12][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[8][7]_i_1_n_0\
    );
\input_string_reg[9][0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(0),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][0]\
    );
\input_string_reg[9][1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(1),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][1]\
    );
\input_string_reg[9][2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(2),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][2]\
    );
\input_string_reg[9][3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(3),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][3]\
    );
\input_string_reg[9][4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(4),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][4]\
    );
\input_string_reg[9][5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(5),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][5]\
    );
\input_string_reg[9][6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(6),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][6]\
    );
\input_string_reg[9][7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_8_0\(7),
      G => \input_string_reg[9][7]_i_1_n_0\,
      GE => '1',
      Q => \input_string_reg_n_0_[9][7]\
    );
\input_string_reg[9][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => state(0),
      I1 => ctr(2),
      I2 => \input_string_reg[13][7]_i_2_n_0\,
      I3 => ctr(3),
      I4 => state(1),
      O => \input_string_reg[9][7]_i_1_n_0\
    );
\output_check_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_check_reg[0]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(8)
    );
\output_check_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => ctr_send(2),
      I1 => ctr_send(3),
      I2 => ctr_send(4),
      I3 => ctr_send(0),
      O => \output_check_reg[0]_i_1_n_0\
    );
\output_check_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_check_reg[1]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(9)
    );
\output_check_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"295555AA"
    )
        port map (
      I0 => ctr_send(1),
      I1 => ctr_send(2),
      I2 => ctr_send(3),
      I3 => ctr_send(4),
      I4 => ctr_send(0),
      O => \output_check_reg[1]_i_1_n_0\
    );
\output_check_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_check_reg[2]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(10)
    );
\output_check_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"855FEAA0"
    )
        port map (
      I0 => ctr_send(1),
      I1 => ctr_send(3),
      I2 => ctr_send(0),
      I3 => ctr_send(4),
      I4 => ctr_send(2),
      O => \output_check_reg[2]_i_1_n_0\
    );
\output_check_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_check_reg[3]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(11)
    );
\output_check_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"607F0080"
    )
        port map (
      I0 => ctr_send(1),
      I1 => ctr_send(0),
      I2 => ctr_send(2),
      I3 => ctr_send(4),
      I4 => ctr_send(3),
      O => \output_check_reg[3]_i_1_n_0\
    );
\output_check_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_check_reg[4]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(12)
    );
\output_check_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ctr_send(0),
      I1 => ctr_send(3),
      I2 => ctr_send(2),
      I3 => ctr_send(1),
      I4 => ctr_send(4),
      O => \output_check_reg[4]_i_1_n_0\
    );
\output_check_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_check_reg[6]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(13)
    );
\output_check_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0313FFFF"
    )
        port map (
      I0 => ctr_send(1),
      I1 => ctr_send(3),
      I2 => ctr_send(2),
      I3 => ctr_send(0),
      I4 => ctr_send(4),
      O => \output_check_reg[6]_i_1_n_0\
    );
\output_string_char_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[0]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(0)
    );
\output_string_char_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[0]_i_2_n_0\,
      I1 => \output_string_char_reg[0]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[0]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[0]_i_5_n_0\,
      O => \output_string_char_reg[0]_i_1_n_0\
    );
\output_string_char_reg[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][0]\,
      I1 => \input_string_reg_n_0_[10][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][0]\,
      O => \output_string_char_reg[0]_i_10_n_0\
    );
\output_string_char_reg[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][0]\,
      I1 => \input_string_reg_n_0_[14][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][0]\,
      O => \output_string_char_reg[0]_i_11_n_0\
    );
\output_string_char_reg[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][0]\,
      I1 => \input_string_reg_n_0_[2][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][0]\,
      O => \output_string_char_reg[0]_i_12_n_0\
    );
\output_string_char_reg[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][0]\,
      I1 => \input_string_reg_n_0_[6][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][0]\,
      O => \output_string_char_reg[0]_i_13_n_0\
    );
\output_string_char_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[0]_i_6_n_0\,
      I1 => \output_string_char_reg[0]_i_7_n_0\,
      O => \output_string_char_reg[0]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[0]_i_8_n_0\,
      I1 => \output_string_char_reg[0]_i_9_n_0\,
      O => \output_string_char_reg[0]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[0]_i_10_n_0\,
      I1 => \output_string_char_reg[0]_i_11_n_0\,
      O => \output_string_char_reg[0]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[0]_i_12_n_0\,
      I1 => \output_string_char_reg[0]_i_13_n_0\,
      O => \output_string_char_reg[0]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][0]\,
      I1 => \input_string_reg_n_0_[26][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][0]\,
      O => \output_string_char_reg[0]_i_6_n_0\
    );
\output_string_char_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][0]\,
      I1 => \input_string_reg_n_0_[30][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][0]\,
      O => \output_string_char_reg[0]_i_7_n_0\
    );
\output_string_char_reg[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][0]\,
      I1 => \input_string_reg_n_0_[18][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][0]\,
      O => \output_string_char_reg[0]_i_8_n_0\
    );
\output_string_char_reg[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][0]\,
      I1 => \input_string_reg_n_0_[22][0]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][0]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][0]\,
      O => \output_string_char_reg[0]_i_9_n_0\
    );
\output_string_char_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[1]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(1)
    );
\output_string_char_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[1]_i_2_n_0\,
      I1 => \output_string_char_reg[1]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[1]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[1]_i_5_n_0\,
      O => \output_string_char_reg[1]_i_1_n_0\
    );
\output_string_char_reg[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][1]\,
      I1 => \input_string_reg_n_0_[10][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][1]\,
      O => \output_string_char_reg[1]_i_10_n_0\
    );
\output_string_char_reg[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][1]\,
      I1 => \input_string_reg_n_0_[14][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][1]\,
      O => \output_string_char_reg[1]_i_11_n_0\
    );
\output_string_char_reg[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][1]\,
      I1 => \input_string_reg_n_0_[2][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][1]\,
      O => \output_string_char_reg[1]_i_12_n_0\
    );
\output_string_char_reg[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][1]\,
      I1 => \input_string_reg_n_0_[6][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][1]\,
      O => \output_string_char_reg[1]_i_13_n_0\
    );
\output_string_char_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[1]_i_6_n_0\,
      I1 => \output_string_char_reg[1]_i_7_n_0\,
      O => \output_string_char_reg[1]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[1]_i_8_n_0\,
      I1 => \output_string_char_reg[1]_i_9_n_0\,
      O => \output_string_char_reg[1]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[1]_i_10_n_0\,
      I1 => \output_string_char_reg[1]_i_11_n_0\,
      O => \output_string_char_reg[1]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[1]_i_12_n_0\,
      I1 => \output_string_char_reg[1]_i_13_n_0\,
      O => \output_string_char_reg[1]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][1]\,
      I1 => \input_string_reg_n_0_[26][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][1]\,
      O => \output_string_char_reg[1]_i_6_n_0\
    );
\output_string_char_reg[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][1]\,
      I1 => \input_string_reg_n_0_[30][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][1]\,
      O => \output_string_char_reg[1]_i_7_n_0\
    );
\output_string_char_reg[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][1]\,
      I1 => \input_string_reg_n_0_[18][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][1]\,
      O => \output_string_char_reg[1]_i_8_n_0\
    );
\output_string_char_reg[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][1]\,
      I1 => \input_string_reg_n_0_[22][1]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][1]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][1]\,
      O => \output_string_char_reg[1]_i_9_n_0\
    );
\output_string_char_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[2]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(2)
    );
\output_string_char_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[2]_i_2_n_0\,
      I1 => \output_string_char_reg[2]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[2]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[2]_i_5_n_0\,
      O => \output_string_char_reg[2]_i_1_n_0\
    );
\output_string_char_reg[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][2]\,
      I1 => \input_string_reg_n_0_[10][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][2]\,
      O => \output_string_char_reg[2]_i_10_n_0\
    );
\output_string_char_reg[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][2]\,
      I1 => \input_string_reg_n_0_[14][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][2]\,
      O => \output_string_char_reg[2]_i_11_n_0\
    );
\output_string_char_reg[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][2]\,
      I1 => \input_string_reg_n_0_[2][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][2]\,
      O => \output_string_char_reg[2]_i_12_n_0\
    );
\output_string_char_reg[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][2]\,
      I1 => \input_string_reg_n_0_[6][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][2]\,
      O => \output_string_char_reg[2]_i_13_n_0\
    );
\output_string_char_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[2]_i_6_n_0\,
      I1 => \output_string_char_reg[2]_i_7_n_0\,
      O => \output_string_char_reg[2]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[2]_i_8_n_0\,
      I1 => \output_string_char_reg[2]_i_9_n_0\,
      O => \output_string_char_reg[2]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[2]_i_10_n_0\,
      I1 => \output_string_char_reg[2]_i_11_n_0\,
      O => \output_string_char_reg[2]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[2]_i_12_n_0\,
      I1 => \output_string_char_reg[2]_i_13_n_0\,
      O => \output_string_char_reg[2]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][2]\,
      I1 => \input_string_reg_n_0_[26][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][2]\,
      O => \output_string_char_reg[2]_i_6_n_0\
    );
\output_string_char_reg[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][2]\,
      I1 => \input_string_reg_n_0_[30][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][2]\,
      O => \output_string_char_reg[2]_i_7_n_0\
    );
\output_string_char_reg[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][2]\,
      I1 => \input_string_reg_n_0_[18][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][2]\,
      O => \output_string_char_reg[2]_i_8_n_0\
    );
\output_string_char_reg[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][2]\,
      I1 => \input_string_reg_n_0_[22][2]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][2]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][2]\,
      O => \output_string_char_reg[2]_i_9_n_0\
    );
\output_string_char_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[3]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(3)
    );
\output_string_char_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[3]_i_2_n_0\,
      I1 => \output_string_char_reg[3]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[3]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[3]_i_5_n_0\,
      O => \output_string_char_reg[3]_i_1_n_0\
    );
\output_string_char_reg[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][3]\,
      I1 => \input_string_reg_n_0_[10][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][3]\,
      O => \output_string_char_reg[3]_i_10_n_0\
    );
\output_string_char_reg[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][3]\,
      I1 => \input_string_reg_n_0_[14][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][3]\,
      O => \output_string_char_reg[3]_i_11_n_0\
    );
\output_string_char_reg[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][3]\,
      I1 => \input_string_reg_n_0_[2][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][3]\,
      O => \output_string_char_reg[3]_i_12_n_0\
    );
\output_string_char_reg[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][3]\,
      I1 => \input_string_reg_n_0_[6][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][3]\,
      O => \output_string_char_reg[3]_i_13_n_0\
    );
\output_string_char_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[3]_i_6_n_0\,
      I1 => \output_string_char_reg[3]_i_7_n_0\,
      O => \output_string_char_reg[3]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[3]_i_8_n_0\,
      I1 => \output_string_char_reg[3]_i_9_n_0\,
      O => \output_string_char_reg[3]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[3]_i_10_n_0\,
      I1 => \output_string_char_reg[3]_i_11_n_0\,
      O => \output_string_char_reg[3]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[3]_i_12_n_0\,
      I1 => \output_string_char_reg[3]_i_13_n_0\,
      O => \output_string_char_reg[3]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][3]\,
      I1 => \input_string_reg_n_0_[26][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][3]\,
      O => \output_string_char_reg[3]_i_6_n_0\
    );
\output_string_char_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][3]\,
      I1 => \input_string_reg_n_0_[30][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][3]\,
      O => \output_string_char_reg[3]_i_7_n_0\
    );
\output_string_char_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][3]\,
      I1 => \input_string_reg_n_0_[18][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][3]\,
      O => \output_string_char_reg[3]_i_8_n_0\
    );
\output_string_char_reg[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][3]\,
      I1 => \input_string_reg_n_0_[22][3]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][3]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][3]\,
      O => \output_string_char_reg[3]_i_9_n_0\
    );
\output_string_char_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[4]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(4)
    );
\output_string_char_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[4]_i_2_n_0\,
      I1 => \output_string_char_reg[4]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[4]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[4]_i_5_n_0\,
      O => \output_string_char_reg[4]_i_1_n_0\
    );
\output_string_char_reg[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][4]\,
      I1 => \input_string_reg_n_0_[10][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][4]\,
      O => \output_string_char_reg[4]_i_10_n_0\
    );
\output_string_char_reg[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][4]\,
      I1 => \input_string_reg_n_0_[14][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][4]\,
      O => \output_string_char_reg[4]_i_11_n_0\
    );
\output_string_char_reg[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][4]\,
      I1 => \input_string_reg_n_0_[2][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][4]\,
      O => \output_string_char_reg[4]_i_12_n_0\
    );
\output_string_char_reg[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][4]\,
      I1 => \input_string_reg_n_0_[6][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][4]\,
      O => \output_string_char_reg[4]_i_13_n_0\
    );
\output_string_char_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[4]_i_6_n_0\,
      I1 => \output_string_char_reg[4]_i_7_n_0\,
      O => \output_string_char_reg[4]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[4]_i_8_n_0\,
      I1 => \output_string_char_reg[4]_i_9_n_0\,
      O => \output_string_char_reg[4]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[4]_i_10_n_0\,
      I1 => \output_string_char_reg[4]_i_11_n_0\,
      O => \output_string_char_reg[4]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[4]_i_12_n_0\,
      I1 => \output_string_char_reg[4]_i_13_n_0\,
      O => \output_string_char_reg[4]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][4]\,
      I1 => \input_string_reg_n_0_[26][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][4]\,
      O => \output_string_char_reg[4]_i_6_n_0\
    );
\output_string_char_reg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][4]\,
      I1 => \input_string_reg_n_0_[30][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][4]\,
      O => \output_string_char_reg[4]_i_7_n_0\
    );
\output_string_char_reg[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][4]\,
      I1 => \input_string_reg_n_0_[18][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][4]\,
      O => \output_string_char_reg[4]_i_8_n_0\
    );
\output_string_char_reg[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][4]\,
      I1 => \input_string_reg_n_0_[22][4]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][4]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][4]\,
      O => \output_string_char_reg[4]_i_9_n_0\
    );
\output_string_char_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[5]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(5)
    );
\output_string_char_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[5]_i_2_n_0\,
      I1 => \output_string_char_reg[5]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[5]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[5]_i_5_n_0\,
      O => \output_string_char_reg[5]_i_1_n_0\
    );
\output_string_char_reg[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][5]\,
      I1 => \input_string_reg_n_0_[10][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][5]\,
      O => \output_string_char_reg[5]_i_10_n_0\
    );
\output_string_char_reg[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][5]\,
      I1 => \input_string_reg_n_0_[14][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][5]\,
      O => \output_string_char_reg[5]_i_11_n_0\
    );
\output_string_char_reg[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][5]\,
      I1 => \input_string_reg_n_0_[2][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][5]\,
      O => \output_string_char_reg[5]_i_12_n_0\
    );
\output_string_char_reg[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][5]\,
      I1 => \input_string_reg_n_0_[6][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][5]\,
      O => \output_string_char_reg[5]_i_13_n_0\
    );
\output_string_char_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[5]_i_6_n_0\,
      I1 => \output_string_char_reg[5]_i_7_n_0\,
      O => \output_string_char_reg[5]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[5]_i_8_n_0\,
      I1 => \output_string_char_reg[5]_i_9_n_0\,
      O => \output_string_char_reg[5]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[5]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[5]_i_10_n_0\,
      I1 => \output_string_char_reg[5]_i_11_n_0\,
      O => \output_string_char_reg[5]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[5]_i_12_n_0\,
      I1 => \output_string_char_reg[5]_i_13_n_0\,
      O => \output_string_char_reg[5]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][5]\,
      I1 => \input_string_reg_n_0_[26][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][5]\,
      O => \output_string_char_reg[5]_i_6_n_0\
    );
\output_string_char_reg[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][5]\,
      I1 => \input_string_reg_n_0_[30][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][5]\,
      O => \output_string_char_reg[5]_i_7_n_0\
    );
\output_string_char_reg[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][5]\,
      I1 => \input_string_reg_n_0_[18][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][5]\,
      O => \output_string_char_reg[5]_i_8_n_0\
    );
\output_string_char_reg[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][5]\,
      I1 => \input_string_reg_n_0_[22][5]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][5]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][5]\,
      O => \output_string_char_reg[5]_i_9_n_0\
    );
\output_string_char_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[6]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(6)
    );
\output_string_char_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[6]_i_2_n_0\,
      I1 => \output_string_char_reg[6]_i_3_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[6]_i_4_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[6]_i_5_n_0\,
      O => \output_string_char_reg[6]_i_1_n_0\
    );
\output_string_char_reg[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][6]\,
      I1 => \input_string_reg_n_0_[10][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][6]\,
      O => \output_string_char_reg[6]_i_10_n_0\
    );
\output_string_char_reg[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][6]\,
      I1 => \input_string_reg_n_0_[14][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][6]\,
      O => \output_string_char_reg[6]_i_11_n_0\
    );
\output_string_char_reg[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][6]\,
      I1 => \input_string_reg_n_0_[2][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][6]\,
      O => \output_string_char_reg[6]_i_12_n_0\
    );
\output_string_char_reg[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][6]\,
      I1 => \input_string_reg_n_0_[6][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][6]\,
      O => \output_string_char_reg[6]_i_13_n_0\
    );
\output_string_char_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[6]_i_6_n_0\,
      I1 => \output_string_char_reg[6]_i_7_n_0\,
      O => \output_string_char_reg[6]_i_2_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[6]_i_8_n_0\,
      I1 => \output_string_char_reg[6]_i_9_n_0\,
      O => \output_string_char_reg[6]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[6]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[6]_i_10_n_0\,
      I1 => \output_string_char_reg[6]_i_11_n_0\,
      O => \output_string_char_reg[6]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[6]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[6]_i_12_n_0\,
      I1 => \output_string_char_reg[6]_i_13_n_0\,
      O => \output_string_char_reg[6]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][6]\,
      I1 => \input_string_reg_n_0_[26][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][6]\,
      O => \output_string_char_reg[6]_i_6_n_0\
    );
\output_string_char_reg[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][6]\,
      I1 => \input_string_reg_n_0_[30][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][6]\,
      O => \output_string_char_reg[6]_i_7_n_0\
    );
\output_string_char_reg[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][6]\,
      I1 => \input_string_reg_n_0_[18][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][6]\,
      O => \output_string_char_reg[6]_i_8_n_0\
    );
\output_string_char_reg[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][6]\,
      I1 => \input_string_reg_n_0_[22][6]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][6]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][6]\,
      O => \output_string_char_reg[6]_i_9_n_0\
    );
\output_string_char_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \output_string_char_reg[7]_i_1_n_0\,
      G => \output_string_char_reg[7]_i_2_n_0\,
      GE => '1',
      Q => D(7)
    );
\output_string_char_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \output_string_char_reg[7]_i_3_n_0\,
      I1 => \output_string_char_reg[7]_i_4_n_0\,
      I2 => ctr_send(4),
      I3 => \output_string_char_reg[7]_i_5_n_0\,
      I4 => ctr_send(3),
      I5 => \output_string_char_reg[7]_i_6_n_0\,
      O => \output_string_char_reg[7]_i_1_n_0\
    );
\output_string_char_reg[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[23][7]\,
      I1 => \input_string_reg_n_0_[22][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[21][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[20][7]\,
      O => \output_string_char_reg[7]_i_10_n_0\
    );
\output_string_char_reg[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[11][7]\,
      I1 => \input_string_reg_n_0_[10][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[9][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[8][7]\,
      O => \output_string_char_reg[7]_i_11_n_0\
    );
\output_string_char_reg[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[15][7]\,
      I1 => \input_string_reg_n_0_[14][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[13][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[12][7]\,
      O => \output_string_char_reg[7]_i_12_n_0\
    );
\output_string_char_reg[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[3][7]\,
      I1 => \input_string_reg_n_0_[2][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[1][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[0][7]\,
      O => \output_string_char_reg[7]_i_13_n_0\
    );
\output_string_char_reg[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[7][7]\,
      I1 => \input_string_reg_n_0_[6][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[5][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[4][7]\,
      O => \output_string_char_reg[7]_i_14_n_0\
    );
\output_string_char_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \output_string_char_reg[7]_i_2_n_0\
    );
\output_string_char_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[7]_i_7_n_0\,
      I1 => \output_string_char_reg[7]_i_8_n_0\,
      O => \output_string_char_reg[7]_i_3_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[7]_i_9_n_0\,
      I1 => \output_string_char_reg[7]_i_10_n_0\,
      O => \output_string_char_reg[7]_i_4_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[7]_i_11_n_0\,
      I1 => \output_string_char_reg[7]_i_12_n_0\,
      O => \output_string_char_reg[7]_i_5_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \output_string_char_reg[7]_i_13_n_0\,
      I1 => \output_string_char_reg[7]_i_14_n_0\,
      O => \output_string_char_reg[7]_i_6_n_0\,
      S => ctr_send(2)
    );
\output_string_char_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[27][7]\,
      I1 => \input_string_reg_n_0_[26][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[25][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[24][7]\,
      O => \output_string_char_reg[7]_i_7_n_0\
    );
\output_string_char_reg[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[31][7]\,
      I1 => \input_string_reg_n_0_[30][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[29][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[28][7]\,
      O => \output_string_char_reg[7]_i_8_n_0\
    );
\output_string_char_reg[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \input_string_reg_n_0_[19][7]\,
      I1 => \input_string_reg_n_0_[18][7]\,
      I2 => ctr_send(1),
      I3 => \input_string_reg_n_0_[17][7]\,
      I4 => ctr_send(0),
      I5 => \input_string_reg_n_0_[16][7]\,
      O => \output_string_char_reg[7]_i_9_n_0\
    );
valid_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030002"
    )
        port map (
      I0 => \^slv_wire2\,
      I1 => ctr_send(7),
      I2 => ctr_send(5),
      I3 => ctr_send(6),
      I4 => done_bwt,
      O => valid_out_nxt
    );
valid_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => valid_out_nxt,
      Q => \^slv_wire2\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI : entity is "bwt_ip_v1_0_S00_AXI";
end bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI;

architecture STRUCTURE of bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI is
  signal ARESET : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slv_reg2 : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal slv_wire2 : STD_LOGIC;
  signal slv_wire3 : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair27";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => ARESET
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => ARESET
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => ARESET
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => ARESET
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => ARESET
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => ARESET
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => ARESET
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => ARESET
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2,
      I2 => axi_araddr(3),
      I3 => slv_reg1_0(0),
      I4 => axi_araddr(2),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(3),
      I2 => slv_reg1(10),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(3),
      I2 => slv_reg1(11),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(3),
      I2 => slv_reg1(12),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5E0"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => slv_reg1(13),
      I2 => axi_araddr(2),
      I3 => \slv_reg0_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(3),
      I2 => slv_reg1(14),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(15),
      I3 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[16]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(16),
      I3 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(17),
      I3 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(18),
      I3 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(19),
      I3 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(1),
      I3 => axi_araddr(2),
      I4 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(20),
      I3 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(21),
      I3 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(22),
      I3 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(23),
      I3 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(24),
      I3 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(25),
      I3 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(26),
      I3 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(27),
      I3 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(28),
      I3 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(29),
      I3 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(2),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(30),
      I3 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => slv_reg1(31),
      I3 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(3),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(4),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[4]\,
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(5),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(6),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(3),
      I2 => slv_reg1_0(7),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(3),
      I2 => slv_reg1(8),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(3),
      I2 => slv_reg1(9),
      I3 => axi_araddr(2),
      I4 => \slv_reg0_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => ARESET
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => ARESET
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => ARESET
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => ARESET
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => ARESET
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => ARESET
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => ARESET
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => ARESET
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => ARESET
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => ARESET
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => ARESET
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => ARESET
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => ARESET
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => ARESET
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => ARESET
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => ARESET
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => ARESET
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => ARESET
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => ARESET
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => ARESET
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => ARESET
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => ARESET
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => ARESET
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => ARESET
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => ARESET
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => ARESET
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => ARESET
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => ARESET
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => ARESET
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => ARESET
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => ARESET
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => ARESET
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => ARESET
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => ARESET
    );
bwt_top_inst: entity work.bwt_bwt_ip_0_0_bwt_top
     port map (
      D(13) => slv_wire3(14),
      D(12 downto 0) => slv_wire3(12 downto 0),
      Q(1 downto 0) => slv_reg0(1 downto 0),
      SR(0) => ARESET,
      \output_string_char_reg[7]_i_8_0\(7 downto 0) => slv_reg1_0(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      slv_wire2 => slv_wire2
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => ARESET
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => ARESET
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => ARESET
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => ARESET
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => ARESET
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => ARESET
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => ARESET
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => ARESET
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => ARESET
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => ARESET
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => ARESET
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => ARESET
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => ARESET
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => ARESET
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => ARESET
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => ARESET
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => ARESET
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => ARESET
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => ARESET
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => ARESET
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => ARESET
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => ARESET
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => ARESET
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => ARESET
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => ARESET
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => ARESET
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => ARESET
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => ARESET
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => ARESET
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => ARESET
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => ARESET
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => ARESET
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1_0(0),
      R => ARESET
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => ARESET
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => ARESET
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => ARESET
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => ARESET
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => ARESET
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => ARESET
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => ARESET
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => ARESET
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => ARESET
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => ARESET
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1_0(1),
      R => ARESET
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => ARESET
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => ARESET
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => ARESET
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => ARESET
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => ARESET
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => ARESET
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => ARESET
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => ARESET
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => ARESET
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => ARESET
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1_0(2),
      R => ARESET
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => ARESET
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => ARESET
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1_0(3),
      R => ARESET
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1_0(4),
      R => ARESET
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1_0(5),
      R => ARESET
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1_0(6),
      R => ARESET
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1_0(7),
      R => ARESET
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => ARESET
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => ARESET
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire2,
      Q => slv_reg2,
      R => '0'
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(0),
      Q => slv_reg3(0),
      R => '0'
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(10),
      Q => slv_reg3(10),
      R => '0'
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(11),
      Q => slv_reg3(11),
      R => '0'
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(12),
      Q => slv_reg3(12),
      R => '0'
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(14),
      Q => slv_reg3(14),
      R => '0'
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(1),
      Q => slv_reg3(1),
      R => '0'
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(2),
      Q => slv_reg3(2),
      R => '0'
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(3),
      Q => slv_reg3(3),
      R => '0'
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(4),
      Q => slv_reg3(4),
      R => '0'
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(5),
      Q => slv_reg3(5),
      R => '0'
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(6),
      Q => slv_reg3(6),
      R => '0'
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(7),
      Q => slv_reg3(7),
      R => '0'
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(8),
      Q => slv_reg3(8),
      R => '0'
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_wire3(9),
      Q => slv_reg3(9),
      R => '0'
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bwt_bwt_ip_0_0_bwt_ip_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bwt_bwt_ip_0_0_bwt_ip_v1_0 : entity is "bwt_ip_v1_0";
end bwt_bwt_ip_0_0_bwt_ip_v1_0;

architecture STRUCTURE of bwt_bwt_ip_0_0_bwt_ip_v1_0 is
begin
bwt_ip_v1_0_S00_AXI_inst: entity work.bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bwt_bwt_ip_0_0 is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bwt_bwt_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bwt_bwt_ip_0_0 : entity is "bwt_bwt_ip_0_0,bwt_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bwt_bwt_ip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bwt_bwt_ip_0_0 : entity is "bwt_ip_v1_0,Vivado 2019.1";
end bwt_bwt_ip_0_0;

architecture STRUCTURE of bwt_bwt_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bwt_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bwt_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.bwt_bwt_ip_0_0_bwt_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
