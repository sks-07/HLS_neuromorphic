// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xloop_pipeline.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLoop_pipeline_CfgInitialize(XLoop_pipeline *InstancePtr, XLoop_pipeline_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLoop_pipeline_Start(XLoop_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLoop_pipeline_IsDone(XLoop_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLoop_pipeline_IsIdle(XLoop_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLoop_pipeline_IsReady(XLoop_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLoop_pipeline_Continue(XLoop_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XLoop_pipeline_EnableAutoRestart(XLoop_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLoop_pipeline_DisableAutoRestart(XLoop_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XLoop_pipeline_Get_return(XLoop_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XLoop_pipeline_Set_A(XLoop_pipeline *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_A_DATA, (u32)(Data));
    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XLoop_pipeline_Get_A(XLoop_pipeline *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_A_DATA);
    Data += (u64)XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XLoop_pipeline_InterruptGlobalEnable(XLoop_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_GIE, 1);
}

void XLoop_pipeline_InterruptGlobalDisable(XLoop_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_GIE, 0);
}

void XLoop_pipeline_InterruptEnable(XLoop_pipeline *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_IER);
    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_IER, Register | Mask);
}

void XLoop_pipeline_InterruptDisable(XLoop_pipeline *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_IER);
    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLoop_pipeline_InterruptClear(XLoop_pipeline *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLoop_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_ISR, Mask);
}

u32 XLoop_pipeline_InterruptGetEnabled(XLoop_pipeline *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_IER);
}

u32 XLoop_pipeline_InterruptGetStatus(XLoop_pipeline *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLoop_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XLOOP_PIPELINE_CONTROL_ADDR_ISR);
}

