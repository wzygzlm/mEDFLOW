// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xeventstreamtoconstencntframestream.h"

extern XEventstreamtoconstencntframestream_Config XEventstreamtoconstencntframestream_ConfigTable[];

XEventstreamtoconstencntframestream_Config *XEventstreamtoconstencntframestream_LookupConfig(u16 DeviceId) {
	XEventstreamtoconstencntframestream_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEVENTSTREAMTOCONSTENCNTFRAMESTREAM_NUM_INSTANCES; Index++) {
		if (XEventstreamtoconstencntframestream_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEventstreamtoconstencntframestream_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEventstreamtoconstencntframestream_Initialize(XEventstreamtoconstencntframestream *InstancePtr, u16 DeviceId) {
	XEventstreamtoconstencntframestream_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEventstreamtoconstencntframestream_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEventstreamtoconstencntframestream_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

