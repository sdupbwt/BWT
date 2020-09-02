// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Sep  3 01:17:59 2020
// Host        : DESKTOP-64JSPKI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/MTM/semestr8/SDUP_BWT/BWT_2/BWT/Zynq_bwt/bwt_test.srcs/sources_1/bd/bwt/ip/bwt_bwt_ip_0_0/bwt_bwt_ip_0_0_sim_netlist.v
// Design      : bwt_bwt_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bwt_bwt_ip_0_0,bwt_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bwt_ip_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module bwt_bwt_ip_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bwt_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bwt_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bwt_bwt_ip_0_0_bwt_ip_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "bwt_ip_v1_0" *) 
module bwt_bwt_ip_0_0_bwt_ip_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI bwt_ip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "bwt_ip_v1_0_S00_AXI" *) 
module bwt_bwt_ip_0_0_bwt_ip_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ARESET;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:8]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [7:0]slv_reg1_0;
  wire slv_reg2;
  wire [14:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire slv_wire2;
  wire [14:0]slv_wire3;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(ARESET));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2),
        .I2(axi_araddr[3]),
        .I3(slv_reg1_0[0]),
        .I4(axi_araddr[2]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1[10]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1[11]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1[12]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'hE5E0)) 
    \axi_rdata[13]_i_1 
       (.I0(axi_araddr[3]),
        .I1(slv_reg1[13]),
        .I2(axi_araddr[2]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1[14]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[15]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[16]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[17]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[18]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[19]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[1]),
        .I3(axi_araddr[2]),
        .I4(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[20]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[21]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[22]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[23]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[24]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[25]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[26]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[27]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[28]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[29]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[2]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[30]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(slv_reg1[31]),
        .I3(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[3]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[4]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[5]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[6]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1_0[7]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1[8]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[3]),
        .I2(slv_reg1[9]),
        .I3(axi_araddr[2]),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(ARESET));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(ARESET));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(ARESET));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(ARESET));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(ARESET));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(ARESET));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(ARESET));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(ARESET));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(ARESET));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(ARESET));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(ARESET));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(ARESET));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(ARESET));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(ARESET));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(ARESET));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(ARESET));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(ARESET));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(ARESET));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(ARESET));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(ARESET));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(ARESET));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(ARESET));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(ARESET));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(ARESET));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(ARESET));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(ARESET));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(ARESET));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(ARESET));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(ARESET));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(ARESET));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(ARESET));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(ARESET));
  bwt_bwt_ip_0_0_bwt_top bwt_top_inst
       (.D({slv_wire3[14],slv_wire3[12:0]}),
        .Q(slv_reg0),
        .SR(ARESET),
        .\output_string_char_reg[7]_i_8_0 (slv_reg1_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_wire2(slv_wire2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(ARESET));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(ARESET));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1_0[0]),
        .R(ARESET));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(ARESET));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(ARESET));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(ARESET));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(ARESET));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(ARESET));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(ARESET));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(ARESET));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(ARESET));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(ARESET));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(ARESET));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1_0[1]),
        .R(ARESET));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(ARESET));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(ARESET));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(ARESET));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(ARESET));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(ARESET));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(ARESET));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(ARESET));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(ARESET));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(ARESET));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(ARESET));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1_0[2]),
        .R(ARESET));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(ARESET));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(ARESET));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1_0[3]),
        .R(ARESET));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1_0[4]),
        .R(ARESET));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1_0[5]),
        .R(ARESET));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1_0[6]),
        .R(ARESET));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1_0[7]),
        .R(ARESET));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(ARESET));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(ARESET));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire2),
        .Q(slv_reg2),
        .R(1'b0));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[0]),
        .Q(slv_reg3[0]),
        .R(1'b0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[10]),
        .Q(slv_reg3[10]),
        .R(1'b0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[11]),
        .Q(slv_reg3[11]),
        .R(1'b0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[12]),
        .Q(slv_reg3[12]),
        .R(1'b0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[14]),
        .Q(slv_reg3[14]),
        .R(1'b0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[1]),
        .Q(slv_reg3[1]),
        .R(1'b0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[2]),
        .Q(slv_reg3[2]),
        .R(1'b0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[3]),
        .Q(slv_reg3[3]),
        .R(1'b0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[4]),
        .Q(slv_reg3[4]),
        .R(1'b0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[5]),
        .Q(slv_reg3[5]),
        .R(1'b0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[6]),
        .Q(slv_reg3[6]),
        .R(1'b0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[7]),
        .Q(slv_reg3[7]),
        .R(1'b0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[8]),
        .Q(slv_reg3[8]),
        .R(1'b0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_wire3[9]),
        .Q(slv_reg3[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "bwt_top" *) 
module bwt_bwt_ip_0_0_bwt_top
   (slv_wire2,
    SR,
    D,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn,
    \output_string_char_reg[7]_i_8_0 );
  output slv_wire2;
  output [0:0]SR;
  output [13:0]D;
  input s00_axi_aclk;
  input [1:0]Q;
  input s00_axi_aresetn;
  input [7:0]\output_string_char_reg[7]_i_8_0 ;

  wire [13:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [7:0]ctr;
  wire \ctr[0]_i_1_n_0 ;
  wire \ctr[5]_i_2_n_0 ;
  wire \ctr[6]_i_2_n_0 ;
  wire \ctr[7]_i_1_n_0 ;
  wire \ctr[7]_i_3_n_0 ;
  wire [7:1]ctr_nxt;
  wire [7:0]ctr_send;
  wire \ctr_send[0]_i_1_n_0 ;
  wire \ctr_send[5]_i_2_n_0 ;
  wire \ctr_send[7]_i_1_n_0 ;
  wire \ctr_send[7]_i_3_n_0 ;
  wire \ctr_send[7]_i_4_n_0 ;
  wire [7:1]ctr_send_nxt0_in;
  wire done_bwt;
  wire done_bwt_reg_i_1_n_0;
  wire done_bwt_reg_i_2_n_0;
  wire input_string;
  wire \input_string_reg[0][7]_i_1_n_0 ;
  wire \input_string_reg[10][7]_i_1_n_0 ;
  wire \input_string_reg[11][7]_i_1_n_0 ;
  wire \input_string_reg[12][7]_i_1_n_0 ;
  wire \input_string_reg[12][7]_i_2_n_0 ;
  wire \input_string_reg[13][7]_i_1_n_0 ;
  wire \input_string_reg[13][7]_i_2_n_0 ;
  wire \input_string_reg[14][7]_i_1_n_0 ;
  wire \input_string_reg[14][7]_i_2_n_0 ;
  wire \input_string_reg[15][7]_i_1_n_0 ;
  wire \input_string_reg[15][7]_i_2_n_0 ;
  wire \input_string_reg[16][7]_i_1_n_0 ;
  wire \input_string_reg[17][7]_i_1_n_0 ;
  wire \input_string_reg[18][7]_i_1_n_0 ;
  wire \input_string_reg[19][7]_i_1_n_0 ;
  wire \input_string_reg[1][7]_i_1_n_0 ;
  wire \input_string_reg[20][7]_i_1_n_0 ;
  wire \input_string_reg[21][7]_i_1_n_0 ;
  wire \input_string_reg[22][7]_i_1_n_0 ;
  wire \input_string_reg[23][7]_i_1_n_0 ;
  wire \input_string_reg[24][7]_i_1_n_0 ;
  wire \input_string_reg[25][7]_i_1_n_0 ;
  wire \input_string_reg[26][7]_i_1_n_0 ;
  wire \input_string_reg[27][7]_i_1_n_0 ;
  wire \input_string_reg[28][7]_i_1_n_0 ;
  wire \input_string_reg[28][7]_i_2_n_0 ;
  wire \input_string_reg[29][7]_i_1_n_0 ;
  wire \input_string_reg[29][7]_i_2_n_0 ;
  wire \input_string_reg[2][7]_i_1_n_0 ;
  wire \input_string_reg[30][7]_i_1_n_0 ;
  wire \input_string_reg[30][7]_i_2_n_0 ;
  wire \input_string_reg[31][7]_i_2_n_0 ;
  wire \input_string_reg[3][7]_i_1_n_0 ;
  wire \input_string_reg[4][7]_i_1_n_0 ;
  wire \input_string_reg[5][7]_i_1_n_0 ;
  wire \input_string_reg[6][7]_i_1_n_0 ;
  wire \input_string_reg[7][7]_i_1_n_0 ;
  wire \input_string_reg[8][7]_i_1_n_0 ;
  wire \input_string_reg[9][7]_i_1_n_0 ;
  wire \input_string_reg_n_0_[0][0] ;
  wire \input_string_reg_n_0_[0][1] ;
  wire \input_string_reg_n_0_[0][2] ;
  wire \input_string_reg_n_0_[0][3] ;
  wire \input_string_reg_n_0_[0][4] ;
  wire \input_string_reg_n_0_[0][5] ;
  wire \input_string_reg_n_0_[0][6] ;
  wire \input_string_reg_n_0_[0][7] ;
  wire \input_string_reg_n_0_[10][0] ;
  wire \input_string_reg_n_0_[10][1] ;
  wire \input_string_reg_n_0_[10][2] ;
  wire \input_string_reg_n_0_[10][3] ;
  wire \input_string_reg_n_0_[10][4] ;
  wire \input_string_reg_n_0_[10][5] ;
  wire \input_string_reg_n_0_[10][6] ;
  wire \input_string_reg_n_0_[10][7] ;
  wire \input_string_reg_n_0_[11][0] ;
  wire \input_string_reg_n_0_[11][1] ;
  wire \input_string_reg_n_0_[11][2] ;
  wire \input_string_reg_n_0_[11][3] ;
  wire \input_string_reg_n_0_[11][4] ;
  wire \input_string_reg_n_0_[11][5] ;
  wire \input_string_reg_n_0_[11][6] ;
  wire \input_string_reg_n_0_[11][7] ;
  wire \input_string_reg_n_0_[12][0] ;
  wire \input_string_reg_n_0_[12][1] ;
  wire \input_string_reg_n_0_[12][2] ;
  wire \input_string_reg_n_0_[12][3] ;
  wire \input_string_reg_n_0_[12][4] ;
  wire \input_string_reg_n_0_[12][5] ;
  wire \input_string_reg_n_0_[12][6] ;
  wire \input_string_reg_n_0_[12][7] ;
  wire \input_string_reg_n_0_[13][0] ;
  wire \input_string_reg_n_0_[13][1] ;
  wire \input_string_reg_n_0_[13][2] ;
  wire \input_string_reg_n_0_[13][3] ;
  wire \input_string_reg_n_0_[13][4] ;
  wire \input_string_reg_n_0_[13][5] ;
  wire \input_string_reg_n_0_[13][6] ;
  wire \input_string_reg_n_0_[13][7] ;
  wire \input_string_reg_n_0_[14][0] ;
  wire \input_string_reg_n_0_[14][1] ;
  wire \input_string_reg_n_0_[14][2] ;
  wire \input_string_reg_n_0_[14][3] ;
  wire \input_string_reg_n_0_[14][4] ;
  wire \input_string_reg_n_0_[14][5] ;
  wire \input_string_reg_n_0_[14][6] ;
  wire \input_string_reg_n_0_[14][7] ;
  wire \input_string_reg_n_0_[15][0] ;
  wire \input_string_reg_n_0_[15][1] ;
  wire \input_string_reg_n_0_[15][2] ;
  wire \input_string_reg_n_0_[15][3] ;
  wire \input_string_reg_n_0_[15][4] ;
  wire \input_string_reg_n_0_[15][5] ;
  wire \input_string_reg_n_0_[15][6] ;
  wire \input_string_reg_n_0_[15][7] ;
  wire \input_string_reg_n_0_[16][0] ;
  wire \input_string_reg_n_0_[16][1] ;
  wire \input_string_reg_n_0_[16][2] ;
  wire \input_string_reg_n_0_[16][3] ;
  wire \input_string_reg_n_0_[16][4] ;
  wire \input_string_reg_n_0_[16][5] ;
  wire \input_string_reg_n_0_[16][6] ;
  wire \input_string_reg_n_0_[16][7] ;
  wire \input_string_reg_n_0_[17][0] ;
  wire \input_string_reg_n_0_[17][1] ;
  wire \input_string_reg_n_0_[17][2] ;
  wire \input_string_reg_n_0_[17][3] ;
  wire \input_string_reg_n_0_[17][4] ;
  wire \input_string_reg_n_0_[17][5] ;
  wire \input_string_reg_n_0_[17][6] ;
  wire \input_string_reg_n_0_[17][7] ;
  wire \input_string_reg_n_0_[18][0] ;
  wire \input_string_reg_n_0_[18][1] ;
  wire \input_string_reg_n_0_[18][2] ;
  wire \input_string_reg_n_0_[18][3] ;
  wire \input_string_reg_n_0_[18][4] ;
  wire \input_string_reg_n_0_[18][5] ;
  wire \input_string_reg_n_0_[18][6] ;
  wire \input_string_reg_n_0_[18][7] ;
  wire \input_string_reg_n_0_[19][0] ;
  wire \input_string_reg_n_0_[19][1] ;
  wire \input_string_reg_n_0_[19][2] ;
  wire \input_string_reg_n_0_[19][3] ;
  wire \input_string_reg_n_0_[19][4] ;
  wire \input_string_reg_n_0_[19][5] ;
  wire \input_string_reg_n_0_[19][6] ;
  wire \input_string_reg_n_0_[19][7] ;
  wire \input_string_reg_n_0_[1][0] ;
  wire \input_string_reg_n_0_[1][1] ;
  wire \input_string_reg_n_0_[1][2] ;
  wire \input_string_reg_n_0_[1][3] ;
  wire \input_string_reg_n_0_[1][4] ;
  wire \input_string_reg_n_0_[1][5] ;
  wire \input_string_reg_n_0_[1][6] ;
  wire \input_string_reg_n_0_[1][7] ;
  wire \input_string_reg_n_0_[20][0] ;
  wire \input_string_reg_n_0_[20][1] ;
  wire \input_string_reg_n_0_[20][2] ;
  wire \input_string_reg_n_0_[20][3] ;
  wire \input_string_reg_n_0_[20][4] ;
  wire \input_string_reg_n_0_[20][5] ;
  wire \input_string_reg_n_0_[20][6] ;
  wire \input_string_reg_n_0_[20][7] ;
  wire \input_string_reg_n_0_[21][0] ;
  wire \input_string_reg_n_0_[21][1] ;
  wire \input_string_reg_n_0_[21][2] ;
  wire \input_string_reg_n_0_[21][3] ;
  wire \input_string_reg_n_0_[21][4] ;
  wire \input_string_reg_n_0_[21][5] ;
  wire \input_string_reg_n_0_[21][6] ;
  wire \input_string_reg_n_0_[21][7] ;
  wire \input_string_reg_n_0_[22][0] ;
  wire \input_string_reg_n_0_[22][1] ;
  wire \input_string_reg_n_0_[22][2] ;
  wire \input_string_reg_n_0_[22][3] ;
  wire \input_string_reg_n_0_[22][4] ;
  wire \input_string_reg_n_0_[22][5] ;
  wire \input_string_reg_n_0_[22][6] ;
  wire \input_string_reg_n_0_[22][7] ;
  wire \input_string_reg_n_0_[23][0] ;
  wire \input_string_reg_n_0_[23][1] ;
  wire \input_string_reg_n_0_[23][2] ;
  wire \input_string_reg_n_0_[23][3] ;
  wire \input_string_reg_n_0_[23][4] ;
  wire \input_string_reg_n_0_[23][5] ;
  wire \input_string_reg_n_0_[23][6] ;
  wire \input_string_reg_n_0_[23][7] ;
  wire \input_string_reg_n_0_[24][0] ;
  wire \input_string_reg_n_0_[24][1] ;
  wire \input_string_reg_n_0_[24][2] ;
  wire \input_string_reg_n_0_[24][3] ;
  wire \input_string_reg_n_0_[24][4] ;
  wire \input_string_reg_n_0_[24][5] ;
  wire \input_string_reg_n_0_[24][6] ;
  wire \input_string_reg_n_0_[24][7] ;
  wire \input_string_reg_n_0_[25][0] ;
  wire \input_string_reg_n_0_[25][1] ;
  wire \input_string_reg_n_0_[25][2] ;
  wire \input_string_reg_n_0_[25][3] ;
  wire \input_string_reg_n_0_[25][4] ;
  wire \input_string_reg_n_0_[25][5] ;
  wire \input_string_reg_n_0_[25][6] ;
  wire \input_string_reg_n_0_[25][7] ;
  wire \input_string_reg_n_0_[26][0] ;
  wire \input_string_reg_n_0_[26][1] ;
  wire \input_string_reg_n_0_[26][2] ;
  wire \input_string_reg_n_0_[26][3] ;
  wire \input_string_reg_n_0_[26][4] ;
  wire \input_string_reg_n_0_[26][5] ;
  wire \input_string_reg_n_0_[26][6] ;
  wire \input_string_reg_n_0_[26][7] ;
  wire \input_string_reg_n_0_[27][0] ;
  wire \input_string_reg_n_0_[27][1] ;
  wire \input_string_reg_n_0_[27][2] ;
  wire \input_string_reg_n_0_[27][3] ;
  wire \input_string_reg_n_0_[27][4] ;
  wire \input_string_reg_n_0_[27][5] ;
  wire \input_string_reg_n_0_[27][6] ;
  wire \input_string_reg_n_0_[27][7] ;
  wire \input_string_reg_n_0_[28][0] ;
  wire \input_string_reg_n_0_[28][1] ;
  wire \input_string_reg_n_0_[28][2] ;
  wire \input_string_reg_n_0_[28][3] ;
  wire \input_string_reg_n_0_[28][4] ;
  wire \input_string_reg_n_0_[28][5] ;
  wire \input_string_reg_n_0_[28][6] ;
  wire \input_string_reg_n_0_[28][7] ;
  wire \input_string_reg_n_0_[29][0] ;
  wire \input_string_reg_n_0_[29][1] ;
  wire \input_string_reg_n_0_[29][2] ;
  wire \input_string_reg_n_0_[29][3] ;
  wire \input_string_reg_n_0_[29][4] ;
  wire \input_string_reg_n_0_[29][5] ;
  wire \input_string_reg_n_0_[29][6] ;
  wire \input_string_reg_n_0_[29][7] ;
  wire \input_string_reg_n_0_[2][0] ;
  wire \input_string_reg_n_0_[2][1] ;
  wire \input_string_reg_n_0_[2][2] ;
  wire \input_string_reg_n_0_[2][3] ;
  wire \input_string_reg_n_0_[2][4] ;
  wire \input_string_reg_n_0_[2][5] ;
  wire \input_string_reg_n_0_[2][6] ;
  wire \input_string_reg_n_0_[2][7] ;
  wire \input_string_reg_n_0_[30][0] ;
  wire \input_string_reg_n_0_[30][1] ;
  wire \input_string_reg_n_0_[30][2] ;
  wire \input_string_reg_n_0_[30][3] ;
  wire \input_string_reg_n_0_[30][4] ;
  wire \input_string_reg_n_0_[30][5] ;
  wire \input_string_reg_n_0_[30][6] ;
  wire \input_string_reg_n_0_[30][7] ;
  wire \input_string_reg_n_0_[31][0] ;
  wire \input_string_reg_n_0_[31][1] ;
  wire \input_string_reg_n_0_[31][2] ;
  wire \input_string_reg_n_0_[31][3] ;
  wire \input_string_reg_n_0_[31][4] ;
  wire \input_string_reg_n_0_[31][5] ;
  wire \input_string_reg_n_0_[31][6] ;
  wire \input_string_reg_n_0_[31][7] ;
  wire \input_string_reg_n_0_[3][0] ;
  wire \input_string_reg_n_0_[3][1] ;
  wire \input_string_reg_n_0_[3][2] ;
  wire \input_string_reg_n_0_[3][3] ;
  wire \input_string_reg_n_0_[3][4] ;
  wire \input_string_reg_n_0_[3][5] ;
  wire \input_string_reg_n_0_[3][6] ;
  wire \input_string_reg_n_0_[3][7] ;
  wire \input_string_reg_n_0_[4][0] ;
  wire \input_string_reg_n_0_[4][1] ;
  wire \input_string_reg_n_0_[4][2] ;
  wire \input_string_reg_n_0_[4][3] ;
  wire \input_string_reg_n_0_[4][4] ;
  wire \input_string_reg_n_0_[4][5] ;
  wire \input_string_reg_n_0_[4][6] ;
  wire \input_string_reg_n_0_[4][7] ;
  wire \input_string_reg_n_0_[5][0] ;
  wire \input_string_reg_n_0_[5][1] ;
  wire \input_string_reg_n_0_[5][2] ;
  wire \input_string_reg_n_0_[5][3] ;
  wire \input_string_reg_n_0_[5][4] ;
  wire \input_string_reg_n_0_[5][5] ;
  wire \input_string_reg_n_0_[5][6] ;
  wire \input_string_reg_n_0_[5][7] ;
  wire \input_string_reg_n_0_[6][0] ;
  wire \input_string_reg_n_0_[6][1] ;
  wire \input_string_reg_n_0_[6][2] ;
  wire \input_string_reg_n_0_[6][3] ;
  wire \input_string_reg_n_0_[6][4] ;
  wire \input_string_reg_n_0_[6][5] ;
  wire \input_string_reg_n_0_[6][6] ;
  wire \input_string_reg_n_0_[6][7] ;
  wire \input_string_reg_n_0_[7][0] ;
  wire \input_string_reg_n_0_[7][1] ;
  wire \input_string_reg_n_0_[7][2] ;
  wire \input_string_reg_n_0_[7][3] ;
  wire \input_string_reg_n_0_[7][4] ;
  wire \input_string_reg_n_0_[7][5] ;
  wire \input_string_reg_n_0_[7][6] ;
  wire \input_string_reg_n_0_[7][7] ;
  wire \input_string_reg_n_0_[8][0] ;
  wire \input_string_reg_n_0_[8][1] ;
  wire \input_string_reg_n_0_[8][2] ;
  wire \input_string_reg_n_0_[8][3] ;
  wire \input_string_reg_n_0_[8][4] ;
  wire \input_string_reg_n_0_[8][5] ;
  wire \input_string_reg_n_0_[8][6] ;
  wire \input_string_reg_n_0_[8][7] ;
  wire \input_string_reg_n_0_[9][0] ;
  wire \input_string_reg_n_0_[9][1] ;
  wire \input_string_reg_n_0_[9][2] ;
  wire \input_string_reg_n_0_[9][3] ;
  wire \input_string_reg_n_0_[9][4] ;
  wire \input_string_reg_n_0_[9][5] ;
  wire \input_string_reg_n_0_[9][6] ;
  wire \input_string_reg_n_0_[9][7] ;
  wire \output_check_reg[0]_i_1_n_0 ;
  wire \output_check_reg[1]_i_1_n_0 ;
  wire \output_check_reg[2]_i_1_n_0 ;
  wire \output_check_reg[3]_i_1_n_0 ;
  wire \output_check_reg[4]_i_1_n_0 ;
  wire \output_check_reg[6]_i_1_n_0 ;
  wire \output_string_char_reg[0]_i_10_n_0 ;
  wire \output_string_char_reg[0]_i_11_n_0 ;
  wire \output_string_char_reg[0]_i_12_n_0 ;
  wire \output_string_char_reg[0]_i_13_n_0 ;
  wire \output_string_char_reg[0]_i_1_n_0 ;
  wire \output_string_char_reg[0]_i_2_n_0 ;
  wire \output_string_char_reg[0]_i_3_n_0 ;
  wire \output_string_char_reg[0]_i_4_n_0 ;
  wire \output_string_char_reg[0]_i_5_n_0 ;
  wire \output_string_char_reg[0]_i_6_n_0 ;
  wire \output_string_char_reg[0]_i_7_n_0 ;
  wire \output_string_char_reg[0]_i_8_n_0 ;
  wire \output_string_char_reg[0]_i_9_n_0 ;
  wire \output_string_char_reg[1]_i_10_n_0 ;
  wire \output_string_char_reg[1]_i_11_n_0 ;
  wire \output_string_char_reg[1]_i_12_n_0 ;
  wire \output_string_char_reg[1]_i_13_n_0 ;
  wire \output_string_char_reg[1]_i_1_n_0 ;
  wire \output_string_char_reg[1]_i_2_n_0 ;
  wire \output_string_char_reg[1]_i_3_n_0 ;
  wire \output_string_char_reg[1]_i_4_n_0 ;
  wire \output_string_char_reg[1]_i_5_n_0 ;
  wire \output_string_char_reg[1]_i_6_n_0 ;
  wire \output_string_char_reg[1]_i_7_n_0 ;
  wire \output_string_char_reg[1]_i_8_n_0 ;
  wire \output_string_char_reg[1]_i_9_n_0 ;
  wire \output_string_char_reg[2]_i_10_n_0 ;
  wire \output_string_char_reg[2]_i_11_n_0 ;
  wire \output_string_char_reg[2]_i_12_n_0 ;
  wire \output_string_char_reg[2]_i_13_n_0 ;
  wire \output_string_char_reg[2]_i_1_n_0 ;
  wire \output_string_char_reg[2]_i_2_n_0 ;
  wire \output_string_char_reg[2]_i_3_n_0 ;
  wire \output_string_char_reg[2]_i_4_n_0 ;
  wire \output_string_char_reg[2]_i_5_n_0 ;
  wire \output_string_char_reg[2]_i_6_n_0 ;
  wire \output_string_char_reg[2]_i_7_n_0 ;
  wire \output_string_char_reg[2]_i_8_n_0 ;
  wire \output_string_char_reg[2]_i_9_n_0 ;
  wire \output_string_char_reg[3]_i_10_n_0 ;
  wire \output_string_char_reg[3]_i_11_n_0 ;
  wire \output_string_char_reg[3]_i_12_n_0 ;
  wire \output_string_char_reg[3]_i_13_n_0 ;
  wire \output_string_char_reg[3]_i_1_n_0 ;
  wire \output_string_char_reg[3]_i_2_n_0 ;
  wire \output_string_char_reg[3]_i_3_n_0 ;
  wire \output_string_char_reg[3]_i_4_n_0 ;
  wire \output_string_char_reg[3]_i_5_n_0 ;
  wire \output_string_char_reg[3]_i_6_n_0 ;
  wire \output_string_char_reg[3]_i_7_n_0 ;
  wire \output_string_char_reg[3]_i_8_n_0 ;
  wire \output_string_char_reg[3]_i_9_n_0 ;
  wire \output_string_char_reg[4]_i_10_n_0 ;
  wire \output_string_char_reg[4]_i_11_n_0 ;
  wire \output_string_char_reg[4]_i_12_n_0 ;
  wire \output_string_char_reg[4]_i_13_n_0 ;
  wire \output_string_char_reg[4]_i_1_n_0 ;
  wire \output_string_char_reg[4]_i_2_n_0 ;
  wire \output_string_char_reg[4]_i_3_n_0 ;
  wire \output_string_char_reg[4]_i_4_n_0 ;
  wire \output_string_char_reg[4]_i_5_n_0 ;
  wire \output_string_char_reg[4]_i_6_n_0 ;
  wire \output_string_char_reg[4]_i_7_n_0 ;
  wire \output_string_char_reg[4]_i_8_n_0 ;
  wire \output_string_char_reg[4]_i_9_n_0 ;
  wire \output_string_char_reg[5]_i_10_n_0 ;
  wire \output_string_char_reg[5]_i_11_n_0 ;
  wire \output_string_char_reg[5]_i_12_n_0 ;
  wire \output_string_char_reg[5]_i_13_n_0 ;
  wire \output_string_char_reg[5]_i_1_n_0 ;
  wire \output_string_char_reg[5]_i_2_n_0 ;
  wire \output_string_char_reg[5]_i_3_n_0 ;
  wire \output_string_char_reg[5]_i_4_n_0 ;
  wire \output_string_char_reg[5]_i_5_n_0 ;
  wire \output_string_char_reg[5]_i_6_n_0 ;
  wire \output_string_char_reg[5]_i_7_n_0 ;
  wire \output_string_char_reg[5]_i_8_n_0 ;
  wire \output_string_char_reg[5]_i_9_n_0 ;
  wire \output_string_char_reg[6]_i_10_n_0 ;
  wire \output_string_char_reg[6]_i_11_n_0 ;
  wire \output_string_char_reg[6]_i_12_n_0 ;
  wire \output_string_char_reg[6]_i_13_n_0 ;
  wire \output_string_char_reg[6]_i_1_n_0 ;
  wire \output_string_char_reg[6]_i_2_n_0 ;
  wire \output_string_char_reg[6]_i_3_n_0 ;
  wire \output_string_char_reg[6]_i_4_n_0 ;
  wire \output_string_char_reg[6]_i_5_n_0 ;
  wire \output_string_char_reg[6]_i_6_n_0 ;
  wire \output_string_char_reg[6]_i_7_n_0 ;
  wire \output_string_char_reg[6]_i_8_n_0 ;
  wire \output_string_char_reg[6]_i_9_n_0 ;
  wire \output_string_char_reg[7]_i_10_n_0 ;
  wire \output_string_char_reg[7]_i_11_n_0 ;
  wire \output_string_char_reg[7]_i_12_n_0 ;
  wire \output_string_char_reg[7]_i_13_n_0 ;
  wire \output_string_char_reg[7]_i_14_n_0 ;
  wire \output_string_char_reg[7]_i_1_n_0 ;
  wire \output_string_char_reg[7]_i_2_n_0 ;
  wire \output_string_char_reg[7]_i_3_n_0 ;
  wire \output_string_char_reg[7]_i_4_n_0 ;
  wire \output_string_char_reg[7]_i_5_n_0 ;
  wire \output_string_char_reg[7]_i_6_n_0 ;
  wire \output_string_char_reg[7]_i_7_n_0 ;
  wire [7:0]\output_string_char_reg[7]_i_8_0 ;
  wire \output_string_char_reg[7]_i_8_n_0 ;
  wire \output_string_char_reg[7]_i_9_n_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire slv_wire2;
  wire [1:0]state;
  wire [1:0]state_nxt;
  wire valid_out_nxt;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFBFC)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[1]),
        .I1(state[1]),
        .I2(Q[0]),
        .I3(state[0]),
        .O(state_nxt[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFDBA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(state[0]),
        .O(state_nxt[1]));
  (* FSM_ENCODED_STATES = "READ_DATA:01,WRITE_DATA:10,WAIT_TO_ZERO:11,IDLE:00" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(state_nxt[0]),
        .Q(state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "READ_DATA:01,WRITE_DATA:10,WAIT_TO_ZERO:11,IDLE:00" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(state_nxt[1]),
        .Q(state[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ctr[0]_i_1 
       (.I0(state[0]),
        .I1(ctr[0]),
        .O(\ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \ctr[1]_i_1 
       (.I0(ctr[0]),
        .I1(ctr[1]),
        .I2(state[0]),
        .O(ctr_nxt[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \ctr[2]_i_1 
       (.I0(ctr[0]),
        .I1(ctr[1]),
        .I2(ctr[2]),
        .I3(state[0]),
        .O(ctr_nxt[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \ctr[3]_i_1 
       (.I0(ctr[2]),
        .I1(ctr[0]),
        .I2(ctr[1]),
        .I3(ctr[3]),
        .I4(state[0]),
        .O(ctr_nxt[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \ctr[4]_i_1 
       (.I0(ctr[4]),
        .I1(ctr[3]),
        .I2(ctr[2]),
        .I3(ctr[0]),
        .I4(ctr[1]),
        .I5(state[0]),
        .O(ctr_nxt[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctr[5]_i_1 
       (.I0(\ctr[5]_i_2_n_0 ),
        .I1(state[0]),
        .O(ctr_nxt[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[5]_i_2 
       (.I0(ctr[0]),
        .I1(ctr[1]),
        .I2(ctr[4]),
        .I3(ctr[2]),
        .I4(ctr[3]),
        .I5(ctr[5]),
        .O(\ctr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \ctr[6]_i_1 
       (.I0(ctr[6]),
        .I1(ctr[3]),
        .I2(\ctr[6]_i_2_n_0 ),
        .I3(state[0]),
        .O(ctr_nxt[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[6]_i_2 
       (.I0(ctr[5]),
        .I1(ctr[0]),
        .I2(ctr[1]),
        .I3(ctr[4]),
        .I4(ctr[2]),
        .I5(ctr[6]),
        .O(\ctr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \ctr[7]_i_1 
       (.I0(state[0]),
        .I1(ctr[6]),
        .I2(ctr[5]),
        .I3(ctr[7]),
        .I4(state[1]),
        .O(\ctr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEA2A0000)) 
    \ctr[7]_i_2 
       (.I0(ctr[7]),
        .I1(ctr[3]),
        .I2(ctr[2]),
        .I3(\ctr[7]_i_3_n_0 ),
        .I4(state[0]),
        .O(ctr_nxt[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ctr[7]_i_3 
       (.I0(ctr[5]),
        .I1(ctr[0]),
        .I2(ctr[6]),
        .I3(ctr[1]),
        .I4(ctr[4]),
        .I5(ctr[7]),
        .O(\ctr[7]_i_3_n_0 ));
  FDRE \ctr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(\ctr[0]_i_1_n_0 ),
        .Q(ctr[0]),
        .R(SR));
  FDRE \ctr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[1]),
        .Q(ctr[1]),
        .R(SR));
  FDRE \ctr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[2]),
        .Q(ctr[2]),
        .R(SR));
  FDRE \ctr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[3]),
        .Q(ctr[3]),
        .R(SR));
  FDRE \ctr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[4]),
        .Q(ctr[4]),
        .R(SR));
  FDRE \ctr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[5]),
        .Q(ctr[5]),
        .R(SR));
  FDRE \ctr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[6]),
        .Q(ctr[6]),
        .R(SR));
  FDRE \ctr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ctr[7]_i_1_n_0 ),
        .D(ctr_nxt[7]),
        .Q(ctr[7]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \ctr_send[0]_i_1 
       (.I0(state[1]),
        .I1(ctr_send[0]),
        .O(\ctr_send[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \ctr_send[1]_i_1 
       (.I0(ctr_send[0]),
        .I1(ctr_send[1]),
        .I2(state[1]),
        .O(ctr_send_nxt0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \ctr_send[2]_i_1 
       (.I0(ctr_send[0]),
        .I1(ctr_send[1]),
        .I2(ctr_send[2]),
        .I3(state[1]),
        .O(ctr_send_nxt0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \ctr_send[3]_i_1 
       (.I0(ctr_send[2]),
        .I1(ctr_send[0]),
        .I2(ctr_send[1]),
        .I3(ctr_send[3]),
        .I4(state[1]),
        .O(ctr_send_nxt0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \ctr_send[4]_i_1 
       (.I0(ctr_send[3]),
        .I1(ctr_send[1]),
        .I2(ctr_send[0]),
        .I3(ctr_send[2]),
        .I4(ctr_send[4]),
        .I5(state[1]),
        .O(ctr_send_nxt0_in[4]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \ctr_send[5]_i_1 
       (.I0(ctr_send[4]),
        .I1(ctr_send[2]),
        .I2(\ctr_send[5]_i_2_n_0 ),
        .I3(ctr_send[3]),
        .I4(ctr_send[5]),
        .I5(state[1]),
        .O(ctr_send_nxt0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctr_send[5]_i_2 
       (.I0(ctr_send[0]),
        .I1(ctr_send[1]),
        .O(\ctr_send[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \ctr_send[6]_i_1 
       (.I0(\ctr_send[7]_i_3_n_0 ),
        .I1(ctr_send[6]),
        .I2(\ctr_send[7]_i_4_n_0 ),
        .I3(state[1]),
        .O(ctr_send_nxt0_in[6]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \ctr_send[7]_i_1 
       (.I0(state[1]),
        .I1(ctr_send[7]),
        .I2(ctr_send[6]),
        .I3(ctr_send[5]),
        .I4(state[0]),
        .O(\ctr_send[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF8580000)) 
    \ctr_send[7]_i_2 
       (.I0(ctr_send[6]),
        .I1(\ctr_send[7]_i_3_n_0 ),
        .I2(ctr_send[7]),
        .I3(\ctr_send[7]_i_4_n_0 ),
        .I4(state[1]),
        .O(ctr_send_nxt0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ctr_send[7]_i_3 
       (.I0(ctr_send[4]),
        .I1(ctr_send[2]),
        .I2(ctr_send[0]),
        .I3(ctr_send[1]),
        .I4(ctr_send[3]),
        .I5(ctr_send[5]),
        .O(\ctr_send[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ctr_send[7]_i_4 
       (.I0(ctr_send[4]),
        .I1(ctr_send[2]),
        .I2(ctr_send[1]),
        .I3(ctr_send[0]),
        .I4(ctr_send[3]),
        .I5(ctr_send[5]),
        .O(\ctr_send[7]_i_4_n_0 ));
  FDRE \ctr_send_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(\ctr_send[0]_i_1_n_0 ),
        .Q(ctr_send[0]),
        .R(SR));
  FDRE \ctr_send_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[1]),
        .Q(ctr_send[1]),
        .R(SR));
  FDRE \ctr_send_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[2]),
        .Q(ctr_send[2]),
        .R(SR));
  FDRE \ctr_send_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[3]),
        .Q(ctr_send[3]),
        .R(SR));
  FDRE \ctr_send_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[4]),
        .Q(ctr_send[4]),
        .R(SR));
  FDRE \ctr_send_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[5]),
        .Q(ctr_send[5]),
        .R(SR));
  FDRE \ctr_send_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[6]),
        .Q(ctr_send[6]),
        .R(SR));
  FDRE \ctr_send_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ctr_send[7]_i_1_n_0 ),
        .D(ctr_send_nxt0_in[7]),
        .Q(ctr_send[7]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    done_bwt_reg
       (.CLR(1'b0),
        .D(done_bwt_reg_i_1_n_0),
        .G(done_bwt_reg_i_2_n_0),
        .GE(1'b1),
        .Q(done_bwt));
  LUT3 #(
    .INIT(8'hFE)) 
    done_bwt_reg_i_1
       (.I0(ctr[6]),
        .I1(ctr[5]),
        .I2(ctr[7]),
        .O(done_bwt_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    done_bwt_reg_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .O(done_bwt_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[0][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[0][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[0][7] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[0][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[12][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[0][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[10][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[10][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[10][7] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[10][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[14][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[10][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[11][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[11][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[11][7] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[11][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[15][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[11][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[12][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[12][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[12][7] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[12][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[12][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \input_string_reg[12][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[12][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[13][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[13][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[13][7] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[13][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[13][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \input_string_reg[13][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[13][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[14][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[14][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[14][7] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[14][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[14][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \input_string_reg[14][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[14][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[15][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[15][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[15][7] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[15][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[15][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \input_string_reg[15][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[15][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[16][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[16][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[16][7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[16][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[28][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[16][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[17][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[17][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[17][7] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[17][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[29][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[17][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[18][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[18][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[18][7] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[18][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[30][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[18][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[19][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[19][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[19][7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[19][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[31][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[19][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[1][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[1][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[1][7] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[1][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[13][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[1][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[20][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[20][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[20][7] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[20][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[28][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[20][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[21][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[21][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[21][7] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[21][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[29][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[21][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[22][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[22][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[22][7] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[22][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[30][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[22][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[23][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[23][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[23][7] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[23][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[31][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[23][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[24][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[24][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[24][7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[24][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[28][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[24][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[25][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[25][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[25][7] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[25][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[29][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[25][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[26][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[26][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[26][7] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[26][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[30][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[26][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[27][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[27][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[27][7] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[27][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[31][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[27][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[28][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[28][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[28][7] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[28][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[28][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[28][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \input_string_reg[28][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[28][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[29][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[29][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[29][7] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[29][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[29][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[29][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \input_string_reg[29][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[29][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[2][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[2][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[2][7] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[2][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[14][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[2][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[30][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[30][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[30][7] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[30][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[30][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \input_string_reg[30][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[30][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[31][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(input_string),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[31][7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \input_string_reg[31][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[31][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(input_string));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \input_string_reg[31][7]_i_2 
       (.I0(ctr[1]),
        .I1(ctr[6]),
        .I2(ctr[0]),
        .I3(ctr[5]),
        .I4(ctr[7]),
        .I5(ctr[4]),
        .O(\input_string_reg[31][7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[3][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[3][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[3][7] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \input_string_reg[3][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[15][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[3][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[4][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[4][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[4][7] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[4][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[12][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[4][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[5][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[5][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[5][7] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[5][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[13][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[5][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[6][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[6][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[6][7] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[6][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[14][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[6][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[7][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[7][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[7][7] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_string_reg[7][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[15][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[7][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[8][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[8][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[8][7] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[8][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[12][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[8][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [0]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [1]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [2]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [3]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][3] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [4]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][4] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [5]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][5] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [6]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][6] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \input_string_reg[9][7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_8_0 [7]),
        .G(\input_string_reg[9][7]_i_1_n_0 ),
        .GE(1'b1),
        .Q(\input_string_reg_n_0_[9][7] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \input_string_reg[9][7]_i_1 
       (.I0(state[0]),
        .I1(ctr[2]),
        .I2(\input_string_reg[13][7]_i_2_n_0 ),
        .I3(ctr[3]),
        .I4(state[1]),
        .O(\input_string_reg[9][7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_check_reg[0] 
       (.CLR(1'b0),
        .D(\output_check_reg[0]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \output_check_reg[0]_i_1 
       (.I0(ctr_send[2]),
        .I1(ctr_send[3]),
        .I2(ctr_send[4]),
        .I3(ctr_send[0]),
        .O(\output_check_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_check_reg[1] 
       (.CLR(1'b0),
        .D(\output_check_reg[1]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h295555AA)) 
    \output_check_reg[1]_i_1 
       (.I0(ctr_send[1]),
        .I1(ctr_send[2]),
        .I2(ctr_send[3]),
        .I3(ctr_send[4]),
        .I4(ctr_send[0]),
        .O(\output_check_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_check_reg[2] 
       (.CLR(1'b0),
        .D(\output_check_reg[2]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h855FEAA0)) 
    \output_check_reg[2]_i_1 
       (.I0(ctr_send[1]),
        .I1(ctr_send[3]),
        .I2(ctr_send[0]),
        .I3(ctr_send[4]),
        .I4(ctr_send[2]),
        .O(\output_check_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_check_reg[3] 
       (.CLR(1'b0),
        .D(\output_check_reg[3]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h607F0080)) 
    \output_check_reg[3]_i_1 
       (.I0(ctr_send[1]),
        .I1(ctr_send[0]),
        .I2(ctr_send[2]),
        .I3(ctr_send[4]),
        .I4(ctr_send[3]),
        .O(\output_check_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_check_reg[4] 
       (.CLR(1'b0),
        .D(\output_check_reg[4]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \output_check_reg[4]_i_1 
       (.I0(ctr_send[0]),
        .I1(ctr_send[3]),
        .I2(ctr_send[2]),
        .I3(ctr_send[1]),
        .I4(ctr_send[4]),
        .O(\output_check_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_check_reg[6] 
       (.CLR(1'b0),
        .D(\output_check_reg[6]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0313FFFF)) 
    \output_check_reg[6]_i_1 
       (.I0(ctr_send[1]),
        .I1(ctr_send[3]),
        .I2(ctr_send[2]),
        .I3(ctr_send[0]),
        .I4(ctr_send[4]),
        .O(\output_check_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[0] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[0]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_1 
       (.I0(\output_string_char_reg[0]_i_2_n_0 ),
        .I1(\output_string_char_reg[0]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[0]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[0]_i_5_n_0 ),
        .O(\output_string_char_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_10 
       (.I0(\input_string_reg_n_0_[11][0] ),
        .I1(\input_string_reg_n_0_[10][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][0] ),
        .O(\output_string_char_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_11 
       (.I0(\input_string_reg_n_0_[15][0] ),
        .I1(\input_string_reg_n_0_[14][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][0] ),
        .O(\output_string_char_reg[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_12 
       (.I0(\input_string_reg_n_0_[3][0] ),
        .I1(\input_string_reg_n_0_[2][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][0] ),
        .O(\output_string_char_reg[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_13 
       (.I0(\input_string_reg_n_0_[7][0] ),
        .I1(\input_string_reg_n_0_[6][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][0] ),
        .O(\output_string_char_reg[0]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[0]_i_2 
       (.I0(\output_string_char_reg[0]_i_6_n_0 ),
        .I1(\output_string_char_reg[0]_i_7_n_0 ),
        .O(\output_string_char_reg[0]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[0]_i_3 
       (.I0(\output_string_char_reg[0]_i_8_n_0 ),
        .I1(\output_string_char_reg[0]_i_9_n_0 ),
        .O(\output_string_char_reg[0]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[0]_i_4 
       (.I0(\output_string_char_reg[0]_i_10_n_0 ),
        .I1(\output_string_char_reg[0]_i_11_n_0 ),
        .O(\output_string_char_reg[0]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[0]_i_5 
       (.I0(\output_string_char_reg[0]_i_12_n_0 ),
        .I1(\output_string_char_reg[0]_i_13_n_0 ),
        .O(\output_string_char_reg[0]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_6 
       (.I0(\input_string_reg_n_0_[27][0] ),
        .I1(\input_string_reg_n_0_[26][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][0] ),
        .O(\output_string_char_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_7 
       (.I0(\input_string_reg_n_0_[31][0] ),
        .I1(\input_string_reg_n_0_[30][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][0] ),
        .O(\output_string_char_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_8 
       (.I0(\input_string_reg_n_0_[19][0] ),
        .I1(\input_string_reg_n_0_[18][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][0] ),
        .O(\output_string_char_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[0]_i_9 
       (.I0(\input_string_reg_n_0_[23][0] ),
        .I1(\input_string_reg_n_0_[22][0] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][0] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][0] ),
        .O(\output_string_char_reg[0]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[1] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[1]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_1 
       (.I0(\output_string_char_reg[1]_i_2_n_0 ),
        .I1(\output_string_char_reg[1]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[1]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[1]_i_5_n_0 ),
        .O(\output_string_char_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_10 
       (.I0(\input_string_reg_n_0_[11][1] ),
        .I1(\input_string_reg_n_0_[10][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][1] ),
        .O(\output_string_char_reg[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_11 
       (.I0(\input_string_reg_n_0_[15][1] ),
        .I1(\input_string_reg_n_0_[14][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][1] ),
        .O(\output_string_char_reg[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_12 
       (.I0(\input_string_reg_n_0_[3][1] ),
        .I1(\input_string_reg_n_0_[2][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][1] ),
        .O(\output_string_char_reg[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_13 
       (.I0(\input_string_reg_n_0_[7][1] ),
        .I1(\input_string_reg_n_0_[6][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][1] ),
        .O(\output_string_char_reg[1]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[1]_i_2 
       (.I0(\output_string_char_reg[1]_i_6_n_0 ),
        .I1(\output_string_char_reg[1]_i_7_n_0 ),
        .O(\output_string_char_reg[1]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[1]_i_3 
       (.I0(\output_string_char_reg[1]_i_8_n_0 ),
        .I1(\output_string_char_reg[1]_i_9_n_0 ),
        .O(\output_string_char_reg[1]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[1]_i_4 
       (.I0(\output_string_char_reg[1]_i_10_n_0 ),
        .I1(\output_string_char_reg[1]_i_11_n_0 ),
        .O(\output_string_char_reg[1]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[1]_i_5 
       (.I0(\output_string_char_reg[1]_i_12_n_0 ),
        .I1(\output_string_char_reg[1]_i_13_n_0 ),
        .O(\output_string_char_reg[1]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_6 
       (.I0(\input_string_reg_n_0_[27][1] ),
        .I1(\input_string_reg_n_0_[26][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][1] ),
        .O(\output_string_char_reg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_7 
       (.I0(\input_string_reg_n_0_[31][1] ),
        .I1(\input_string_reg_n_0_[30][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][1] ),
        .O(\output_string_char_reg[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_8 
       (.I0(\input_string_reg_n_0_[19][1] ),
        .I1(\input_string_reg_n_0_[18][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][1] ),
        .O(\output_string_char_reg[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[1]_i_9 
       (.I0(\input_string_reg_n_0_[23][1] ),
        .I1(\input_string_reg_n_0_[22][1] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][1] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][1] ),
        .O(\output_string_char_reg[1]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[2] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[2]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_1 
       (.I0(\output_string_char_reg[2]_i_2_n_0 ),
        .I1(\output_string_char_reg[2]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[2]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[2]_i_5_n_0 ),
        .O(\output_string_char_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_10 
       (.I0(\input_string_reg_n_0_[11][2] ),
        .I1(\input_string_reg_n_0_[10][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][2] ),
        .O(\output_string_char_reg[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_11 
       (.I0(\input_string_reg_n_0_[15][2] ),
        .I1(\input_string_reg_n_0_[14][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][2] ),
        .O(\output_string_char_reg[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_12 
       (.I0(\input_string_reg_n_0_[3][2] ),
        .I1(\input_string_reg_n_0_[2][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][2] ),
        .O(\output_string_char_reg[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_13 
       (.I0(\input_string_reg_n_0_[7][2] ),
        .I1(\input_string_reg_n_0_[6][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][2] ),
        .O(\output_string_char_reg[2]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[2]_i_2 
       (.I0(\output_string_char_reg[2]_i_6_n_0 ),
        .I1(\output_string_char_reg[2]_i_7_n_0 ),
        .O(\output_string_char_reg[2]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[2]_i_3 
       (.I0(\output_string_char_reg[2]_i_8_n_0 ),
        .I1(\output_string_char_reg[2]_i_9_n_0 ),
        .O(\output_string_char_reg[2]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[2]_i_4 
       (.I0(\output_string_char_reg[2]_i_10_n_0 ),
        .I1(\output_string_char_reg[2]_i_11_n_0 ),
        .O(\output_string_char_reg[2]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[2]_i_5 
       (.I0(\output_string_char_reg[2]_i_12_n_0 ),
        .I1(\output_string_char_reg[2]_i_13_n_0 ),
        .O(\output_string_char_reg[2]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_6 
       (.I0(\input_string_reg_n_0_[27][2] ),
        .I1(\input_string_reg_n_0_[26][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][2] ),
        .O(\output_string_char_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_7 
       (.I0(\input_string_reg_n_0_[31][2] ),
        .I1(\input_string_reg_n_0_[30][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][2] ),
        .O(\output_string_char_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_8 
       (.I0(\input_string_reg_n_0_[19][2] ),
        .I1(\input_string_reg_n_0_[18][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][2] ),
        .O(\output_string_char_reg[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[2]_i_9 
       (.I0(\input_string_reg_n_0_[23][2] ),
        .I1(\input_string_reg_n_0_[22][2] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][2] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][2] ),
        .O(\output_string_char_reg[2]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[3] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[3]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_1 
       (.I0(\output_string_char_reg[3]_i_2_n_0 ),
        .I1(\output_string_char_reg[3]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[3]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[3]_i_5_n_0 ),
        .O(\output_string_char_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_10 
       (.I0(\input_string_reg_n_0_[11][3] ),
        .I1(\input_string_reg_n_0_[10][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][3] ),
        .O(\output_string_char_reg[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_11 
       (.I0(\input_string_reg_n_0_[15][3] ),
        .I1(\input_string_reg_n_0_[14][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][3] ),
        .O(\output_string_char_reg[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_12 
       (.I0(\input_string_reg_n_0_[3][3] ),
        .I1(\input_string_reg_n_0_[2][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][3] ),
        .O(\output_string_char_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_13 
       (.I0(\input_string_reg_n_0_[7][3] ),
        .I1(\input_string_reg_n_0_[6][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][3] ),
        .O(\output_string_char_reg[3]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[3]_i_2 
       (.I0(\output_string_char_reg[3]_i_6_n_0 ),
        .I1(\output_string_char_reg[3]_i_7_n_0 ),
        .O(\output_string_char_reg[3]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[3]_i_3 
       (.I0(\output_string_char_reg[3]_i_8_n_0 ),
        .I1(\output_string_char_reg[3]_i_9_n_0 ),
        .O(\output_string_char_reg[3]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[3]_i_4 
       (.I0(\output_string_char_reg[3]_i_10_n_0 ),
        .I1(\output_string_char_reg[3]_i_11_n_0 ),
        .O(\output_string_char_reg[3]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[3]_i_5 
       (.I0(\output_string_char_reg[3]_i_12_n_0 ),
        .I1(\output_string_char_reg[3]_i_13_n_0 ),
        .O(\output_string_char_reg[3]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_6 
       (.I0(\input_string_reg_n_0_[27][3] ),
        .I1(\input_string_reg_n_0_[26][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][3] ),
        .O(\output_string_char_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_7 
       (.I0(\input_string_reg_n_0_[31][3] ),
        .I1(\input_string_reg_n_0_[30][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][3] ),
        .O(\output_string_char_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_8 
       (.I0(\input_string_reg_n_0_[19][3] ),
        .I1(\input_string_reg_n_0_[18][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][3] ),
        .O(\output_string_char_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[3]_i_9 
       (.I0(\input_string_reg_n_0_[23][3] ),
        .I1(\input_string_reg_n_0_[22][3] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][3] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][3] ),
        .O(\output_string_char_reg[3]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[4] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[4]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_1 
       (.I0(\output_string_char_reg[4]_i_2_n_0 ),
        .I1(\output_string_char_reg[4]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[4]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[4]_i_5_n_0 ),
        .O(\output_string_char_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_10 
       (.I0(\input_string_reg_n_0_[11][4] ),
        .I1(\input_string_reg_n_0_[10][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][4] ),
        .O(\output_string_char_reg[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_11 
       (.I0(\input_string_reg_n_0_[15][4] ),
        .I1(\input_string_reg_n_0_[14][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][4] ),
        .O(\output_string_char_reg[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_12 
       (.I0(\input_string_reg_n_0_[3][4] ),
        .I1(\input_string_reg_n_0_[2][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][4] ),
        .O(\output_string_char_reg[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_13 
       (.I0(\input_string_reg_n_0_[7][4] ),
        .I1(\input_string_reg_n_0_[6][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][4] ),
        .O(\output_string_char_reg[4]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[4]_i_2 
       (.I0(\output_string_char_reg[4]_i_6_n_0 ),
        .I1(\output_string_char_reg[4]_i_7_n_0 ),
        .O(\output_string_char_reg[4]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[4]_i_3 
       (.I0(\output_string_char_reg[4]_i_8_n_0 ),
        .I1(\output_string_char_reg[4]_i_9_n_0 ),
        .O(\output_string_char_reg[4]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[4]_i_4 
       (.I0(\output_string_char_reg[4]_i_10_n_0 ),
        .I1(\output_string_char_reg[4]_i_11_n_0 ),
        .O(\output_string_char_reg[4]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[4]_i_5 
       (.I0(\output_string_char_reg[4]_i_12_n_0 ),
        .I1(\output_string_char_reg[4]_i_13_n_0 ),
        .O(\output_string_char_reg[4]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_6 
       (.I0(\input_string_reg_n_0_[27][4] ),
        .I1(\input_string_reg_n_0_[26][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][4] ),
        .O(\output_string_char_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_7 
       (.I0(\input_string_reg_n_0_[31][4] ),
        .I1(\input_string_reg_n_0_[30][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][4] ),
        .O(\output_string_char_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_8 
       (.I0(\input_string_reg_n_0_[19][4] ),
        .I1(\input_string_reg_n_0_[18][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][4] ),
        .O(\output_string_char_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[4]_i_9 
       (.I0(\input_string_reg_n_0_[23][4] ),
        .I1(\input_string_reg_n_0_[22][4] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][4] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][4] ),
        .O(\output_string_char_reg[4]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[5] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[5]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_1 
       (.I0(\output_string_char_reg[5]_i_2_n_0 ),
        .I1(\output_string_char_reg[5]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[5]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[5]_i_5_n_0 ),
        .O(\output_string_char_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_10 
       (.I0(\input_string_reg_n_0_[11][5] ),
        .I1(\input_string_reg_n_0_[10][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][5] ),
        .O(\output_string_char_reg[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_11 
       (.I0(\input_string_reg_n_0_[15][5] ),
        .I1(\input_string_reg_n_0_[14][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][5] ),
        .O(\output_string_char_reg[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_12 
       (.I0(\input_string_reg_n_0_[3][5] ),
        .I1(\input_string_reg_n_0_[2][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][5] ),
        .O(\output_string_char_reg[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_13 
       (.I0(\input_string_reg_n_0_[7][5] ),
        .I1(\input_string_reg_n_0_[6][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][5] ),
        .O(\output_string_char_reg[5]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[5]_i_2 
       (.I0(\output_string_char_reg[5]_i_6_n_0 ),
        .I1(\output_string_char_reg[5]_i_7_n_0 ),
        .O(\output_string_char_reg[5]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[5]_i_3 
       (.I0(\output_string_char_reg[5]_i_8_n_0 ),
        .I1(\output_string_char_reg[5]_i_9_n_0 ),
        .O(\output_string_char_reg[5]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[5]_i_4 
       (.I0(\output_string_char_reg[5]_i_10_n_0 ),
        .I1(\output_string_char_reg[5]_i_11_n_0 ),
        .O(\output_string_char_reg[5]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[5]_i_5 
       (.I0(\output_string_char_reg[5]_i_12_n_0 ),
        .I1(\output_string_char_reg[5]_i_13_n_0 ),
        .O(\output_string_char_reg[5]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_6 
       (.I0(\input_string_reg_n_0_[27][5] ),
        .I1(\input_string_reg_n_0_[26][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][5] ),
        .O(\output_string_char_reg[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_7 
       (.I0(\input_string_reg_n_0_[31][5] ),
        .I1(\input_string_reg_n_0_[30][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][5] ),
        .O(\output_string_char_reg[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_8 
       (.I0(\input_string_reg_n_0_[19][5] ),
        .I1(\input_string_reg_n_0_[18][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][5] ),
        .O(\output_string_char_reg[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[5]_i_9 
       (.I0(\input_string_reg_n_0_[23][5] ),
        .I1(\input_string_reg_n_0_[22][5] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][5] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][5] ),
        .O(\output_string_char_reg[5]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[6] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[6]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_1 
       (.I0(\output_string_char_reg[6]_i_2_n_0 ),
        .I1(\output_string_char_reg[6]_i_3_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[6]_i_4_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[6]_i_5_n_0 ),
        .O(\output_string_char_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_10 
       (.I0(\input_string_reg_n_0_[11][6] ),
        .I1(\input_string_reg_n_0_[10][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][6] ),
        .O(\output_string_char_reg[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_11 
       (.I0(\input_string_reg_n_0_[15][6] ),
        .I1(\input_string_reg_n_0_[14][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][6] ),
        .O(\output_string_char_reg[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_12 
       (.I0(\input_string_reg_n_0_[3][6] ),
        .I1(\input_string_reg_n_0_[2][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][6] ),
        .O(\output_string_char_reg[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_13 
       (.I0(\input_string_reg_n_0_[7][6] ),
        .I1(\input_string_reg_n_0_[6][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][6] ),
        .O(\output_string_char_reg[6]_i_13_n_0 ));
  MUXF7 \output_string_char_reg[6]_i_2 
       (.I0(\output_string_char_reg[6]_i_6_n_0 ),
        .I1(\output_string_char_reg[6]_i_7_n_0 ),
        .O(\output_string_char_reg[6]_i_2_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[6]_i_3 
       (.I0(\output_string_char_reg[6]_i_8_n_0 ),
        .I1(\output_string_char_reg[6]_i_9_n_0 ),
        .O(\output_string_char_reg[6]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[6]_i_4 
       (.I0(\output_string_char_reg[6]_i_10_n_0 ),
        .I1(\output_string_char_reg[6]_i_11_n_0 ),
        .O(\output_string_char_reg[6]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[6]_i_5 
       (.I0(\output_string_char_reg[6]_i_12_n_0 ),
        .I1(\output_string_char_reg[6]_i_13_n_0 ),
        .O(\output_string_char_reg[6]_i_5_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_6 
       (.I0(\input_string_reg_n_0_[27][6] ),
        .I1(\input_string_reg_n_0_[26][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][6] ),
        .O(\output_string_char_reg[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_7 
       (.I0(\input_string_reg_n_0_[31][6] ),
        .I1(\input_string_reg_n_0_[30][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][6] ),
        .O(\output_string_char_reg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_8 
       (.I0(\input_string_reg_n_0_[19][6] ),
        .I1(\input_string_reg_n_0_[18][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][6] ),
        .O(\output_string_char_reg[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[6]_i_9 
       (.I0(\input_string_reg_n_0_[23][6] ),
        .I1(\input_string_reg_n_0_[22][6] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][6] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][6] ),
        .O(\output_string_char_reg[6]_i_9_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \output_string_char_reg[7] 
       (.CLR(1'b0),
        .D(\output_string_char_reg[7]_i_1_n_0 ),
        .G(\output_string_char_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_1 
       (.I0(\output_string_char_reg[7]_i_3_n_0 ),
        .I1(\output_string_char_reg[7]_i_4_n_0 ),
        .I2(ctr_send[4]),
        .I3(\output_string_char_reg[7]_i_5_n_0 ),
        .I4(ctr_send[3]),
        .I5(\output_string_char_reg[7]_i_6_n_0 ),
        .O(\output_string_char_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_10 
       (.I0(\input_string_reg_n_0_[23][7] ),
        .I1(\input_string_reg_n_0_[22][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[21][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[20][7] ),
        .O(\output_string_char_reg[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_11 
       (.I0(\input_string_reg_n_0_[11][7] ),
        .I1(\input_string_reg_n_0_[10][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[9][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[8][7] ),
        .O(\output_string_char_reg[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_12 
       (.I0(\input_string_reg_n_0_[15][7] ),
        .I1(\input_string_reg_n_0_[14][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[13][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[12][7] ),
        .O(\output_string_char_reg[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_13 
       (.I0(\input_string_reg_n_0_[3][7] ),
        .I1(\input_string_reg_n_0_[2][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[1][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[0][7] ),
        .O(\output_string_char_reg[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_14 
       (.I0(\input_string_reg_n_0_[7][7] ),
        .I1(\input_string_reg_n_0_[6][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[5][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[4][7] ),
        .O(\output_string_char_reg[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \output_string_char_reg[7]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\output_string_char_reg[7]_i_2_n_0 ));
  MUXF7 \output_string_char_reg[7]_i_3 
       (.I0(\output_string_char_reg[7]_i_7_n_0 ),
        .I1(\output_string_char_reg[7]_i_8_n_0 ),
        .O(\output_string_char_reg[7]_i_3_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[7]_i_4 
       (.I0(\output_string_char_reg[7]_i_9_n_0 ),
        .I1(\output_string_char_reg[7]_i_10_n_0 ),
        .O(\output_string_char_reg[7]_i_4_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[7]_i_5 
       (.I0(\output_string_char_reg[7]_i_11_n_0 ),
        .I1(\output_string_char_reg[7]_i_12_n_0 ),
        .O(\output_string_char_reg[7]_i_5_n_0 ),
        .S(ctr_send[2]));
  MUXF7 \output_string_char_reg[7]_i_6 
       (.I0(\output_string_char_reg[7]_i_13_n_0 ),
        .I1(\output_string_char_reg[7]_i_14_n_0 ),
        .O(\output_string_char_reg[7]_i_6_n_0 ),
        .S(ctr_send[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_7 
       (.I0(\input_string_reg_n_0_[27][7] ),
        .I1(\input_string_reg_n_0_[26][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[25][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[24][7] ),
        .O(\output_string_char_reg[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_8 
       (.I0(\input_string_reg_n_0_[31][7] ),
        .I1(\input_string_reg_n_0_[30][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[29][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[28][7] ),
        .O(\output_string_char_reg[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \output_string_char_reg[7]_i_9 
       (.I0(\input_string_reg_n_0_[19][7] ),
        .I1(\input_string_reg_n_0_[18][7] ),
        .I2(ctr_send[1]),
        .I3(\input_string_reg_n_0_[17][7] ),
        .I4(ctr_send[0]),
        .I5(\input_string_reg_n_0_[16][7] ),
        .O(\output_string_char_reg[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00030002)) 
    valid_out_i_1
       (.I0(slv_wire2),
        .I1(ctr_send[7]),
        .I2(ctr_send[5]),
        .I3(ctr_send[6]),
        .I4(done_bwt),
        .O(valid_out_nxt));
  FDRE valid_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(valid_out_nxt),
        .Q(slv_wire2),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
