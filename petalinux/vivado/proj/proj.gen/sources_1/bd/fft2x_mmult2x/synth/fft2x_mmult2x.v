//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Fri Jun  3 13:40:42 2022
//Host        : engr-rcl14g running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target fft2x_mmult2x.bd
//Design      : fft2x_mmult2x
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fft2x_mmult2x,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fft2x_mmult2x,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=37,numReposBlks=26,numNonXlnxBlks=2,numHierBlks=11,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "fft2x_mmult2x.hwdef" *) 
module fft2x_mmult2x
   ();

  wire [0:0]ARESETN_1;
  wire [23:0]axi_gpio_0_gpio2_io_o;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [0:0]axi_gpio_0_gpio_io_o1;
  wire [39:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [39:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [39:0]config_interconnect_M00_AXI_ARADDR;
  wire config_interconnect_M00_AXI_ARREADY;
  wire config_interconnect_M00_AXI_ARVALID;
  wire [39:0]config_interconnect_M00_AXI_AWADDR;
  wire config_interconnect_M00_AXI_AWREADY;
  wire config_interconnect_M00_AXI_AWVALID;
  wire config_interconnect_M00_AXI_BREADY;
  wire [1:0]config_interconnect_M00_AXI_BRESP;
  wire config_interconnect_M00_AXI_BVALID;
  wire [31:0]config_interconnect_M00_AXI_RDATA;
  wire config_interconnect_M00_AXI_RREADY;
  wire [1:0]config_interconnect_M00_AXI_RRESP;
  wire config_interconnect_M00_AXI_RVALID;
  wire [31:0]config_interconnect_M00_AXI_WDATA;
  wire config_interconnect_M00_AXI_WREADY;
  wire [3:0]config_interconnect_M00_AXI_WSTRB;
  wire config_interconnect_M00_AXI_WVALID;
  wire [39:0]config_interconnect_M02_AXI_ARADDR;
  wire config_interconnect_M02_AXI_ARREADY;
  wire config_interconnect_M02_AXI_ARVALID;
  wire [39:0]config_interconnect_M02_AXI_AWADDR;
  wire config_interconnect_M02_AXI_AWREADY;
  wire config_interconnect_M02_AXI_AWVALID;
  wire config_interconnect_M02_AXI_BREADY;
  wire [1:0]config_interconnect_M02_AXI_BRESP;
  wire config_interconnect_M02_AXI_BVALID;
  wire [31:0]config_interconnect_M02_AXI_RDATA;
  wire config_interconnect_M02_AXI_RREADY;
  wire [1:0]config_interconnect_M02_AXI_RRESP;
  wire config_interconnect_M02_AXI_RVALID;
  wire [31:0]config_interconnect_M02_AXI_WDATA;
  wire config_interconnect_M02_AXI_WREADY;
  wire [3:0]config_interconnect_M02_AXI_WSTRB;
  wire config_interconnect_M02_AXI_WVALID;
  wire [39:0]config_interconnect_M03_AXI_ARADDR;
  wire config_interconnect_M03_AXI_ARREADY;
  wire config_interconnect_M03_AXI_ARVALID;
  wire [39:0]config_interconnect_M03_AXI_AWADDR;
  wire config_interconnect_M03_AXI_AWREADY;
  wire config_interconnect_M03_AXI_AWVALID;
  wire config_interconnect_M03_AXI_BREADY;
  wire [1:0]config_interconnect_M03_AXI_BRESP;
  wire config_interconnect_M03_AXI_BVALID;
  wire [31:0]config_interconnect_M03_AXI_RDATA;
  wire config_interconnect_M03_AXI_RREADY;
  wire [1:0]config_interconnect_M03_AXI_RRESP;
  wire config_interconnect_M03_AXI_RVALID;
  wire [31:0]config_interconnect_M03_AXI_WDATA;
  wire config_interconnect_M03_AXI_WREADY;
  wire [3:0]config_interconnect_M03_AXI_WSTRB;
  wire config_interconnect_M03_AXI_WVALID;
  wire [39:0]config_interconnect_M04_AXI_ARADDR;
  wire config_interconnect_M04_AXI_ARREADY;
  wire config_interconnect_M04_AXI_ARVALID;
  wire [39:0]config_interconnect_M04_AXI_AWADDR;
  wire config_interconnect_M04_AXI_AWREADY;
  wire config_interconnect_M04_AXI_AWVALID;
  wire config_interconnect_M04_AXI_BREADY;
  wire [1:0]config_interconnect_M04_AXI_BRESP;
  wire config_interconnect_M04_AXI_BVALID;
  wire [31:0]config_interconnect_M04_AXI_RDATA;
  wire config_interconnect_M04_AXI_RREADY;
  wire [1:0]config_interconnect_M04_AXI_RRESP;
  wire config_interconnect_M04_AXI_RVALID;
  wire [31:0]config_interconnect_M04_AXI_WDATA;
  wire config_interconnect_M04_AXI_WREADY;
  wire config_interconnect_M04_AXI_WVALID;
  wire [39:0]config_interconnect_M05_AXI_ARADDR;
  wire config_interconnect_M05_AXI_ARREADY;
  wire config_interconnect_M05_AXI_ARVALID;
  wire [39:0]config_interconnect_M05_AXI_AWADDR;
  wire config_interconnect_M05_AXI_AWREADY;
  wire config_interconnect_M05_AXI_AWVALID;
  wire config_interconnect_M05_AXI_BREADY;
  wire [1:0]config_interconnect_M05_AXI_BRESP;
  wire config_interconnect_M05_AXI_BVALID;
  wire [31:0]config_interconnect_M05_AXI_RDATA;
  wire config_interconnect_M05_AXI_RREADY;
  wire [1:0]config_interconnect_M05_AXI_RRESP;
  wire config_interconnect_M05_AXI_RVALID;
  wire [31:0]config_interconnect_M05_AXI_WDATA;
  wire config_interconnect_M05_AXI_WREADY;
  wire [3:0]config_interconnect_M05_AXI_WSTRB;
  wire config_interconnect_M05_AXI_WVALID;
  wire [39:0]config_interconnect_M06_AXI_ARADDR;
  wire config_interconnect_M06_AXI_ARREADY;
  wire config_interconnect_M06_AXI_ARVALID;
  wire [39:0]config_interconnect_M06_AXI_AWADDR;
  wire config_interconnect_M06_AXI_AWREADY;
  wire config_interconnect_M06_AXI_AWVALID;
  wire config_interconnect_M06_AXI_BREADY;
  wire [1:0]config_interconnect_M06_AXI_BRESP;
  wire config_interconnect_M06_AXI_BVALID;
  wire [31:0]config_interconnect_M06_AXI_RDATA;
  wire config_interconnect_M06_AXI_RREADY;
  wire [1:0]config_interconnect_M06_AXI_RRESP;
  wire config_interconnect_M06_AXI_RVALID;
  wire [31:0]config_interconnect_M06_AXI_WDATA;
  wire config_interconnect_M06_AXI_WREADY;
  wire config_interconnect_M06_AXI_WVALID;
  wire [39:0]config_interconnect_M07_AXI_ARADDR;
  wire config_interconnect_M07_AXI_ARREADY;
  wire config_interconnect_M07_AXI_ARVALID;
  wire [39:0]config_interconnect_M07_AXI_AWADDR;
  wire config_interconnect_M07_AXI_AWREADY;
  wire config_interconnect_M07_AXI_AWVALID;
  wire config_interconnect_M07_AXI_BREADY;
  wire [1:0]config_interconnect_M07_AXI_BRESP;
  wire config_interconnect_M07_AXI_BVALID;
  wire [31:0]config_interconnect_M07_AXI_RDATA;
  wire config_interconnect_M07_AXI_RREADY;
  wire [1:0]config_interconnect_M07_AXI_RRESP;
  wire config_interconnect_M07_AXI_RVALID;
  wire [31:0]config_interconnect_M07_AXI_WDATA;
  wire config_interconnect_M07_AXI_WREADY;
  wire config_interconnect_M07_AXI_WVALID;
  wire fft_0_dma_mm2s_introut;
  wire fft_0_dma_s2mm_introut;
  wire [23:0]fft_1_config_gpio_gpio2_io_o;
  wire [0:0]fft_1_config_gpio_gpio_io_o;
  wire [63:0]fft_1_dma_M_AXIS_MM2S_TDATA;
  wire fft_1_dma_M_AXIS_MM2S_TLAST;
  wire fft_1_dma_M_AXIS_MM2S_TREADY;
  wire fft_1_dma_M_AXIS_MM2S_TVALID;
  wire [31:0]fft_1_dma_M_AXI_MM2S_ARADDR;
  wire [1:0]fft_1_dma_M_AXI_MM2S_ARBURST;
  wire [3:0]fft_1_dma_M_AXI_MM2S_ARCACHE;
  wire [7:0]fft_1_dma_M_AXI_MM2S_ARLEN;
  wire [2:0]fft_1_dma_M_AXI_MM2S_ARPROT;
  wire fft_1_dma_M_AXI_MM2S_ARREADY;
  wire [2:0]fft_1_dma_M_AXI_MM2S_ARSIZE;
  wire fft_1_dma_M_AXI_MM2S_ARVALID;
  wire [63:0]fft_1_dma_M_AXI_MM2S_RDATA;
  wire fft_1_dma_M_AXI_MM2S_RLAST;
  wire fft_1_dma_M_AXI_MM2S_RREADY;
  wire [1:0]fft_1_dma_M_AXI_MM2S_RRESP;
  wire fft_1_dma_M_AXI_MM2S_RVALID;
  wire [31:0]fft_1_dma_M_AXI_S2MM_AWADDR;
  wire [1:0]fft_1_dma_M_AXI_S2MM_AWBURST;
  wire [3:0]fft_1_dma_M_AXI_S2MM_AWCACHE;
  wire [7:0]fft_1_dma_M_AXI_S2MM_AWLEN;
  wire [2:0]fft_1_dma_M_AXI_S2MM_AWPROT;
  wire fft_1_dma_M_AXI_S2MM_AWREADY;
  wire [2:0]fft_1_dma_M_AXI_S2MM_AWSIZE;
  wire fft_1_dma_M_AXI_S2MM_AWVALID;
  wire fft_1_dma_M_AXI_S2MM_BREADY;
  wire [1:0]fft_1_dma_M_AXI_S2MM_BRESP;
  wire fft_1_dma_M_AXI_S2MM_BVALID;
  wire [63:0]fft_1_dma_M_AXI_S2MM_WDATA;
  wire fft_1_dma_M_AXI_S2MM_WLAST;
  wire fft_1_dma_M_AXI_S2MM_WREADY;
  wire [7:0]fft_1_dma_M_AXI_S2MM_WSTRB;
  wire fft_1_dma_M_AXI_S2MM_WVALID;
  wire fft_1_dma_mm2s_introut;
  wire fft_1_dma_s2mm_introut;
  wire [48:0]fft_1_dma_smartconnect_M00_AXI_ARADDR;
  wire [1:0]fft_1_dma_smartconnect_M00_AXI_ARBURST;
  wire [3:0]fft_1_dma_smartconnect_M00_AXI_ARCACHE;
  wire [7:0]fft_1_dma_smartconnect_M00_AXI_ARLEN;
  wire [0:0]fft_1_dma_smartconnect_M00_AXI_ARLOCK;
  wire [2:0]fft_1_dma_smartconnect_M00_AXI_ARPROT;
  wire [3:0]fft_1_dma_smartconnect_M00_AXI_ARQOS;
  wire fft_1_dma_smartconnect_M00_AXI_ARREADY;
  wire [2:0]fft_1_dma_smartconnect_M00_AXI_ARSIZE;
  wire fft_1_dma_smartconnect_M00_AXI_ARVALID;
  wire [48:0]fft_1_dma_smartconnect_M00_AXI_AWADDR;
  wire [1:0]fft_1_dma_smartconnect_M00_AXI_AWBURST;
  wire [3:0]fft_1_dma_smartconnect_M00_AXI_AWCACHE;
  wire [7:0]fft_1_dma_smartconnect_M00_AXI_AWLEN;
  wire [0:0]fft_1_dma_smartconnect_M00_AXI_AWLOCK;
  wire [2:0]fft_1_dma_smartconnect_M00_AXI_AWPROT;
  wire [3:0]fft_1_dma_smartconnect_M00_AXI_AWQOS;
  wire fft_1_dma_smartconnect_M00_AXI_AWREADY;
  wire [2:0]fft_1_dma_smartconnect_M00_AXI_AWSIZE;
  wire fft_1_dma_smartconnect_M00_AXI_AWVALID;
  wire fft_1_dma_smartconnect_M00_AXI_BREADY;
  wire [1:0]fft_1_dma_smartconnect_M00_AXI_BRESP;
  wire fft_1_dma_smartconnect_M00_AXI_BVALID;
  wire [63:0]fft_1_dma_smartconnect_M00_AXI_RDATA;
  wire fft_1_dma_smartconnect_M00_AXI_RLAST;
  wire fft_1_dma_smartconnect_M00_AXI_RREADY;
  wire [1:0]fft_1_dma_smartconnect_M00_AXI_RRESP;
  wire fft_1_dma_smartconnect_M00_AXI_RVALID;
  wire [63:0]fft_1_dma_smartconnect_M00_AXI_WDATA;
  wire fft_1_dma_smartconnect_M00_AXI_WLAST;
  wire fft_1_dma_smartconnect_M00_AXI_WREADY;
  wire [7:0]fft_1_dma_smartconnect_M00_AXI_WSTRB;
  wire fft_1_dma_smartconnect_M00_AXI_WVALID;
  wire [0:0]fft_1_resetn_gpio_gpio_io_o;
  wire [0:0]fft_1_resetn_logic_Res;
  wire [63:0]fft_dma_M_AXIS_MM2S_TDATA;
  wire fft_dma_M_AXIS_MM2S_TLAST;
  wire fft_dma_M_AXIS_MM2S_TREADY;
  wire fft_dma_M_AXIS_MM2S_TVALID;
  wire [31:0]fft_dma_M_AXI_MM2S_ARADDR;
  wire [1:0]fft_dma_M_AXI_MM2S_ARBURST;
  wire [3:0]fft_dma_M_AXI_MM2S_ARCACHE;
  wire [7:0]fft_dma_M_AXI_MM2S_ARLEN;
  wire [2:0]fft_dma_M_AXI_MM2S_ARPROT;
  wire fft_dma_M_AXI_MM2S_ARREADY;
  wire [2:0]fft_dma_M_AXI_MM2S_ARSIZE;
  wire fft_dma_M_AXI_MM2S_ARVALID;
  wire [63:0]fft_dma_M_AXI_MM2S_RDATA;
  wire fft_dma_M_AXI_MM2S_RLAST;
  wire fft_dma_M_AXI_MM2S_RREADY;
  wire [1:0]fft_dma_M_AXI_MM2S_RRESP;
  wire fft_dma_M_AXI_MM2S_RVALID;
  wire [31:0]fft_dma_M_AXI_S2MM_AWADDR;
  wire [1:0]fft_dma_M_AXI_S2MM_AWBURST;
  wire [3:0]fft_dma_M_AXI_S2MM_AWCACHE;
  wire [7:0]fft_dma_M_AXI_S2MM_AWLEN;
  wire [2:0]fft_dma_M_AXI_S2MM_AWPROT;
  wire fft_dma_M_AXI_S2MM_AWREADY;
  wire [2:0]fft_dma_M_AXI_S2MM_AWSIZE;
  wire fft_dma_M_AXI_S2MM_AWVALID;
  wire fft_dma_M_AXI_S2MM_BREADY;
  wire [1:0]fft_dma_M_AXI_S2MM_BRESP;
  wire fft_dma_M_AXI_S2MM_BVALID;
  wire [63:0]fft_dma_M_AXI_S2MM_WDATA;
  wire fft_dma_M_AXI_S2MM_WLAST;
  wire fft_dma_M_AXI_S2MM_WREADY;
  wire [7:0]fft_dma_M_AXI_S2MM_WSTRB;
  wire fft_dma_M_AXI_S2MM_WVALID;
  wire [48:0]fft_dma_smartconnect_M00_AXI_ARADDR;
  wire [1:0]fft_dma_smartconnect_M00_AXI_ARBURST;
  wire [3:0]fft_dma_smartconnect_M00_AXI_ARCACHE;
  wire [7:0]fft_dma_smartconnect_M00_AXI_ARLEN;
  wire [0:0]fft_dma_smartconnect_M00_AXI_ARLOCK;
  wire [2:0]fft_dma_smartconnect_M00_AXI_ARPROT;
  wire [3:0]fft_dma_smartconnect_M00_AXI_ARQOS;
  wire fft_dma_smartconnect_M00_AXI_ARREADY;
  wire [2:0]fft_dma_smartconnect_M00_AXI_ARSIZE;
  wire fft_dma_smartconnect_M00_AXI_ARVALID;
  wire [48:0]fft_dma_smartconnect_M00_AXI_AWADDR;
  wire [1:0]fft_dma_smartconnect_M00_AXI_AWBURST;
  wire [3:0]fft_dma_smartconnect_M00_AXI_AWCACHE;
  wire [7:0]fft_dma_smartconnect_M00_AXI_AWLEN;
  wire [0:0]fft_dma_smartconnect_M00_AXI_AWLOCK;
  wire [2:0]fft_dma_smartconnect_M00_AXI_AWPROT;
  wire [3:0]fft_dma_smartconnect_M00_AXI_AWQOS;
  wire fft_dma_smartconnect_M00_AXI_AWREADY;
  wire [2:0]fft_dma_smartconnect_M00_AXI_AWSIZE;
  wire fft_dma_smartconnect_M00_AXI_AWVALID;
  wire fft_dma_smartconnect_M00_AXI_BREADY;
  wire [1:0]fft_dma_smartconnect_M00_AXI_BRESP;
  wire fft_dma_smartconnect_M00_AXI_BVALID;
  wire [63:0]fft_dma_smartconnect_M00_AXI_RDATA;
  wire fft_dma_smartconnect_M00_AXI_RLAST;
  wire fft_dma_smartconnect_M00_AXI_RREADY;
  wire [1:0]fft_dma_smartconnect_M00_AXI_RRESP;
  wire fft_dma_smartconnect_M00_AXI_RVALID;
  wire [63:0]fft_dma_smartconnect_M00_AXI_WDATA;
  wire fft_dma_smartconnect_M00_AXI_WLAST;
  wire fft_dma_smartconnect_M00_AXI_WREADY;
  wire [7:0]fft_dma_smartconnect_M00_AXI_WSTRB;
  wire fft_dma_smartconnect_M00_AXI_WVALID;
  wire [0:0]fft_resetn_logic_Res;
  wire mmult_0_dma_mm2s_introut;
  wire mmult_0_dma_s2mm_introut;
  wire [31:0]mmult_1_accel_OUTPUT_STREAM_TDATA;
  wire [3:0]mmult_1_accel_OUTPUT_STREAM_TKEEP;
  wire [0:0]mmult_1_accel_OUTPUT_STREAM_TLAST;
  wire mmult_1_accel_OUTPUT_STREAM_TREADY;
  wire mmult_1_accel_OUTPUT_STREAM_TVALID;
  wire [31:0]mmult_1_dma_M_AXIS_MM2S_TDATA;
  wire [3:0]mmult_1_dma_M_AXIS_MM2S_TKEEP;
  wire mmult_1_dma_M_AXIS_MM2S_TLAST;
  wire mmult_1_dma_M_AXIS_MM2S_TREADY;
  wire mmult_1_dma_M_AXIS_MM2S_TVALID;
  wire [63:0]mmult_1_dma_M_AXI_MM2S_ARADDR;
  wire [1:0]mmult_1_dma_M_AXI_MM2S_ARBURST;
  wire [3:0]mmult_1_dma_M_AXI_MM2S_ARCACHE;
  wire [7:0]mmult_1_dma_M_AXI_MM2S_ARLEN;
  wire [2:0]mmult_1_dma_M_AXI_MM2S_ARPROT;
  wire mmult_1_dma_M_AXI_MM2S_ARREADY;
  wire [2:0]mmult_1_dma_M_AXI_MM2S_ARSIZE;
  wire mmult_1_dma_M_AXI_MM2S_ARVALID;
  wire [127:0]mmult_1_dma_M_AXI_MM2S_RDATA;
  wire mmult_1_dma_M_AXI_MM2S_RLAST;
  wire mmult_1_dma_M_AXI_MM2S_RREADY;
  wire [1:0]mmult_1_dma_M_AXI_MM2S_RRESP;
  wire mmult_1_dma_M_AXI_MM2S_RVALID;
  wire [63:0]mmult_1_dma_M_AXI_S2MM_AWADDR;
  wire [1:0]mmult_1_dma_M_AXI_S2MM_AWBURST;
  wire [3:0]mmult_1_dma_M_AXI_S2MM_AWCACHE;
  wire [7:0]mmult_1_dma_M_AXI_S2MM_AWLEN;
  wire [2:0]mmult_1_dma_M_AXI_S2MM_AWPROT;
  wire mmult_1_dma_M_AXI_S2MM_AWREADY;
  wire [2:0]mmult_1_dma_M_AXI_S2MM_AWSIZE;
  wire mmult_1_dma_M_AXI_S2MM_AWVALID;
  wire mmult_1_dma_M_AXI_S2MM_BREADY;
  wire [1:0]mmult_1_dma_M_AXI_S2MM_BRESP;
  wire mmult_1_dma_M_AXI_S2MM_BVALID;
  wire [31:0]mmult_1_dma_M_AXI_S2MM_WDATA;
  wire mmult_1_dma_M_AXI_S2MM_WLAST;
  wire mmult_1_dma_M_AXI_S2MM_WREADY;
  wire [3:0]mmult_1_dma_M_AXI_S2MM_WSTRB;
  wire mmult_1_dma_M_AXI_S2MM_WVALID;
  wire mmult_1_dma_mm2s_introut;
  wire mmult_1_dma_s2mm_introut;
  wire [48:0]mmult_1_dma_smartconnect_M00_AXI_ARADDR;
  wire [1:0]mmult_1_dma_smartconnect_M00_AXI_ARBURST;
  wire [3:0]mmult_1_dma_smartconnect_M00_AXI_ARCACHE;
  wire [7:0]mmult_1_dma_smartconnect_M00_AXI_ARLEN;
  wire [0:0]mmult_1_dma_smartconnect_M00_AXI_ARLOCK;
  wire [2:0]mmult_1_dma_smartconnect_M00_AXI_ARPROT;
  wire [3:0]mmult_1_dma_smartconnect_M00_AXI_ARQOS;
  wire mmult_1_dma_smartconnect_M00_AXI_ARREADY;
  wire [2:0]mmult_1_dma_smartconnect_M00_AXI_ARSIZE;
  wire mmult_1_dma_smartconnect_M00_AXI_ARVALID;
  wire [48:0]mmult_1_dma_smartconnect_M00_AXI_AWADDR;
  wire [1:0]mmult_1_dma_smartconnect_M00_AXI_AWBURST;
  wire [3:0]mmult_1_dma_smartconnect_M00_AXI_AWCACHE;
  wire [7:0]mmult_1_dma_smartconnect_M00_AXI_AWLEN;
  wire [0:0]mmult_1_dma_smartconnect_M00_AXI_AWLOCK;
  wire [2:0]mmult_1_dma_smartconnect_M00_AXI_AWPROT;
  wire [3:0]mmult_1_dma_smartconnect_M00_AXI_AWQOS;
  wire mmult_1_dma_smartconnect_M00_AXI_AWREADY;
  wire [2:0]mmult_1_dma_smartconnect_M00_AXI_AWSIZE;
  wire mmult_1_dma_smartconnect_M00_AXI_AWVALID;
  wire mmult_1_dma_smartconnect_M00_AXI_BREADY;
  wire [1:0]mmult_1_dma_smartconnect_M00_AXI_BRESP;
  wire mmult_1_dma_smartconnect_M00_AXI_BVALID;
  wire [127:0]mmult_1_dma_smartconnect_M00_AXI_RDATA;
  wire mmult_1_dma_smartconnect_M00_AXI_RLAST;
  wire mmult_1_dma_smartconnect_M00_AXI_RREADY;
  wire [1:0]mmult_1_dma_smartconnect_M00_AXI_RRESP;
  wire mmult_1_dma_smartconnect_M00_AXI_RVALID;
  wire [127:0]mmult_1_dma_smartconnect_M00_AXI_WDATA;
  wire mmult_1_dma_smartconnect_M00_AXI_WLAST;
  wire mmult_1_dma_smartconnect_M00_AXI_WREADY;
  wire [15:0]mmult_1_dma_smartconnect_M00_AXI_WSTRB;
  wire mmult_1_dma_smartconnect_M00_AXI_WVALID;
  wire [31:0]mmult_accel_OUTPUT_STREAM_TDATA;
  wire [3:0]mmult_accel_OUTPUT_STREAM_TKEEP;
  wire [0:0]mmult_accel_OUTPUT_STREAM_TLAST;
  wire mmult_accel_OUTPUT_STREAM_TREADY;
  wire mmult_accel_OUTPUT_STREAM_TVALID;
  wire [31:0]mmult_dma_M_AXIS_MM2S_TDATA;
  wire [3:0]mmult_dma_M_AXIS_MM2S_TKEEP;
  wire mmult_dma_M_AXIS_MM2S_TLAST;
  wire mmult_dma_M_AXIS_MM2S_TREADY;
  wire mmult_dma_M_AXIS_MM2S_TVALID;
  wire [63:0]mmult_dma_M_AXI_MM2S_ARADDR;
  wire [1:0]mmult_dma_M_AXI_MM2S_ARBURST;
  wire [3:0]mmult_dma_M_AXI_MM2S_ARCACHE;
  wire [7:0]mmult_dma_M_AXI_MM2S_ARLEN;
  wire [2:0]mmult_dma_M_AXI_MM2S_ARPROT;
  wire mmult_dma_M_AXI_MM2S_ARREADY;
  wire [2:0]mmult_dma_M_AXI_MM2S_ARSIZE;
  wire mmult_dma_M_AXI_MM2S_ARVALID;
  wire [127:0]mmult_dma_M_AXI_MM2S_RDATA;
  wire mmult_dma_M_AXI_MM2S_RLAST;
  wire mmult_dma_M_AXI_MM2S_RREADY;
  wire [1:0]mmult_dma_M_AXI_MM2S_RRESP;
  wire mmult_dma_M_AXI_MM2S_RVALID;
  wire [63:0]mmult_dma_M_AXI_S2MM_AWADDR;
  wire [1:0]mmult_dma_M_AXI_S2MM_AWBURST;
  wire [3:0]mmult_dma_M_AXI_S2MM_AWCACHE;
  wire [7:0]mmult_dma_M_AXI_S2MM_AWLEN;
  wire [2:0]mmult_dma_M_AXI_S2MM_AWPROT;
  wire mmult_dma_M_AXI_S2MM_AWREADY;
  wire [2:0]mmult_dma_M_AXI_S2MM_AWSIZE;
  wire mmult_dma_M_AXI_S2MM_AWVALID;
  wire mmult_dma_M_AXI_S2MM_BREADY;
  wire [1:0]mmult_dma_M_AXI_S2MM_BRESP;
  wire mmult_dma_M_AXI_S2MM_BVALID;
  wire [31:0]mmult_dma_M_AXI_S2MM_WDATA;
  wire mmult_dma_M_AXI_S2MM_WLAST;
  wire mmult_dma_M_AXI_S2MM_WREADY;
  wire [3:0]mmult_dma_M_AXI_S2MM_WSTRB;
  wire mmult_dma_M_AXI_S2MM_WVALID;
  wire [48:0]mmult_dma_smartconnect_M00_AXI_ARADDR;
  wire [1:0]mmult_dma_smartconnect_M00_AXI_ARBURST;
  wire [3:0]mmult_dma_smartconnect_M00_AXI_ARCACHE;
  wire [7:0]mmult_dma_smartconnect_M00_AXI_ARLEN;
  wire [0:0]mmult_dma_smartconnect_M00_AXI_ARLOCK;
  wire [2:0]mmult_dma_smartconnect_M00_AXI_ARPROT;
  wire [3:0]mmult_dma_smartconnect_M00_AXI_ARQOS;
  wire mmult_dma_smartconnect_M00_AXI_ARREADY;
  wire [2:0]mmult_dma_smartconnect_M00_AXI_ARSIZE;
  wire mmult_dma_smartconnect_M00_AXI_ARVALID;
  wire [48:0]mmult_dma_smartconnect_M00_AXI_AWADDR;
  wire [1:0]mmult_dma_smartconnect_M00_AXI_AWBURST;
  wire [3:0]mmult_dma_smartconnect_M00_AXI_AWCACHE;
  wire [7:0]mmult_dma_smartconnect_M00_AXI_AWLEN;
  wire [0:0]mmult_dma_smartconnect_M00_AXI_AWLOCK;
  wire [2:0]mmult_dma_smartconnect_M00_AXI_AWPROT;
  wire [3:0]mmult_dma_smartconnect_M00_AXI_AWQOS;
  wire mmult_dma_smartconnect_M00_AXI_AWREADY;
  wire [2:0]mmult_dma_smartconnect_M00_AXI_AWSIZE;
  wire mmult_dma_smartconnect_M00_AXI_AWVALID;
  wire mmult_dma_smartconnect_M00_AXI_BREADY;
  wire [1:0]mmult_dma_smartconnect_M00_AXI_BRESP;
  wire mmult_dma_smartconnect_M00_AXI_BVALID;
  wire [127:0]mmult_dma_smartconnect_M00_AXI_RDATA;
  wire mmult_dma_smartconnect_M00_AXI_RLAST;
  wire mmult_dma_smartconnect_M00_AXI_RREADY;
  wire [1:0]mmult_dma_smartconnect_M00_AXI_RRESP;
  wire mmult_dma_smartconnect_M00_AXI_RVALID;
  wire [127:0]mmult_dma_smartconnect_M00_AXI_WDATA;
  wire mmult_dma_smartconnect_M00_AXI_WLAST;
  wire mmult_dma_smartconnect_M00_AXI_WREADY;
  wire [15:0]mmult_dma_smartconnect_M00_AXI_WSTRB;
  wire mmult_dma_smartconnect_M00_AXI_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [63:0]xfft_0_M_AXIS_DATA_TDATA;
  wire xfft_0_M_AXIS_DATA_TLAST;
  wire xfft_0_M_AXIS_DATA_TREADY;
  wire xfft_0_M_AXIS_DATA_TVALID;
  wire [63:0]xfft_1_M_AXIS_DATA_TDATA;
  wire xfft_1_M_AXIS_DATA_TLAST;
  wire xfft_1_M_AXIS_DATA_TREADY;
  wire xfft_1_M_AXIS_DATA_TVALID;
  wire [7:0]xlconcat_0_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  fft2x_mmult2x_config_interconnect_0 config_interconnect
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(ARESETN_1),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(ARESETN_1),
        .M00_AXI_araddr(config_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(config_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(config_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(config_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(config_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(config_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(config_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(config_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(config_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(config_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(config_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(config_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(config_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(config_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(config_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(config_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(config_interconnect_M00_AXI_WVALID),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M01_ARESETN(ARESETN_1),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M02_ARESETN(ARESETN_1),
        .M02_AXI_araddr(config_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arready(config_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(config_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(config_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awready(config_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(config_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(config_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(config_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(config_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(config_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(config_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(config_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(config_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(config_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(config_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(config_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(config_interconnect_M02_AXI_WVALID),
        .M03_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M03_ARESETN(ARESETN_1),
        .M03_AXI_araddr(config_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arready(config_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(config_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(config_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awready(config_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(config_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(config_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(config_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(config_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(config_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(config_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(config_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(config_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(config_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(config_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(config_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(config_interconnect_M03_AXI_WVALID),
        .M04_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M04_ARESETN(ARESETN_1),
        .M04_AXI_araddr(config_interconnect_M04_AXI_ARADDR),
        .M04_AXI_arready(config_interconnect_M04_AXI_ARREADY),
        .M04_AXI_arvalid(config_interconnect_M04_AXI_ARVALID),
        .M04_AXI_awaddr(config_interconnect_M04_AXI_AWADDR),
        .M04_AXI_awready(config_interconnect_M04_AXI_AWREADY),
        .M04_AXI_awvalid(config_interconnect_M04_AXI_AWVALID),
        .M04_AXI_bready(config_interconnect_M04_AXI_BREADY),
        .M04_AXI_bresp(config_interconnect_M04_AXI_BRESP),
        .M04_AXI_bvalid(config_interconnect_M04_AXI_BVALID),
        .M04_AXI_rdata(config_interconnect_M04_AXI_RDATA),
        .M04_AXI_rready(config_interconnect_M04_AXI_RREADY),
        .M04_AXI_rresp(config_interconnect_M04_AXI_RRESP),
        .M04_AXI_rvalid(config_interconnect_M04_AXI_RVALID),
        .M04_AXI_wdata(config_interconnect_M04_AXI_WDATA),
        .M04_AXI_wready(config_interconnect_M04_AXI_WREADY),
        .M04_AXI_wvalid(config_interconnect_M04_AXI_WVALID),
        .M05_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M05_ARESETN(ARESETN_1),
        .M05_AXI_araddr(config_interconnect_M05_AXI_ARADDR),
        .M05_AXI_arready(config_interconnect_M05_AXI_ARREADY),
        .M05_AXI_arvalid(config_interconnect_M05_AXI_ARVALID),
        .M05_AXI_awaddr(config_interconnect_M05_AXI_AWADDR),
        .M05_AXI_awready(config_interconnect_M05_AXI_AWREADY),
        .M05_AXI_awvalid(config_interconnect_M05_AXI_AWVALID),
        .M05_AXI_bready(config_interconnect_M05_AXI_BREADY),
        .M05_AXI_bresp(config_interconnect_M05_AXI_BRESP),
        .M05_AXI_bvalid(config_interconnect_M05_AXI_BVALID),
        .M05_AXI_rdata(config_interconnect_M05_AXI_RDATA),
        .M05_AXI_rready(config_interconnect_M05_AXI_RREADY),
        .M05_AXI_rresp(config_interconnect_M05_AXI_RRESP),
        .M05_AXI_rvalid(config_interconnect_M05_AXI_RVALID),
        .M05_AXI_wdata(config_interconnect_M05_AXI_WDATA),
        .M05_AXI_wready(config_interconnect_M05_AXI_WREADY),
        .M05_AXI_wstrb(config_interconnect_M05_AXI_WSTRB),
        .M05_AXI_wvalid(config_interconnect_M05_AXI_WVALID),
        .M06_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M06_ARESETN(ARESETN_1),
        .M06_AXI_araddr(config_interconnect_M06_AXI_ARADDR),
        .M06_AXI_arready(config_interconnect_M06_AXI_ARREADY),
        .M06_AXI_arvalid(config_interconnect_M06_AXI_ARVALID),
        .M06_AXI_awaddr(config_interconnect_M06_AXI_AWADDR),
        .M06_AXI_awready(config_interconnect_M06_AXI_AWREADY),
        .M06_AXI_awvalid(config_interconnect_M06_AXI_AWVALID),
        .M06_AXI_bready(config_interconnect_M06_AXI_BREADY),
        .M06_AXI_bresp(config_interconnect_M06_AXI_BRESP),
        .M06_AXI_bvalid(config_interconnect_M06_AXI_BVALID),
        .M06_AXI_rdata(config_interconnect_M06_AXI_RDATA),
        .M06_AXI_rready(config_interconnect_M06_AXI_RREADY),
        .M06_AXI_rresp(config_interconnect_M06_AXI_RRESP),
        .M06_AXI_rvalid(config_interconnect_M06_AXI_RVALID),
        .M06_AXI_wdata(config_interconnect_M06_AXI_WDATA),
        .M06_AXI_wready(config_interconnect_M06_AXI_WREADY),
        .M06_AXI_wvalid(config_interconnect_M06_AXI_WVALID),
        .M07_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M07_ARESETN(ARESETN_1),
        .M07_AXI_araddr(config_interconnect_M07_AXI_ARADDR),
        .M07_AXI_arready(config_interconnect_M07_AXI_ARREADY),
        .M07_AXI_arvalid(config_interconnect_M07_AXI_ARVALID),
        .M07_AXI_awaddr(config_interconnect_M07_AXI_AWADDR),
        .M07_AXI_awready(config_interconnect_M07_AXI_AWREADY),
        .M07_AXI_awvalid(config_interconnect_M07_AXI_AWVALID),
        .M07_AXI_bready(config_interconnect_M07_AXI_BREADY),
        .M07_AXI_bresp(config_interconnect_M07_AXI_BRESP),
        .M07_AXI_bvalid(config_interconnect_M07_AXI_BVALID),
        .M07_AXI_rdata(config_interconnect_M07_AXI_RDATA),
        .M07_AXI_rready(config_interconnect_M07_AXI_RREADY),
        .M07_AXI_rresp(config_interconnect_M07_AXI_RRESP),
        .M07_AXI_rvalid(config_interconnect_M07_AXI_RVALID),
        .M07_AXI_wdata(config_interconnect_M07_AXI_WDATA),
        .M07_AXI_wready(config_interconnect_M07_AXI_WREADY),
        .M07_AXI_wvalid(config_interconnect_M07_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .S01_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S01_ARESETN(ARESETN_1),
        .S01_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S01_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S01_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S01_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S01_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S01_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S01_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S01_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S01_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S01_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S01_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S01_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S01_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S01_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S01_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S01_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S01_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S01_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S01_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S01_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S01_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S01_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S01_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S01_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S01_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S01_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S01_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S01_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S01_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S01_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S01_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S01_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S01_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S01_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S01_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S01_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S01_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID));
  fft2x_mmult2x_fft_0_config_gpio_0 fft_0_config_gpio
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(config_interconnect_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(config_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(config_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(config_interconnect_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(config_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(config_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(config_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(config_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(config_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(config_interconnect_M00_AXI_RDATA),
        .s_axi_rready(config_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(config_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(config_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(config_interconnect_M00_AXI_WDATA),
        .s_axi_wready(config_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(config_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(config_interconnect_M00_AXI_WVALID));
  fft2x_mmult2x_fft_0_dma_0 fft_0_dma
       (.axi_resetn(fft_resetn_logic_Res),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(fft_dma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(fft_dma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(fft_dma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(fft_dma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(fft_dma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(fft_dma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(fft_dma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(fft_dma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(fft_dma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(fft_dma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(fft_dma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(fft_dma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(fft_dma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(fft_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(fft_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(fft_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(fft_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(fft_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(fft_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(fft_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(fft_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(fft_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(fft_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(fft_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(fft_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(fft_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(fft_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(fft_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(fft_dma_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(fft_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(fft_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(fft_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(fft_dma_M_AXIS_MM2S_TVALID),
        .mm2s_introut(fft_0_dma_mm2s_introut),
        .s2mm_introut(fft_0_dma_s2mm_introut),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(axi_interconnect_0_M01_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_lite_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_lite_awaddr(axi_interconnect_0_M01_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_lite_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_lite_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_lite_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_lite_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_lite_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_lite_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_lite_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_lite_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_lite_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_lite_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_lite_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .s_axis_s2mm_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .s_axis_s2mm_tready(xfft_0_M_AXIS_DATA_TREADY),
        .s_axis_s2mm_tvalid(xfft_0_M_AXIS_DATA_TVALID));
  fft2x_mmult2x_fft_0_dma_smartconnect_0 fft_0_dma_smartconnect
       (.M00_AXI_araddr(fft_dma_smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(fft_dma_smartconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(fft_dma_smartconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(fft_dma_smartconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(fft_dma_smartconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(fft_dma_smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(fft_dma_smartconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(fft_dma_smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(fft_dma_smartconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(fft_dma_smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(fft_dma_smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(fft_dma_smartconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(fft_dma_smartconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(fft_dma_smartconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(fft_dma_smartconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(fft_dma_smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(fft_dma_smartconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(fft_dma_smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(fft_dma_smartconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(fft_dma_smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(fft_dma_smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(fft_dma_smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(fft_dma_smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(fft_dma_smartconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(fft_dma_smartconnect_M00_AXI_RLAST),
        .M00_AXI_rready(fft_dma_smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(fft_dma_smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(fft_dma_smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(fft_dma_smartconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(fft_dma_smartconnect_M00_AXI_WLAST),
        .M00_AXI_wready(fft_dma_smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(fft_dma_smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(fft_dma_smartconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(fft_dma_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(fft_dma_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(fft_dma_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(fft_dma_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(fft_dma_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(fft_dma_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(fft_dma_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(fft_dma_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(fft_dma_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(fft_dma_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(fft_dma_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(fft_dma_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(fft_dma_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(fft_dma_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(fft_dma_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(fft_dma_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(fft_dma_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(fft_dma_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(fft_dma_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(fft_dma_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(fft_dma_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(fft_dma_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(fft_dma_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(fft_dma_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(fft_dma_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(fft_dma_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(fft_dma_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(fft_dma_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(fft_dma_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(ARESETN_1));
  fft2x_mmult2x_fft_0_resetn_gpio_0 fft_0_resetn_gpio
       (.gpio_io_o(axi_gpio_0_gpio_io_o1),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(config_interconnect_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(config_interconnect_M02_AXI_ARREADY),
        .s_axi_arvalid(config_interconnect_M02_AXI_ARVALID),
        .s_axi_awaddr(config_interconnect_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(config_interconnect_M02_AXI_AWREADY),
        .s_axi_awvalid(config_interconnect_M02_AXI_AWVALID),
        .s_axi_bready(config_interconnect_M02_AXI_BREADY),
        .s_axi_bresp(config_interconnect_M02_AXI_BRESP),
        .s_axi_bvalid(config_interconnect_M02_AXI_BVALID),
        .s_axi_rdata(config_interconnect_M02_AXI_RDATA),
        .s_axi_rready(config_interconnect_M02_AXI_RREADY),
        .s_axi_rresp(config_interconnect_M02_AXI_RRESP),
        .s_axi_rvalid(config_interconnect_M02_AXI_RVALID),
        .s_axi_wdata(config_interconnect_M02_AXI_WDATA),
        .s_axi_wready(config_interconnect_M02_AXI_WREADY),
        .s_axi_wstrb(config_interconnect_M02_AXI_WSTRB),
        .s_axi_wvalid(config_interconnect_M02_AXI_WVALID));
  fft2x_mmult2x_fft_0_resetn_logic_0 fft_0_resetn_logic
       (.Op1(rst_ps8_0_99M_peripheral_aresetn),
        .Op2(axi_gpio_0_gpio_io_o1),
        .Res(fft_resetn_logic_Res));
  fft2x_mmult2x_fft_1_config_gpio_0 fft_1_config_gpio
       (.gpio2_io_o(fft_1_config_gpio_gpio2_io_o),
        .gpio_io_o(fft_1_config_gpio_gpio_io_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(config_interconnect_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(config_interconnect_M03_AXI_ARREADY),
        .s_axi_arvalid(config_interconnect_M03_AXI_ARVALID),
        .s_axi_awaddr(config_interconnect_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(config_interconnect_M03_AXI_AWREADY),
        .s_axi_awvalid(config_interconnect_M03_AXI_AWVALID),
        .s_axi_bready(config_interconnect_M03_AXI_BREADY),
        .s_axi_bresp(config_interconnect_M03_AXI_BRESP),
        .s_axi_bvalid(config_interconnect_M03_AXI_BVALID),
        .s_axi_rdata(config_interconnect_M03_AXI_RDATA),
        .s_axi_rready(config_interconnect_M03_AXI_RREADY),
        .s_axi_rresp(config_interconnect_M03_AXI_RRESP),
        .s_axi_rvalid(config_interconnect_M03_AXI_RVALID),
        .s_axi_wdata(config_interconnect_M03_AXI_WDATA),
        .s_axi_wready(config_interconnect_M03_AXI_WREADY),
        .s_axi_wstrb(config_interconnect_M03_AXI_WSTRB),
        .s_axi_wvalid(config_interconnect_M03_AXI_WVALID));
  fft2x_mmult2x_fft_1_dma_0 fft_1_dma
       (.axi_resetn(fft_1_resetn_logic_Res),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(fft_1_dma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(fft_1_dma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(fft_1_dma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(fft_1_dma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(fft_1_dma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(fft_1_dma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(fft_1_dma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(fft_1_dma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(fft_1_dma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(fft_1_dma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(fft_1_dma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(fft_1_dma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(fft_1_dma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(fft_1_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(fft_1_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(fft_1_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(fft_1_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(fft_1_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(fft_1_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(fft_1_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(fft_1_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(fft_1_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(fft_1_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(fft_1_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(fft_1_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(fft_1_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(fft_1_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(fft_1_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(fft_1_dma_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(fft_1_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(fft_1_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(fft_1_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(fft_1_dma_M_AXIS_MM2S_TVALID),
        .mm2s_introut(fft_1_dma_mm2s_introut),
        .s2mm_introut(fft_1_dma_s2mm_introut),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(config_interconnect_M04_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(config_interconnect_M04_AXI_ARREADY),
        .s_axi_lite_arvalid(config_interconnect_M04_AXI_ARVALID),
        .s_axi_lite_awaddr(config_interconnect_M04_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(config_interconnect_M04_AXI_AWREADY),
        .s_axi_lite_awvalid(config_interconnect_M04_AXI_AWVALID),
        .s_axi_lite_bready(config_interconnect_M04_AXI_BREADY),
        .s_axi_lite_bresp(config_interconnect_M04_AXI_BRESP),
        .s_axi_lite_bvalid(config_interconnect_M04_AXI_BVALID),
        .s_axi_lite_rdata(config_interconnect_M04_AXI_RDATA),
        .s_axi_lite_rready(config_interconnect_M04_AXI_RREADY),
        .s_axi_lite_rresp(config_interconnect_M04_AXI_RRESP),
        .s_axi_lite_rvalid(config_interconnect_M04_AXI_RVALID),
        .s_axi_lite_wdata(config_interconnect_M04_AXI_WDATA),
        .s_axi_lite_wready(config_interconnect_M04_AXI_WREADY),
        .s_axi_lite_wvalid(config_interconnect_M04_AXI_WVALID),
        .s_axis_s2mm_tdata(xfft_1_M_AXIS_DATA_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(xfft_1_M_AXIS_DATA_TLAST),
        .s_axis_s2mm_tready(xfft_1_M_AXIS_DATA_TREADY),
        .s_axis_s2mm_tvalid(xfft_1_M_AXIS_DATA_TVALID));
  fft2x_mmult2x_fft_1_dma_smartconnect_0 fft_1_dma_smartconnect
       (.M00_AXI_araddr(fft_1_dma_smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(fft_1_dma_smartconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(fft_1_dma_smartconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(fft_1_dma_smartconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(fft_1_dma_smartconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(fft_1_dma_smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(fft_1_dma_smartconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(fft_1_dma_smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(fft_1_dma_smartconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(fft_1_dma_smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(fft_1_dma_smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(fft_1_dma_smartconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(fft_1_dma_smartconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(fft_1_dma_smartconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(fft_1_dma_smartconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(fft_1_dma_smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(fft_1_dma_smartconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(fft_1_dma_smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(fft_1_dma_smartconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(fft_1_dma_smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(fft_1_dma_smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(fft_1_dma_smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(fft_1_dma_smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(fft_1_dma_smartconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(fft_1_dma_smartconnect_M00_AXI_RLAST),
        .M00_AXI_rready(fft_1_dma_smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(fft_1_dma_smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(fft_1_dma_smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(fft_1_dma_smartconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(fft_1_dma_smartconnect_M00_AXI_WLAST),
        .M00_AXI_wready(fft_1_dma_smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(fft_1_dma_smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(fft_1_dma_smartconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(fft_1_dma_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(fft_1_dma_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(fft_1_dma_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(fft_1_dma_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(fft_1_dma_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(fft_1_dma_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(fft_1_dma_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(fft_1_dma_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(fft_1_dma_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(fft_1_dma_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(fft_1_dma_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(fft_1_dma_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(fft_1_dma_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(fft_1_dma_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(fft_1_dma_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(fft_1_dma_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(fft_1_dma_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(fft_1_dma_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(fft_1_dma_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(fft_1_dma_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(fft_1_dma_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(fft_1_dma_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(fft_1_dma_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(fft_1_dma_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(fft_1_dma_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(fft_1_dma_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(fft_1_dma_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(fft_1_dma_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(fft_1_dma_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(ARESETN_1));
  fft2x_mmult2x_fft_1_resetn_gpio_0 fft_1_resetn_gpio
       (.gpio_io_o(fft_1_resetn_gpio_gpio_io_o),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(config_interconnect_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(config_interconnect_M05_AXI_ARREADY),
        .s_axi_arvalid(config_interconnect_M05_AXI_ARVALID),
        .s_axi_awaddr(config_interconnect_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(config_interconnect_M05_AXI_AWREADY),
        .s_axi_awvalid(config_interconnect_M05_AXI_AWVALID),
        .s_axi_bready(config_interconnect_M05_AXI_BREADY),
        .s_axi_bresp(config_interconnect_M05_AXI_BRESP),
        .s_axi_bvalid(config_interconnect_M05_AXI_BVALID),
        .s_axi_rdata(config_interconnect_M05_AXI_RDATA),
        .s_axi_rready(config_interconnect_M05_AXI_RREADY),
        .s_axi_rresp(config_interconnect_M05_AXI_RRESP),
        .s_axi_rvalid(config_interconnect_M05_AXI_RVALID),
        .s_axi_wdata(config_interconnect_M05_AXI_WDATA),
        .s_axi_wready(config_interconnect_M05_AXI_WREADY),
        .s_axi_wstrb(config_interconnect_M05_AXI_WSTRB),
        .s_axi_wvalid(config_interconnect_M05_AXI_WVALID));
  fft2x_mmult2x_fft_1_resetn_logic_0 fft_1_resetn_logic
       (.Op1(rst_ps8_0_99M_peripheral_aresetn),
        .Op2(fft_1_resetn_gpio_gpio_io_o),
        .Res(fft_1_resetn_logic_Res));
  fft2x_mmult2x_irq_concat_0 irq_concat
       (.In0(fft_0_dma_mm2s_introut),
        .In1(fft_0_dma_s2mm_introut),
        .In2(fft_1_dma_mm2s_introut),
        .In3(fft_1_dma_s2mm_introut),
        .In4(mmult_0_dma_mm2s_introut),
        .In5(mmult_0_dma_s2mm_introut),
        .In6(mmult_1_dma_mm2s_introut),
        .In7(mmult_1_dma_s2mm_introut),
        .dout(xlconcat_0_dout));
  fft2x_mmult2x_mmult_0_accel_0 mmult_0_accel
       (.INPUT_STREAM_TDATA(mmult_dma_M_AXIS_MM2S_TDATA),
        .INPUT_STREAM_TDEST(1'b0),
        .INPUT_STREAM_TID(1'b0),
        .INPUT_STREAM_TKEEP(mmult_dma_M_AXIS_MM2S_TKEEP),
        .INPUT_STREAM_TLAST(mmult_dma_M_AXIS_MM2S_TLAST),
        .INPUT_STREAM_TREADY(mmult_dma_M_AXIS_MM2S_TREADY),
        .INPUT_STREAM_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .INPUT_STREAM_TUSER(1'b0),
        .INPUT_STREAM_TVALID(mmult_dma_M_AXIS_MM2S_TVALID),
        .OUTPUT_STREAM_TDATA(mmult_accel_OUTPUT_STREAM_TDATA),
        .OUTPUT_STREAM_TKEEP(mmult_accel_OUTPUT_STREAM_TKEEP),
        .OUTPUT_STREAM_TLAST(mmult_accel_OUTPUT_STREAM_TLAST),
        .OUTPUT_STREAM_TREADY(mmult_accel_OUTPUT_STREAM_TREADY),
        .OUTPUT_STREAM_TVALID(mmult_accel_OUTPUT_STREAM_TVALID),
        .ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_99M_peripheral_aresetn));
  fft2x_mmult2x_mmult_0_dma_0 mmult_0_dma
       (.axi_resetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(mmult_dma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(mmult_dma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(mmult_dma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(mmult_dma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(mmult_dma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(mmult_dma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(mmult_dma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(mmult_dma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(mmult_dma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(mmult_dma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(mmult_dma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(mmult_dma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(mmult_dma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(mmult_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(mmult_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(mmult_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(mmult_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(mmult_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(mmult_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(mmult_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(mmult_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(mmult_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(mmult_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(mmult_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(mmult_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(mmult_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(mmult_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(mmult_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(mmult_dma_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(mmult_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(mmult_dma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(mmult_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(mmult_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(mmult_dma_M_AXIS_MM2S_TVALID),
        .mm2s_introut(mmult_0_dma_mm2s_introut),
        .s2mm_introut(mmult_0_dma_s2mm_introut),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(config_interconnect_M06_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(config_interconnect_M06_AXI_ARREADY),
        .s_axi_lite_arvalid(config_interconnect_M06_AXI_ARVALID),
        .s_axi_lite_awaddr(config_interconnect_M06_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(config_interconnect_M06_AXI_AWREADY),
        .s_axi_lite_awvalid(config_interconnect_M06_AXI_AWVALID),
        .s_axi_lite_bready(config_interconnect_M06_AXI_BREADY),
        .s_axi_lite_bresp(config_interconnect_M06_AXI_BRESP),
        .s_axi_lite_bvalid(config_interconnect_M06_AXI_BVALID),
        .s_axi_lite_rdata(config_interconnect_M06_AXI_RDATA),
        .s_axi_lite_rready(config_interconnect_M06_AXI_RREADY),
        .s_axi_lite_rresp(config_interconnect_M06_AXI_RRESP),
        .s_axi_lite_rvalid(config_interconnect_M06_AXI_RVALID),
        .s_axi_lite_wdata(config_interconnect_M06_AXI_WDATA),
        .s_axi_lite_wready(config_interconnect_M06_AXI_WREADY),
        .s_axi_lite_wvalid(config_interconnect_M06_AXI_WVALID),
        .s_axis_s2mm_tdata(mmult_accel_OUTPUT_STREAM_TDATA),
        .s_axis_s2mm_tkeep(mmult_accel_OUTPUT_STREAM_TKEEP),
        .s_axis_s2mm_tlast(mmult_accel_OUTPUT_STREAM_TLAST),
        .s_axis_s2mm_tready(mmult_accel_OUTPUT_STREAM_TREADY),
        .s_axis_s2mm_tvalid(mmult_accel_OUTPUT_STREAM_TVALID));
  fft2x_mmult2x_mmult_0_dma_smartconnect_0 mmult_0_dma_smartconnect
       (.M00_AXI_araddr(mmult_dma_smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(mmult_dma_smartconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(mmult_dma_smartconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(mmult_dma_smartconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(mmult_dma_smartconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(mmult_dma_smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(mmult_dma_smartconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(mmult_dma_smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(mmult_dma_smartconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(mmult_dma_smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(mmult_dma_smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(mmult_dma_smartconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(mmult_dma_smartconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(mmult_dma_smartconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(mmult_dma_smartconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(mmult_dma_smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(mmult_dma_smartconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(mmult_dma_smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(mmult_dma_smartconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(mmult_dma_smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(mmult_dma_smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(mmult_dma_smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(mmult_dma_smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(mmult_dma_smartconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(mmult_dma_smartconnect_M00_AXI_RLAST),
        .M00_AXI_rready(mmult_dma_smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(mmult_dma_smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(mmult_dma_smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(mmult_dma_smartconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(mmult_dma_smartconnect_M00_AXI_WLAST),
        .M00_AXI_wready(mmult_dma_smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(mmult_dma_smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(mmult_dma_smartconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(mmult_dma_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(mmult_dma_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(mmult_dma_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(mmult_dma_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(mmult_dma_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(mmult_dma_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(mmult_dma_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(mmult_dma_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(mmult_dma_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(mmult_dma_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(mmult_dma_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(mmult_dma_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(mmult_dma_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(mmult_dma_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(mmult_dma_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(mmult_dma_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(mmult_dma_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(mmult_dma_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(mmult_dma_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(mmult_dma_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(mmult_dma_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(mmult_dma_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(mmult_dma_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(mmult_dma_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(mmult_dma_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(mmult_dma_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(mmult_dma_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(mmult_dma_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(mmult_dma_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(ARESETN_1));
  fft2x_mmult2x_mmult_1_accel_0 mmult_1_accel
       (.INPUT_STREAM_TDATA(mmult_1_dma_M_AXIS_MM2S_TDATA),
        .INPUT_STREAM_TDEST(1'b0),
        .INPUT_STREAM_TID(1'b0),
        .INPUT_STREAM_TKEEP(mmult_1_dma_M_AXIS_MM2S_TKEEP),
        .INPUT_STREAM_TLAST(mmult_1_dma_M_AXIS_MM2S_TLAST),
        .INPUT_STREAM_TREADY(mmult_1_dma_M_AXIS_MM2S_TREADY),
        .INPUT_STREAM_TSTRB({1'b1,1'b1,1'b1,1'b1}),
        .INPUT_STREAM_TUSER(1'b0),
        .INPUT_STREAM_TVALID(mmult_1_dma_M_AXIS_MM2S_TVALID),
        .OUTPUT_STREAM_TDATA(mmult_1_accel_OUTPUT_STREAM_TDATA),
        .OUTPUT_STREAM_TKEEP(mmult_1_accel_OUTPUT_STREAM_TKEEP),
        .OUTPUT_STREAM_TLAST(mmult_1_accel_OUTPUT_STREAM_TLAST),
        .OUTPUT_STREAM_TREADY(mmult_1_accel_OUTPUT_STREAM_TREADY),
        .OUTPUT_STREAM_TVALID(mmult_1_accel_OUTPUT_STREAM_TVALID),
        .ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst_n(rst_ps8_0_99M_peripheral_aresetn));
  fft2x_mmult2x_mmult_1_dma_0 mmult_1_dma
       (.axi_resetn(rst_ps8_0_99M_peripheral_aresetn),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_mm2s_araddr(mmult_1_dma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(mmult_1_dma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(mmult_1_dma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(mmult_1_dma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(mmult_1_dma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(mmult_1_dma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(mmult_1_dma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(mmult_1_dma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(mmult_1_dma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(mmult_1_dma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(mmult_1_dma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(mmult_1_dma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(mmult_1_dma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axi_s2mm_awaddr(mmult_1_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(mmult_1_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(mmult_1_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(mmult_1_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(mmult_1_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(mmult_1_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(mmult_1_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(mmult_1_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(mmult_1_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(mmult_1_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(mmult_1_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(mmult_1_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(mmult_1_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(mmult_1_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(mmult_1_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(mmult_1_dma_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(mmult_1_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(mmult_1_dma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(mmult_1_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(mmult_1_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(mmult_1_dma_M_AXIS_MM2S_TVALID),
        .mm2s_introut(mmult_1_dma_mm2s_introut),
        .s2mm_introut(mmult_1_dma_s2mm_introut),
        .s_axi_lite_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_lite_araddr(config_interconnect_M07_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(config_interconnect_M07_AXI_ARREADY),
        .s_axi_lite_arvalid(config_interconnect_M07_AXI_ARVALID),
        .s_axi_lite_awaddr(config_interconnect_M07_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(config_interconnect_M07_AXI_AWREADY),
        .s_axi_lite_awvalid(config_interconnect_M07_AXI_AWVALID),
        .s_axi_lite_bready(config_interconnect_M07_AXI_BREADY),
        .s_axi_lite_bresp(config_interconnect_M07_AXI_BRESP),
        .s_axi_lite_bvalid(config_interconnect_M07_AXI_BVALID),
        .s_axi_lite_rdata(config_interconnect_M07_AXI_RDATA),
        .s_axi_lite_rready(config_interconnect_M07_AXI_RREADY),
        .s_axi_lite_rresp(config_interconnect_M07_AXI_RRESP),
        .s_axi_lite_rvalid(config_interconnect_M07_AXI_RVALID),
        .s_axi_lite_wdata(config_interconnect_M07_AXI_WDATA),
        .s_axi_lite_wready(config_interconnect_M07_AXI_WREADY),
        .s_axi_lite_wvalid(config_interconnect_M07_AXI_WVALID),
        .s_axis_s2mm_tdata(mmult_1_accel_OUTPUT_STREAM_TDATA),
        .s_axis_s2mm_tkeep(mmult_1_accel_OUTPUT_STREAM_TKEEP),
        .s_axis_s2mm_tlast(mmult_1_accel_OUTPUT_STREAM_TLAST),
        .s_axis_s2mm_tready(mmult_1_accel_OUTPUT_STREAM_TREADY),
        .s_axis_s2mm_tvalid(mmult_1_accel_OUTPUT_STREAM_TVALID));
  fft2x_mmult2x_mmult_1_dma_smartconnect_0 mmult_1_dma_smartconnect
       (.M00_AXI_araddr(mmult_1_dma_smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arburst(mmult_1_dma_smartconnect_M00_AXI_ARBURST),
        .M00_AXI_arcache(mmult_1_dma_smartconnect_M00_AXI_ARCACHE),
        .M00_AXI_arlen(mmult_1_dma_smartconnect_M00_AXI_ARLEN),
        .M00_AXI_arlock(mmult_1_dma_smartconnect_M00_AXI_ARLOCK),
        .M00_AXI_arprot(mmult_1_dma_smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arqos(mmult_1_dma_smartconnect_M00_AXI_ARQOS),
        .M00_AXI_arready(mmult_1_dma_smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arsize(mmult_1_dma_smartconnect_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(mmult_1_dma_smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(mmult_1_dma_smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awburst(mmult_1_dma_smartconnect_M00_AXI_AWBURST),
        .M00_AXI_awcache(mmult_1_dma_smartconnect_M00_AXI_AWCACHE),
        .M00_AXI_awlen(mmult_1_dma_smartconnect_M00_AXI_AWLEN),
        .M00_AXI_awlock(mmult_1_dma_smartconnect_M00_AXI_AWLOCK),
        .M00_AXI_awprot(mmult_1_dma_smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awqos(mmult_1_dma_smartconnect_M00_AXI_AWQOS),
        .M00_AXI_awready(mmult_1_dma_smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awsize(mmult_1_dma_smartconnect_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(mmult_1_dma_smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(mmult_1_dma_smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(mmult_1_dma_smartconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(mmult_1_dma_smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(mmult_1_dma_smartconnect_M00_AXI_RDATA),
        .M00_AXI_rlast(mmult_1_dma_smartconnect_M00_AXI_RLAST),
        .M00_AXI_rready(mmult_1_dma_smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(mmult_1_dma_smartconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(mmult_1_dma_smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(mmult_1_dma_smartconnect_M00_AXI_WDATA),
        .M00_AXI_wlast(mmult_1_dma_smartconnect_M00_AXI_WLAST),
        .M00_AXI_wready(mmult_1_dma_smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(mmult_1_dma_smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(mmult_1_dma_smartconnect_M00_AXI_WVALID),
        .S00_AXI_araddr(mmult_1_dma_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(mmult_1_dma_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(mmult_1_dma_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(mmult_1_dma_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(mmult_1_dma_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(mmult_1_dma_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(mmult_1_dma_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(mmult_1_dma_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(mmult_1_dma_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(mmult_1_dma_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(mmult_1_dma_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(mmult_1_dma_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(mmult_1_dma_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(mmult_1_dma_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(mmult_1_dma_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(mmult_1_dma_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(mmult_1_dma_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(mmult_1_dma_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(mmult_1_dma_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(mmult_1_dma_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(mmult_1_dma_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(mmult_1_dma_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(mmult_1_dma_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(mmult_1_dma_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(mmult_1_dma_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(mmult_1_dma_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(mmult_1_dma_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(mmult_1_dma_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(mmult_1_dma_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(ARESETN_1));
  fft2x_mmult2x_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  fft2x_mmult2x_xfft_0_0 xfft_0
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(fft_resetn_logic_Res),
        .m_axis_data_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .m_axis_data_tready(xfft_0_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_0_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(axi_gpio_0_gpio2_io_o),
        .s_axis_config_tvalid(axi_gpio_0_gpio_io_o),
        .s_axis_data_tdata(fft_dma_M_AXIS_MM2S_TDATA),
        .s_axis_data_tlast(fft_dma_M_AXIS_MM2S_TLAST),
        .s_axis_data_tready(fft_dma_M_AXIS_MM2S_TREADY),
        .s_axis_data_tvalid(fft_dma_M_AXIS_MM2S_TVALID));
  fft2x_mmult2x_xfft_1_0 xfft_1
       (.aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(fft_1_resetn_logic_Res),
        .m_axis_data_tdata(xfft_1_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_1_M_AXIS_DATA_TLAST),
        .m_axis_data_tready(xfft_1_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_1_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(fft_1_config_gpio_gpio2_io_o),
        .s_axis_config_tvalid(fft_1_config_gpio_gpio_io_o),
        .s_axis_data_tdata(fft_1_dma_M_AXIS_MM2S_TDATA),
        .s_axis_data_tlast(fft_1_dma_M_AXIS_MM2S_TLAST),
        .s_axis_data_tready(fft_1_dma_M_AXIS_MM2S_TREADY),
        .s_axis_data_tvalid(fft_1_dma_M_AXIS_MM2S_TVALID));
  fft2x_mmult2x_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(xlconcat_0_dout),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr(fft_dma_smartconnect_M00_AXI_ARADDR),
        .saxigp2_arburst(fft_dma_smartconnect_M00_AXI_ARBURST),
        .saxigp2_arcache(fft_dma_smartconnect_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_arlen(fft_dma_smartconnect_M00_AXI_ARLEN),
        .saxigp2_arlock(fft_dma_smartconnect_M00_AXI_ARLOCK),
        .saxigp2_arprot(fft_dma_smartconnect_M00_AXI_ARPROT),
        .saxigp2_arqos(fft_dma_smartconnect_M00_AXI_ARQOS),
        .saxigp2_arready(fft_dma_smartconnect_M00_AXI_ARREADY),
        .saxigp2_arsize(fft_dma_smartconnect_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(fft_dma_smartconnect_M00_AXI_ARVALID),
        .saxigp2_awaddr(fft_dma_smartconnect_M00_AXI_AWADDR),
        .saxigp2_awburst(fft_dma_smartconnect_M00_AXI_AWBURST),
        .saxigp2_awcache(fft_dma_smartconnect_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp2_awlen(fft_dma_smartconnect_M00_AXI_AWLEN),
        .saxigp2_awlock(fft_dma_smartconnect_M00_AXI_AWLOCK),
        .saxigp2_awprot(fft_dma_smartconnect_M00_AXI_AWPROT),
        .saxigp2_awqos(fft_dma_smartconnect_M00_AXI_AWQOS),
        .saxigp2_awready(fft_dma_smartconnect_M00_AXI_AWREADY),
        .saxigp2_awsize(fft_dma_smartconnect_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(fft_dma_smartconnect_M00_AXI_AWVALID),
        .saxigp2_bready(fft_dma_smartconnect_M00_AXI_BREADY),
        .saxigp2_bresp(fft_dma_smartconnect_M00_AXI_BRESP),
        .saxigp2_bvalid(fft_dma_smartconnect_M00_AXI_BVALID),
        .saxigp2_rdata(fft_dma_smartconnect_M00_AXI_RDATA),
        .saxigp2_rlast(fft_dma_smartconnect_M00_AXI_RLAST),
        .saxigp2_rready(fft_dma_smartconnect_M00_AXI_RREADY),
        .saxigp2_rresp(fft_dma_smartconnect_M00_AXI_RRESP),
        .saxigp2_rvalid(fft_dma_smartconnect_M00_AXI_RVALID),
        .saxigp2_wdata(fft_dma_smartconnect_M00_AXI_WDATA),
        .saxigp2_wlast(fft_dma_smartconnect_M00_AXI_WLAST),
        .saxigp2_wready(fft_dma_smartconnect_M00_AXI_WREADY),
        .saxigp2_wstrb(fft_dma_smartconnect_M00_AXI_WSTRB),
        .saxigp2_wvalid(fft_dma_smartconnect_M00_AXI_WVALID),
        .saxigp3_araddr(fft_1_dma_smartconnect_M00_AXI_ARADDR),
        .saxigp3_arburst(fft_1_dma_smartconnect_M00_AXI_ARBURST),
        .saxigp3_arcache(fft_1_dma_smartconnect_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(fft_1_dma_smartconnect_M00_AXI_ARLEN),
        .saxigp3_arlock(fft_1_dma_smartconnect_M00_AXI_ARLOCK),
        .saxigp3_arprot(fft_1_dma_smartconnect_M00_AXI_ARPROT),
        .saxigp3_arqos(fft_1_dma_smartconnect_M00_AXI_ARQOS),
        .saxigp3_arready(fft_1_dma_smartconnect_M00_AXI_ARREADY),
        .saxigp3_arsize(fft_1_dma_smartconnect_M00_AXI_ARSIZE),
        .saxigp3_aruser(1'b0),
        .saxigp3_arvalid(fft_1_dma_smartconnect_M00_AXI_ARVALID),
        .saxigp3_awaddr(fft_1_dma_smartconnect_M00_AXI_AWADDR),
        .saxigp3_awburst(fft_1_dma_smartconnect_M00_AXI_AWBURST),
        .saxigp3_awcache(fft_1_dma_smartconnect_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(fft_1_dma_smartconnect_M00_AXI_AWLEN),
        .saxigp3_awlock(fft_1_dma_smartconnect_M00_AXI_AWLOCK),
        .saxigp3_awprot(fft_1_dma_smartconnect_M00_AXI_AWPROT),
        .saxigp3_awqos(fft_1_dma_smartconnect_M00_AXI_AWQOS),
        .saxigp3_awready(fft_1_dma_smartconnect_M00_AXI_AWREADY),
        .saxigp3_awsize(fft_1_dma_smartconnect_M00_AXI_AWSIZE),
        .saxigp3_awuser(1'b0),
        .saxigp3_awvalid(fft_1_dma_smartconnect_M00_AXI_AWVALID),
        .saxigp3_bready(fft_1_dma_smartconnect_M00_AXI_BREADY),
        .saxigp3_bresp(fft_1_dma_smartconnect_M00_AXI_BRESP),
        .saxigp3_bvalid(fft_1_dma_smartconnect_M00_AXI_BVALID),
        .saxigp3_rdata(fft_1_dma_smartconnect_M00_AXI_RDATA),
        .saxigp3_rlast(fft_1_dma_smartconnect_M00_AXI_RLAST),
        .saxigp3_rready(fft_1_dma_smartconnect_M00_AXI_RREADY),
        .saxigp3_rresp(fft_1_dma_smartconnect_M00_AXI_RRESP),
        .saxigp3_rvalid(fft_1_dma_smartconnect_M00_AXI_RVALID),
        .saxigp3_wdata(fft_1_dma_smartconnect_M00_AXI_WDATA),
        .saxigp3_wlast(fft_1_dma_smartconnect_M00_AXI_WLAST),
        .saxigp3_wready(fft_1_dma_smartconnect_M00_AXI_WREADY),
        .saxigp3_wstrb(fft_1_dma_smartconnect_M00_AXI_WSTRB),
        .saxigp3_wvalid(fft_1_dma_smartconnect_M00_AXI_WVALID),
        .saxigp4_araddr(mmult_dma_smartconnect_M00_AXI_ARADDR),
        .saxigp4_arburst(mmult_dma_smartconnect_M00_AXI_ARBURST),
        .saxigp4_arcache(mmult_dma_smartconnect_M00_AXI_ARCACHE),
        .saxigp4_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_arlen(mmult_dma_smartconnect_M00_AXI_ARLEN),
        .saxigp4_arlock(mmult_dma_smartconnect_M00_AXI_ARLOCK),
        .saxigp4_arprot(mmult_dma_smartconnect_M00_AXI_ARPROT),
        .saxigp4_arqos(mmult_dma_smartconnect_M00_AXI_ARQOS),
        .saxigp4_arready(mmult_dma_smartconnect_M00_AXI_ARREADY),
        .saxigp4_arsize(mmult_dma_smartconnect_M00_AXI_ARSIZE),
        .saxigp4_aruser(1'b0),
        .saxigp4_arvalid(mmult_dma_smartconnect_M00_AXI_ARVALID),
        .saxigp4_awaddr(mmult_dma_smartconnect_M00_AXI_AWADDR),
        .saxigp4_awburst(mmult_dma_smartconnect_M00_AXI_AWBURST),
        .saxigp4_awcache(mmult_dma_smartconnect_M00_AXI_AWCACHE),
        .saxigp4_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp4_awlen(mmult_dma_smartconnect_M00_AXI_AWLEN),
        .saxigp4_awlock(mmult_dma_smartconnect_M00_AXI_AWLOCK),
        .saxigp4_awprot(mmult_dma_smartconnect_M00_AXI_AWPROT),
        .saxigp4_awqos(mmult_dma_smartconnect_M00_AXI_AWQOS),
        .saxigp4_awready(mmult_dma_smartconnect_M00_AXI_AWREADY),
        .saxigp4_awsize(mmult_dma_smartconnect_M00_AXI_AWSIZE),
        .saxigp4_awuser(1'b0),
        .saxigp4_awvalid(mmult_dma_smartconnect_M00_AXI_AWVALID),
        .saxigp4_bready(mmult_dma_smartconnect_M00_AXI_BREADY),
        .saxigp4_bresp(mmult_dma_smartconnect_M00_AXI_BRESP),
        .saxigp4_bvalid(mmult_dma_smartconnect_M00_AXI_BVALID),
        .saxigp4_rdata(mmult_dma_smartconnect_M00_AXI_RDATA),
        .saxigp4_rlast(mmult_dma_smartconnect_M00_AXI_RLAST),
        .saxigp4_rready(mmult_dma_smartconnect_M00_AXI_RREADY),
        .saxigp4_rresp(mmult_dma_smartconnect_M00_AXI_RRESP),
        .saxigp4_rvalid(mmult_dma_smartconnect_M00_AXI_RVALID),
        .saxigp4_wdata(mmult_dma_smartconnect_M00_AXI_WDATA),
        .saxigp4_wlast(mmult_dma_smartconnect_M00_AXI_WLAST),
        .saxigp4_wready(mmult_dma_smartconnect_M00_AXI_WREADY),
        .saxigp4_wstrb(mmult_dma_smartconnect_M00_AXI_WSTRB),
        .saxigp4_wvalid(mmult_dma_smartconnect_M00_AXI_WVALID),
        .saxigp5_araddr(mmult_1_dma_smartconnect_M00_AXI_ARADDR),
        .saxigp5_arburst(mmult_1_dma_smartconnect_M00_AXI_ARBURST),
        .saxigp5_arcache(mmult_1_dma_smartconnect_M00_AXI_ARCACHE),
        .saxigp5_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_arlen(mmult_1_dma_smartconnect_M00_AXI_ARLEN),
        .saxigp5_arlock(mmult_1_dma_smartconnect_M00_AXI_ARLOCK),
        .saxigp5_arprot(mmult_1_dma_smartconnect_M00_AXI_ARPROT),
        .saxigp5_arqos(mmult_1_dma_smartconnect_M00_AXI_ARQOS),
        .saxigp5_arready(mmult_1_dma_smartconnect_M00_AXI_ARREADY),
        .saxigp5_arsize(mmult_1_dma_smartconnect_M00_AXI_ARSIZE),
        .saxigp5_aruser(1'b0),
        .saxigp5_arvalid(mmult_1_dma_smartconnect_M00_AXI_ARVALID),
        .saxigp5_awaddr(mmult_1_dma_smartconnect_M00_AXI_AWADDR),
        .saxigp5_awburst(mmult_1_dma_smartconnect_M00_AXI_AWBURST),
        .saxigp5_awcache(mmult_1_dma_smartconnect_M00_AXI_AWCACHE),
        .saxigp5_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp5_awlen(mmult_1_dma_smartconnect_M00_AXI_AWLEN),
        .saxigp5_awlock(mmult_1_dma_smartconnect_M00_AXI_AWLOCK),
        .saxigp5_awprot(mmult_1_dma_smartconnect_M00_AXI_AWPROT),
        .saxigp5_awqos(mmult_1_dma_smartconnect_M00_AXI_AWQOS),
        .saxigp5_awready(mmult_1_dma_smartconnect_M00_AXI_AWREADY),
        .saxigp5_awsize(mmult_1_dma_smartconnect_M00_AXI_AWSIZE),
        .saxigp5_awuser(1'b0),
        .saxigp5_awvalid(mmult_1_dma_smartconnect_M00_AXI_AWVALID),
        .saxigp5_bready(mmult_1_dma_smartconnect_M00_AXI_BREADY),
        .saxigp5_bresp(mmult_1_dma_smartconnect_M00_AXI_BRESP),
        .saxigp5_bvalid(mmult_1_dma_smartconnect_M00_AXI_BVALID),
        .saxigp5_rdata(mmult_1_dma_smartconnect_M00_AXI_RDATA),
        .saxigp5_rlast(mmult_1_dma_smartconnect_M00_AXI_RLAST),
        .saxigp5_rready(mmult_1_dma_smartconnect_M00_AXI_RREADY),
        .saxigp5_rresp(mmult_1_dma_smartconnect_M00_AXI_RRESP),
        .saxigp5_rvalid(mmult_1_dma_smartconnect_M00_AXI_RVALID),
        .saxigp5_wdata(mmult_1_dma_smartconnect_M00_AXI_WDATA),
        .saxigp5_wlast(mmult_1_dma_smartconnect_M00_AXI_WLAST),
        .saxigp5_wready(mmult_1_dma_smartconnect_M00_AXI_WREADY),
        .saxigp5_wstrb(mmult_1_dma_smartconnect_M00_AXI_WSTRB),
        .saxigp5_wvalid(mmult_1_dma_smartconnect_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp2_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .saxihp3_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

module fft2x_mmult2x_config_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [39:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [39:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [39:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [39:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [39:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [15:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [39:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [15:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [15:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [127:0]S01_AXI_rdata;
  output [15:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [127:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [15:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire config_interconnect_ACLK_net;
  wire config_interconnect_ARESETN_net;
  wire [39:0]config_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]config_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]config_interconnect_to_s00_couplers_ARCACHE;
  wire [15:0]config_interconnect_to_s00_couplers_ARID;
  wire [7:0]config_interconnect_to_s00_couplers_ARLEN;
  wire config_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]config_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]config_interconnect_to_s00_couplers_ARQOS;
  wire config_interconnect_to_s00_couplers_ARREADY;
  wire [2:0]config_interconnect_to_s00_couplers_ARSIZE;
  wire config_interconnect_to_s00_couplers_ARVALID;
  wire [39:0]config_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]config_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]config_interconnect_to_s00_couplers_AWCACHE;
  wire [15:0]config_interconnect_to_s00_couplers_AWID;
  wire [7:0]config_interconnect_to_s00_couplers_AWLEN;
  wire config_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]config_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]config_interconnect_to_s00_couplers_AWQOS;
  wire config_interconnect_to_s00_couplers_AWREADY;
  wire [2:0]config_interconnect_to_s00_couplers_AWSIZE;
  wire config_interconnect_to_s00_couplers_AWVALID;
  wire [15:0]config_interconnect_to_s00_couplers_BID;
  wire config_interconnect_to_s00_couplers_BREADY;
  wire [1:0]config_interconnect_to_s00_couplers_BRESP;
  wire config_interconnect_to_s00_couplers_BVALID;
  wire [127:0]config_interconnect_to_s00_couplers_RDATA;
  wire [15:0]config_interconnect_to_s00_couplers_RID;
  wire config_interconnect_to_s00_couplers_RLAST;
  wire config_interconnect_to_s00_couplers_RREADY;
  wire [1:0]config_interconnect_to_s00_couplers_RRESP;
  wire config_interconnect_to_s00_couplers_RVALID;
  wire [127:0]config_interconnect_to_s00_couplers_WDATA;
  wire config_interconnect_to_s00_couplers_WLAST;
  wire config_interconnect_to_s00_couplers_WREADY;
  wire [15:0]config_interconnect_to_s00_couplers_WSTRB;
  wire config_interconnect_to_s00_couplers_WVALID;
  wire [39:0]config_interconnect_to_s01_couplers_ARADDR;
  wire [1:0]config_interconnect_to_s01_couplers_ARBURST;
  wire [3:0]config_interconnect_to_s01_couplers_ARCACHE;
  wire [15:0]config_interconnect_to_s01_couplers_ARID;
  wire [7:0]config_interconnect_to_s01_couplers_ARLEN;
  wire config_interconnect_to_s01_couplers_ARLOCK;
  wire [2:0]config_interconnect_to_s01_couplers_ARPROT;
  wire [3:0]config_interconnect_to_s01_couplers_ARQOS;
  wire config_interconnect_to_s01_couplers_ARREADY;
  wire [2:0]config_interconnect_to_s01_couplers_ARSIZE;
  wire config_interconnect_to_s01_couplers_ARVALID;
  wire [39:0]config_interconnect_to_s01_couplers_AWADDR;
  wire [1:0]config_interconnect_to_s01_couplers_AWBURST;
  wire [3:0]config_interconnect_to_s01_couplers_AWCACHE;
  wire [15:0]config_interconnect_to_s01_couplers_AWID;
  wire [7:0]config_interconnect_to_s01_couplers_AWLEN;
  wire config_interconnect_to_s01_couplers_AWLOCK;
  wire [2:0]config_interconnect_to_s01_couplers_AWPROT;
  wire [3:0]config_interconnect_to_s01_couplers_AWQOS;
  wire config_interconnect_to_s01_couplers_AWREADY;
  wire [2:0]config_interconnect_to_s01_couplers_AWSIZE;
  wire config_interconnect_to_s01_couplers_AWVALID;
  wire [15:0]config_interconnect_to_s01_couplers_BID;
  wire config_interconnect_to_s01_couplers_BREADY;
  wire [1:0]config_interconnect_to_s01_couplers_BRESP;
  wire config_interconnect_to_s01_couplers_BVALID;
  wire [127:0]config_interconnect_to_s01_couplers_RDATA;
  wire [15:0]config_interconnect_to_s01_couplers_RID;
  wire config_interconnect_to_s01_couplers_RLAST;
  wire config_interconnect_to_s01_couplers_RREADY;
  wire [1:0]config_interconnect_to_s01_couplers_RRESP;
  wire config_interconnect_to_s01_couplers_RVALID;
  wire [127:0]config_interconnect_to_s01_couplers_WDATA;
  wire config_interconnect_to_s01_couplers_WLAST;
  wire config_interconnect_to_s01_couplers_WREADY;
  wire [15:0]config_interconnect_to_s01_couplers_WSTRB;
  wire config_interconnect_to_s01_couplers_WVALID;
  wire [39:0]m00_couplers_to_config_interconnect_ARADDR;
  wire m00_couplers_to_config_interconnect_ARREADY;
  wire m00_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m00_couplers_to_config_interconnect_AWADDR;
  wire m00_couplers_to_config_interconnect_AWREADY;
  wire m00_couplers_to_config_interconnect_AWVALID;
  wire m00_couplers_to_config_interconnect_BREADY;
  wire [1:0]m00_couplers_to_config_interconnect_BRESP;
  wire m00_couplers_to_config_interconnect_BVALID;
  wire [31:0]m00_couplers_to_config_interconnect_RDATA;
  wire m00_couplers_to_config_interconnect_RREADY;
  wire [1:0]m00_couplers_to_config_interconnect_RRESP;
  wire m00_couplers_to_config_interconnect_RVALID;
  wire [31:0]m00_couplers_to_config_interconnect_WDATA;
  wire m00_couplers_to_config_interconnect_WREADY;
  wire [3:0]m00_couplers_to_config_interconnect_WSTRB;
  wire m00_couplers_to_config_interconnect_WVALID;
  wire [39:0]m01_couplers_to_config_interconnect_ARADDR;
  wire m01_couplers_to_config_interconnect_ARREADY;
  wire m01_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m01_couplers_to_config_interconnect_AWADDR;
  wire m01_couplers_to_config_interconnect_AWREADY;
  wire m01_couplers_to_config_interconnect_AWVALID;
  wire m01_couplers_to_config_interconnect_BREADY;
  wire [1:0]m01_couplers_to_config_interconnect_BRESP;
  wire m01_couplers_to_config_interconnect_BVALID;
  wire [31:0]m01_couplers_to_config_interconnect_RDATA;
  wire m01_couplers_to_config_interconnect_RREADY;
  wire [1:0]m01_couplers_to_config_interconnect_RRESP;
  wire m01_couplers_to_config_interconnect_RVALID;
  wire [31:0]m01_couplers_to_config_interconnect_WDATA;
  wire m01_couplers_to_config_interconnect_WREADY;
  wire m01_couplers_to_config_interconnect_WVALID;
  wire [39:0]m02_couplers_to_config_interconnect_ARADDR;
  wire m02_couplers_to_config_interconnect_ARREADY;
  wire m02_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m02_couplers_to_config_interconnect_AWADDR;
  wire m02_couplers_to_config_interconnect_AWREADY;
  wire m02_couplers_to_config_interconnect_AWVALID;
  wire m02_couplers_to_config_interconnect_BREADY;
  wire [1:0]m02_couplers_to_config_interconnect_BRESP;
  wire m02_couplers_to_config_interconnect_BVALID;
  wire [31:0]m02_couplers_to_config_interconnect_RDATA;
  wire m02_couplers_to_config_interconnect_RREADY;
  wire [1:0]m02_couplers_to_config_interconnect_RRESP;
  wire m02_couplers_to_config_interconnect_RVALID;
  wire [31:0]m02_couplers_to_config_interconnect_WDATA;
  wire m02_couplers_to_config_interconnect_WREADY;
  wire [3:0]m02_couplers_to_config_interconnect_WSTRB;
  wire m02_couplers_to_config_interconnect_WVALID;
  wire [39:0]m03_couplers_to_config_interconnect_ARADDR;
  wire m03_couplers_to_config_interconnect_ARREADY;
  wire m03_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m03_couplers_to_config_interconnect_AWADDR;
  wire m03_couplers_to_config_interconnect_AWREADY;
  wire m03_couplers_to_config_interconnect_AWVALID;
  wire m03_couplers_to_config_interconnect_BREADY;
  wire [1:0]m03_couplers_to_config_interconnect_BRESP;
  wire m03_couplers_to_config_interconnect_BVALID;
  wire [31:0]m03_couplers_to_config_interconnect_RDATA;
  wire m03_couplers_to_config_interconnect_RREADY;
  wire [1:0]m03_couplers_to_config_interconnect_RRESP;
  wire m03_couplers_to_config_interconnect_RVALID;
  wire [31:0]m03_couplers_to_config_interconnect_WDATA;
  wire m03_couplers_to_config_interconnect_WREADY;
  wire [3:0]m03_couplers_to_config_interconnect_WSTRB;
  wire m03_couplers_to_config_interconnect_WVALID;
  wire [39:0]m04_couplers_to_config_interconnect_ARADDR;
  wire m04_couplers_to_config_interconnect_ARREADY;
  wire m04_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m04_couplers_to_config_interconnect_AWADDR;
  wire m04_couplers_to_config_interconnect_AWREADY;
  wire m04_couplers_to_config_interconnect_AWVALID;
  wire m04_couplers_to_config_interconnect_BREADY;
  wire [1:0]m04_couplers_to_config_interconnect_BRESP;
  wire m04_couplers_to_config_interconnect_BVALID;
  wire [31:0]m04_couplers_to_config_interconnect_RDATA;
  wire m04_couplers_to_config_interconnect_RREADY;
  wire [1:0]m04_couplers_to_config_interconnect_RRESP;
  wire m04_couplers_to_config_interconnect_RVALID;
  wire [31:0]m04_couplers_to_config_interconnect_WDATA;
  wire m04_couplers_to_config_interconnect_WREADY;
  wire m04_couplers_to_config_interconnect_WVALID;
  wire [39:0]m05_couplers_to_config_interconnect_ARADDR;
  wire m05_couplers_to_config_interconnect_ARREADY;
  wire m05_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m05_couplers_to_config_interconnect_AWADDR;
  wire m05_couplers_to_config_interconnect_AWREADY;
  wire m05_couplers_to_config_interconnect_AWVALID;
  wire m05_couplers_to_config_interconnect_BREADY;
  wire [1:0]m05_couplers_to_config_interconnect_BRESP;
  wire m05_couplers_to_config_interconnect_BVALID;
  wire [31:0]m05_couplers_to_config_interconnect_RDATA;
  wire m05_couplers_to_config_interconnect_RREADY;
  wire [1:0]m05_couplers_to_config_interconnect_RRESP;
  wire m05_couplers_to_config_interconnect_RVALID;
  wire [31:0]m05_couplers_to_config_interconnect_WDATA;
  wire m05_couplers_to_config_interconnect_WREADY;
  wire [3:0]m05_couplers_to_config_interconnect_WSTRB;
  wire m05_couplers_to_config_interconnect_WVALID;
  wire [39:0]m06_couplers_to_config_interconnect_ARADDR;
  wire m06_couplers_to_config_interconnect_ARREADY;
  wire m06_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m06_couplers_to_config_interconnect_AWADDR;
  wire m06_couplers_to_config_interconnect_AWREADY;
  wire m06_couplers_to_config_interconnect_AWVALID;
  wire m06_couplers_to_config_interconnect_BREADY;
  wire [1:0]m06_couplers_to_config_interconnect_BRESP;
  wire m06_couplers_to_config_interconnect_BVALID;
  wire [31:0]m06_couplers_to_config_interconnect_RDATA;
  wire m06_couplers_to_config_interconnect_RREADY;
  wire [1:0]m06_couplers_to_config_interconnect_RRESP;
  wire m06_couplers_to_config_interconnect_RVALID;
  wire [31:0]m06_couplers_to_config_interconnect_WDATA;
  wire m06_couplers_to_config_interconnect_WREADY;
  wire m06_couplers_to_config_interconnect_WVALID;
  wire [39:0]m07_couplers_to_config_interconnect_ARADDR;
  wire m07_couplers_to_config_interconnect_ARREADY;
  wire m07_couplers_to_config_interconnect_ARVALID;
  wire [39:0]m07_couplers_to_config_interconnect_AWADDR;
  wire m07_couplers_to_config_interconnect_AWREADY;
  wire m07_couplers_to_config_interconnect_AWVALID;
  wire m07_couplers_to_config_interconnect_BREADY;
  wire [1:0]m07_couplers_to_config_interconnect_BRESP;
  wire m07_couplers_to_config_interconnect_BVALID;
  wire [31:0]m07_couplers_to_config_interconnect_RDATA;
  wire m07_couplers_to_config_interconnect_RREADY;
  wire [1:0]m07_couplers_to_config_interconnect_RRESP;
  wire m07_couplers_to_config_interconnect_RVALID;
  wire [31:0]m07_couplers_to_config_interconnect_WDATA;
  wire m07_couplers_to_config_interconnect_WREADY;
  wire m07_couplers_to_config_interconnect_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [39:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [31:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[39:0] = m00_couplers_to_config_interconnect_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_config_interconnect_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_config_interconnect_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_config_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_config_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_config_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_config_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_config_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_config_interconnect_WVALID;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_config_interconnect_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_config_interconnect_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_config_interconnect_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_config_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_config_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_config_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_config_interconnect_WDATA;
  assign M01_AXI_wvalid = m01_couplers_to_config_interconnect_WVALID;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_config_interconnect_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_config_interconnect_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_config_interconnect_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_config_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_config_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_config_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_config_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_config_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_config_interconnect_WVALID;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_config_interconnect_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_config_interconnect_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_config_interconnect_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_config_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_config_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_config_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_config_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_config_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_config_interconnect_WVALID;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_config_interconnect_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_config_interconnect_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_config_interconnect_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_config_interconnect_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_config_interconnect_BREADY;
  assign M04_AXI_rready = m04_couplers_to_config_interconnect_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_config_interconnect_WDATA;
  assign M04_AXI_wvalid = m04_couplers_to_config_interconnect_WVALID;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_config_interconnect_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_config_interconnect_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_config_interconnect_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_config_interconnect_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_config_interconnect_BREADY;
  assign M05_AXI_rready = m05_couplers_to_config_interconnect_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_config_interconnect_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_config_interconnect_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_config_interconnect_WVALID;
  assign M06_AXI_araddr[39:0] = m06_couplers_to_config_interconnect_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_config_interconnect_ARVALID;
  assign M06_AXI_awaddr[39:0] = m06_couplers_to_config_interconnect_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_config_interconnect_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_config_interconnect_BREADY;
  assign M06_AXI_rready = m06_couplers_to_config_interconnect_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_config_interconnect_WDATA;
  assign M06_AXI_wvalid = m06_couplers_to_config_interconnect_WVALID;
  assign M07_AXI_araddr[39:0] = m07_couplers_to_config_interconnect_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_config_interconnect_ARVALID;
  assign M07_AXI_awaddr[39:0] = m07_couplers_to_config_interconnect_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_config_interconnect_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_config_interconnect_BREADY;
  assign M07_AXI_rready = m07_couplers_to_config_interconnect_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_config_interconnect_WDATA;
  assign M07_AXI_wvalid = m07_couplers_to_config_interconnect_WVALID;
  assign S00_AXI_arready = config_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = config_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = config_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = config_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = config_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = config_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = config_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = config_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = config_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = config_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = config_interconnect_to_s00_couplers_WREADY;
  assign S01_AXI_arready = config_interconnect_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = config_interconnect_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[15:0] = config_interconnect_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = config_interconnect_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = config_interconnect_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[127:0] = config_interconnect_to_s01_couplers_RDATA;
  assign S01_AXI_rid[15:0] = config_interconnect_to_s01_couplers_RID;
  assign S01_AXI_rlast = config_interconnect_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = config_interconnect_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = config_interconnect_to_s01_couplers_RVALID;
  assign S01_AXI_wready = config_interconnect_to_s01_couplers_WREADY;
  assign config_interconnect_ACLK_net = ACLK;
  assign config_interconnect_ARESETN_net = ARESETN;
  assign config_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign config_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign config_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign config_interconnect_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign config_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign config_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign config_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign config_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign config_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign config_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign config_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign config_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign config_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign config_interconnect_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign config_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign config_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign config_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign config_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign config_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign config_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign config_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign config_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign config_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign config_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign config_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign config_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign config_interconnect_to_s01_couplers_ARADDR = S01_AXI_araddr[39:0];
  assign config_interconnect_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign config_interconnect_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign config_interconnect_to_s01_couplers_ARID = S01_AXI_arid[15:0];
  assign config_interconnect_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign config_interconnect_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign config_interconnect_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign config_interconnect_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign config_interconnect_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign config_interconnect_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign config_interconnect_to_s01_couplers_AWADDR = S01_AXI_awaddr[39:0];
  assign config_interconnect_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign config_interconnect_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign config_interconnect_to_s01_couplers_AWID = S01_AXI_awid[15:0];
  assign config_interconnect_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign config_interconnect_to_s01_couplers_AWLOCK = S01_AXI_awlock;
  assign config_interconnect_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign config_interconnect_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign config_interconnect_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign config_interconnect_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign config_interconnect_to_s01_couplers_BREADY = S01_AXI_bready;
  assign config_interconnect_to_s01_couplers_RREADY = S01_AXI_rready;
  assign config_interconnect_to_s01_couplers_WDATA = S01_AXI_wdata[127:0];
  assign config_interconnect_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign config_interconnect_to_s01_couplers_WSTRB = S01_AXI_wstrb[15:0];
  assign config_interconnect_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_config_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_config_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_config_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_config_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_config_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_config_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_config_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_config_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_config_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_config_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_config_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_config_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_config_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_config_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_config_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_config_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_config_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_config_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_config_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_config_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_config_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_config_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_config_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_config_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_config_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_config_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_config_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_config_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_config_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_config_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_config_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_config_interconnect_WREADY = M03_AXI_wready;
  assign m04_couplers_to_config_interconnect_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_config_interconnect_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_config_interconnect_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_config_interconnect_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_config_interconnect_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_config_interconnect_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_config_interconnect_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_config_interconnect_WREADY = M04_AXI_wready;
  assign m05_couplers_to_config_interconnect_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_config_interconnect_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_config_interconnect_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_config_interconnect_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_config_interconnect_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_config_interconnect_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_config_interconnect_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_config_interconnect_WREADY = M05_AXI_wready;
  assign m06_couplers_to_config_interconnect_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_config_interconnect_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_config_interconnect_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_config_interconnect_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_config_interconnect_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_config_interconnect_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_config_interconnect_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_config_interconnect_WREADY = M06_AXI_wready;
  assign m07_couplers_to_config_interconnect_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_config_interconnect_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_config_interconnect_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_config_interconnect_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_config_interconnect_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_config_interconnect_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_config_interconnect_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_config_interconnect_WREADY = M07_AXI_wready;
  m00_couplers_imp_4EDXOS m00_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_config_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_config_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_158WS9K m01_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m01_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m01_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_config_interconnect_WREADY),
        .M_AXI_wvalid(m01_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1QSH8O5 m02_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m02_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m02_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_config_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_config_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_XN2KTT m03_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m03_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m03_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_config_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_config_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_4B4TB3 m04_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m04_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m04_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m04_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m04_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m04_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m04_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m04_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m04_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m04_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m04_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m04_couplers_to_config_interconnect_WREADY),
        .M_AXI_wvalid(m04_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_15BUNPN m05_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m05_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m05_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m05_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m05_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m05_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m05_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m05_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m05_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m05_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m05_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m05_couplers_to_config_interconnect_WREADY),
        .M_AXI_wstrb(m05_couplers_to_config_interconnect_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1QQ4FXY m06_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m06_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m06_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m06_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m06_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m06_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m06_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m06_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m06_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m06_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m06_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m06_couplers_to_config_interconnect_WREADY),
        .M_AXI_wvalid(m06_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_XOHOBM m07_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_config_interconnect_ARADDR),
        .M_AXI_arready(m07_couplers_to_config_interconnect_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_config_interconnect_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_config_interconnect_AWADDR),
        .M_AXI_awready(m07_couplers_to_config_interconnect_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_config_interconnect_AWVALID),
        .M_AXI_bready(m07_couplers_to_config_interconnect_BREADY),
        .M_AXI_bresp(m07_couplers_to_config_interconnect_BRESP),
        .M_AXI_bvalid(m07_couplers_to_config_interconnect_BVALID),
        .M_AXI_rdata(m07_couplers_to_config_interconnect_RDATA),
        .M_AXI_rready(m07_couplers_to_config_interconnect_RREADY),
        .M_AXI_rresp(m07_couplers_to_config_interconnect_RRESP),
        .M_AXI_rvalid(m07_couplers_to_config_interconnect_RVALID),
        .M_AXI_wdata(m07_couplers_to_config_interconnect_WDATA),
        .M_AXI_wready(m07_couplers_to_config_interconnect_WREADY),
        .M_AXI_wvalid(m07_couplers_to_config_interconnect_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_4GXMSZ s00_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(config_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(config_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(config_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(config_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(config_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(config_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(config_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(config_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(config_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arsize(config_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(config_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(config_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(config_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(config_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(config_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(config_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(config_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(config_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(config_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(config_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awsize(config_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(config_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(config_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(config_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(config_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(config_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(config_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(config_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(config_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(config_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(config_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(config_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(config_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(config_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(config_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(config_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(config_interconnect_to_s00_couplers_WVALID));
  s01_couplers_imp_12OS5LZ s01_couplers
       (.M_ACLK(config_interconnect_ACLK_net),
        .M_ARESETN(config_interconnect_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(config_interconnect_ACLK_net),
        .S_ARESETN(config_interconnect_ARESETN_net),
        .S_AXI_araddr(config_interconnect_to_s01_couplers_ARADDR),
        .S_AXI_arburst(config_interconnect_to_s01_couplers_ARBURST),
        .S_AXI_arcache(config_interconnect_to_s01_couplers_ARCACHE),
        .S_AXI_arid(config_interconnect_to_s01_couplers_ARID),
        .S_AXI_arlen(config_interconnect_to_s01_couplers_ARLEN),
        .S_AXI_arlock(config_interconnect_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(config_interconnect_to_s01_couplers_ARPROT),
        .S_AXI_arqos(config_interconnect_to_s01_couplers_ARQOS),
        .S_AXI_arready(config_interconnect_to_s01_couplers_ARREADY),
        .S_AXI_arsize(config_interconnect_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(config_interconnect_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(config_interconnect_to_s01_couplers_AWADDR),
        .S_AXI_awburst(config_interconnect_to_s01_couplers_AWBURST),
        .S_AXI_awcache(config_interconnect_to_s01_couplers_AWCACHE),
        .S_AXI_awid(config_interconnect_to_s01_couplers_AWID),
        .S_AXI_awlen(config_interconnect_to_s01_couplers_AWLEN),
        .S_AXI_awlock(config_interconnect_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(config_interconnect_to_s01_couplers_AWPROT),
        .S_AXI_awqos(config_interconnect_to_s01_couplers_AWQOS),
        .S_AXI_awready(config_interconnect_to_s01_couplers_AWREADY),
        .S_AXI_awsize(config_interconnect_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(config_interconnect_to_s01_couplers_AWVALID),
        .S_AXI_bid(config_interconnect_to_s01_couplers_BID),
        .S_AXI_bready(config_interconnect_to_s01_couplers_BREADY),
        .S_AXI_bresp(config_interconnect_to_s01_couplers_BRESP),
        .S_AXI_bvalid(config_interconnect_to_s01_couplers_BVALID),
        .S_AXI_rdata(config_interconnect_to_s01_couplers_RDATA),
        .S_AXI_rid(config_interconnect_to_s01_couplers_RID),
        .S_AXI_rlast(config_interconnect_to_s01_couplers_RLAST),
        .S_AXI_rready(config_interconnect_to_s01_couplers_RREADY),
        .S_AXI_rresp(config_interconnect_to_s01_couplers_RRESP),
        .S_AXI_rvalid(config_interconnect_to_s01_couplers_RVALID),
        .S_AXI_wdata(config_interconnect_to_s01_couplers_WDATA),
        .S_AXI_wlast(config_interconnect_to_s01_couplers_WLAST),
        .S_AXI_wready(config_interconnect_to_s01_couplers_WREADY),
        .S_AXI_wstrb(config_interconnect_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(config_interconnect_to_s01_couplers_WVALID));
  fft2x_mmult2x_xbar_0 xbar
       (.aclk(config_interconnect_ACLK_net),
        .aresetn(config_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[19:16],xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[7:4],xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_4EDXOS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_158WS9K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1QSH8O5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_XN2KTT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_4B4TB3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_15BUNPN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [39:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_1QQ4FXY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [39:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_XOHOBM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [39:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_4GXMSZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [39:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [15:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [127:0]s00_couplers_to_auto_ds_RDATA;
  wire [15:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [127:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [15:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  fft2x_mmult2x_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  fft2x_mmult2x_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_12OS5LZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s01_couplers_ARADDR;
  wire [2:0]auto_pc_to_s01_couplers_ARPROT;
  wire auto_pc_to_s01_couplers_ARREADY;
  wire auto_pc_to_s01_couplers_ARVALID;
  wire [39:0]auto_pc_to_s01_couplers_AWADDR;
  wire [2:0]auto_pc_to_s01_couplers_AWPROT;
  wire auto_pc_to_s01_couplers_AWREADY;
  wire auto_pc_to_s01_couplers_AWVALID;
  wire auto_pc_to_s01_couplers_BREADY;
  wire [1:0]auto_pc_to_s01_couplers_BRESP;
  wire auto_pc_to_s01_couplers_BVALID;
  wire [31:0]auto_pc_to_s01_couplers_RDATA;
  wire auto_pc_to_s01_couplers_RREADY;
  wire [1:0]auto_pc_to_s01_couplers_RRESP;
  wire auto_pc_to_s01_couplers_RVALID;
  wire [31:0]auto_pc_to_s01_couplers_WDATA;
  wire auto_pc_to_s01_couplers_WREADY;
  wire [3:0]auto_pc_to_s01_couplers_WSTRB;
  wire auto_pc_to_s01_couplers_WVALID;
  wire [39:0]s01_couplers_to_auto_ds_ARADDR;
  wire [1:0]s01_couplers_to_auto_ds_ARBURST;
  wire [3:0]s01_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s01_couplers_to_auto_ds_ARID;
  wire [7:0]s01_couplers_to_auto_ds_ARLEN;
  wire s01_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s01_couplers_to_auto_ds_ARPROT;
  wire [3:0]s01_couplers_to_auto_ds_ARQOS;
  wire s01_couplers_to_auto_ds_ARREADY;
  wire [2:0]s01_couplers_to_auto_ds_ARSIZE;
  wire s01_couplers_to_auto_ds_ARVALID;
  wire [39:0]s01_couplers_to_auto_ds_AWADDR;
  wire [1:0]s01_couplers_to_auto_ds_AWBURST;
  wire [3:0]s01_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s01_couplers_to_auto_ds_AWID;
  wire [7:0]s01_couplers_to_auto_ds_AWLEN;
  wire s01_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s01_couplers_to_auto_ds_AWPROT;
  wire [3:0]s01_couplers_to_auto_ds_AWQOS;
  wire s01_couplers_to_auto_ds_AWREADY;
  wire [2:0]s01_couplers_to_auto_ds_AWSIZE;
  wire s01_couplers_to_auto_ds_AWVALID;
  wire [15:0]s01_couplers_to_auto_ds_BID;
  wire s01_couplers_to_auto_ds_BREADY;
  wire [1:0]s01_couplers_to_auto_ds_BRESP;
  wire s01_couplers_to_auto_ds_BVALID;
  wire [127:0]s01_couplers_to_auto_ds_RDATA;
  wire [15:0]s01_couplers_to_auto_ds_RID;
  wire s01_couplers_to_auto_ds_RLAST;
  wire s01_couplers_to_auto_ds_RREADY;
  wire [1:0]s01_couplers_to_auto_ds_RRESP;
  wire s01_couplers_to_auto_ds_RVALID;
  wire [127:0]s01_couplers_to_auto_ds_WDATA;
  wire s01_couplers_to_auto_ds_WLAST;
  wire s01_couplers_to_auto_ds_WREADY;
  wire [15:0]s01_couplers_to_auto_ds_WSTRB;
  wire s01_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s01_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s01_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s01_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s01_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s01_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_ds_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s01_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s01_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_ds_AWLOCK = S_AXI_awlock;
  assign s01_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s01_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s01_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  fft2x_mmult2x_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s01_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s01_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_ds_BID),
        .s_axi_bready(s01_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s01_couplers_to_auto_ds_RID),
        .s_axi_rlast(s01_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s01_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s01_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_ds_WVALID));
  fft2x_mmult2x_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule
