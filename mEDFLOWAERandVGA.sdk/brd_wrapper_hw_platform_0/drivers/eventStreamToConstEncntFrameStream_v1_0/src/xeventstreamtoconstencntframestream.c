// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xeventstreamtoconstencntframestream.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEventstreamtoconstencntframestream_CfgInitialize(XEventstreamtoconstencntframestream *InstancePtr, XEventstreamtoconstencntframestream_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Config_BaseAddress = ConfigPtr->Config_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEventstreamtoconstencntframestream_Set_configRegs_V(XEventstreamtoconstencntframestream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEventstreamtoconstencntframestream_WriteReg(InstancePtr->Config_BaseAddress, XEVENTSTREAMTOCONSTENCNTFRAMESTREAM_CONFIG_ADDR_CONFIGREGS_V_DATA, Data);
}

u32 XEventstreamtoconstencntframestream_Get_configRegs_V(XEventstreamtoconstencntframestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEventstreamtoconstencntframestream_ReadReg(InstancePtr->Config_BaseAddress, XEVENTSTREAMTOCONSTENCNTFRAMESTREAM_CONFIG_ADDR_CONFIGREGS_V_DATA);
    return Data;
}

void XEventstreamtoconstencntframestream_Set_ctrl_V(XEventstreamtoconstencntframestream *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEventstreamtoconstencntframestream_WriteReg(InstancePtr->Config_BaseAddress, XEVENTSTREAMTOCONSTENCNTFRAMESTREAM_CONFIG_ADDR_CTRL_V_DATA, Data);
}

u32 XEventstreamtoconstencntframestream_Get_ctrl_V(XEventstreamtoconstencntframestream *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEventstreamtoconstencntframestream_ReadReg(InstancePtr->Config_BaseAddress, XEVENTSTREAMTOCONSTENCNTFRAMESTREAM_CONFIG_ADDR_CTRL_V_DATA);
    return Data;
}

