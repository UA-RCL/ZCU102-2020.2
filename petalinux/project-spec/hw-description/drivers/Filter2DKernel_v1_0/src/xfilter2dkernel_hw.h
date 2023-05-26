// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// config
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - enable ap_done interrupt (Read/Write)
//         bit 1  - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - ap_done (COR/TOW)
//         bit 1  - ap_ready (COR/TOW)
//         others - reserved
// 0x010 : Data signal of factor
//         bit 31~0 - factor[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of bias
//         bit 15~0 - bias[15:0] (Read/Write)
//         others   - reserved
// 0x01c : reserved
// 0x020 : Data signal of width
//         bit 15~0 - width[15:0] (Read/Write)
//         others   - reserved
// 0x024 : reserved
// 0x028 : Data signal of height
//         bit 15~0 - height[15:0] (Read/Write)
//         others   - reserved
// 0x02c : reserved
// 0x030 : Data signal of stride
//         bit 15~0 - stride[15:0] (Read/Write)
//         others   - reserved
// 0x034 : reserved
// 0x200 ~
// 0x3ff : Memory 'coeffs' (121 * 32b)
//         Word n : bit [31:0] - coeffs[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL     0x000
#define XFILTER2DKERNEL_CONFIG_ADDR_GIE         0x004
#define XFILTER2DKERNEL_CONFIG_ADDR_IER         0x008
#define XFILTER2DKERNEL_CONFIG_ADDR_ISR         0x00c
#define XFILTER2DKERNEL_CONFIG_ADDR_FACTOR_DATA 0x010
#define XFILTER2DKERNEL_CONFIG_BITS_FACTOR_DATA 32
#define XFILTER2DKERNEL_CONFIG_ADDR_BIAS_DATA   0x018
#define XFILTER2DKERNEL_CONFIG_BITS_BIAS_DATA   16
#define XFILTER2DKERNEL_CONFIG_ADDR_WIDTH_DATA  0x020
#define XFILTER2DKERNEL_CONFIG_BITS_WIDTH_DATA  16
#define XFILTER2DKERNEL_CONFIG_ADDR_HEIGHT_DATA 0x028
#define XFILTER2DKERNEL_CONFIG_BITS_HEIGHT_DATA 16
#define XFILTER2DKERNEL_CONFIG_ADDR_STRIDE_DATA 0x030
#define XFILTER2DKERNEL_CONFIG_BITS_STRIDE_DATA 16
#define XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE 0x200
#define XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH 0x3ff
#define XFILTER2DKERNEL_CONFIG_WIDTH_COEFFS     32
#define XFILTER2DKERNEL_CONFIG_DEPTH_COEFFS     121

