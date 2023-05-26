// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfilter2dkernel.h"

extern XFilter2dkernel_Config XFilter2dkernel_ConfigTable[];

XFilter2dkernel_Config *XFilter2dkernel_LookupConfig(u16 DeviceId) {
	XFilter2dkernel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFILTER2DKERNEL_NUM_INSTANCES; Index++) {
		if (XFilter2dkernel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFilter2dkernel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilter2dkernel_Initialize(XFilter2dkernel *InstancePtr, u16 DeviceId) {
	XFilter2dkernel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilter2dkernel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilter2dkernel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

