// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfilter2dkernel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFilter2dkernel_CfgInitialize(XFilter2dkernel *InstancePtr, XFilter2dkernel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Config_BaseAddress = ConfigPtr->Config_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFilter2dkernel_Start(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL) & 0x80;
    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFilter2dkernel_IsDone(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFilter2dkernel_IsIdle(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFilter2dkernel_IsReady(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFilter2dkernel_EnableAutoRestart(XFilter2dkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL, 0x80);
}

void XFilter2dkernel_DisableAutoRestart(XFilter2dkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_AP_CTRL, 0);
}

void XFilter2dkernel_Set_factor(XFilter2dkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_FACTOR_DATA, Data);
}

u32 XFilter2dkernel_Get_factor(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_FACTOR_DATA);
    return Data;
}

void XFilter2dkernel_Set_bias(XFilter2dkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_BIAS_DATA, Data);
}

u32 XFilter2dkernel_Get_bias(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_BIAS_DATA);
    return Data;
}

void XFilter2dkernel_Set_width(XFilter2dkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_WIDTH_DATA, Data);
}

u32 XFilter2dkernel_Get_width(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_WIDTH_DATA);
    return Data;
}

void XFilter2dkernel_Set_height(XFilter2dkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_HEIGHT_DATA, Data);
}

u32 XFilter2dkernel_Get_height(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_HEIGHT_DATA);
    return Data;
}

void XFilter2dkernel_Set_stride(XFilter2dkernel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_STRIDE_DATA, Data);
}

u32 XFilter2dkernel_Get_stride(XFilter2dkernel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_STRIDE_DATA);
    return Data;
}

u32 XFilter2dkernel_Get_coeffs_BaseAddress(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Config_BaseAddress + XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE);
}

u32 XFilter2dkernel_Get_coeffs_HighAddress(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Config_BaseAddress + XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH);
}

u32 XFilter2dkernel_Get_coeffs_TotalBytes(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH - XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + 1);
}

u32 XFilter2dkernel_Get_coeffs_BitWidth(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFILTER2DKERNEL_CONFIG_WIDTH_COEFFS;
}

u32 XFilter2dkernel_Get_coeffs_Depth(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFILTER2DKERNEL_CONFIG_DEPTH_COEFFS;
}

u32 XFilter2dkernel_Write_coeffs_Words(XFilter2dkernel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH - XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Config_BaseAddress + XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XFilter2dkernel_Read_coeffs_Words(XFilter2dkernel *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH - XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Config_BaseAddress + XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XFilter2dkernel_Write_coeffs_Bytes(XFilter2dkernel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH - XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Config_BaseAddress + XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XFilter2dkernel_Read_coeffs_Bytes(XFilter2dkernel *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_HIGH - XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Config_BaseAddress + XFILTER2DKERNEL_CONFIG_ADDR_COEFFS_BASE + offset + i);
    }
    return length;
}

void XFilter2dkernel_InterruptGlobalEnable(XFilter2dkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_GIE, 1);
}

void XFilter2dkernel_InterruptGlobalDisable(XFilter2dkernel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_GIE, 0);
}

void XFilter2dkernel_InterruptEnable(XFilter2dkernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_IER);
    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_IER, Register | Mask);
}

void XFilter2dkernel_InterruptDisable(XFilter2dkernel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_IER);
    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_IER, Register & (~Mask));
}

void XFilter2dkernel_InterruptClear(XFilter2dkernel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter2dkernel_WriteReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_ISR, Mask);
}

u32 XFilter2dkernel_InterruptGetEnabled(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_IER);
}

u32 XFilter2dkernel_InterruptGetStatus(XFilter2dkernel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter2dkernel_ReadReg(InstancePtr->Config_BaseAddress, XFILTER2DKERNEL_CONFIG_ADDR_ISR);
}

