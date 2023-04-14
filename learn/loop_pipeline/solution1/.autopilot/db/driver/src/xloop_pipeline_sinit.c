// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xloop_pipeline.h"

extern XLoop_pipeline_Config XLoop_pipeline_ConfigTable[];

XLoop_pipeline_Config *XLoop_pipeline_LookupConfig(u16 DeviceId) {
	XLoop_pipeline_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLOOP_PIPELINE_NUM_INSTANCES; Index++) {
		if (XLoop_pipeline_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLoop_pipeline_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLoop_pipeline_Initialize(XLoop_pipeline *InstancePtr, u16 DeviceId) {
	XLoop_pipeline_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLoop_pipeline_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLoop_pipeline_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

