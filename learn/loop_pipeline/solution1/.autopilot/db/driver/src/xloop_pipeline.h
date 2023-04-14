// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLOOP_PIPELINE_H
#define XLOOP_PIPELINE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xloop_pipeline_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XLoop_pipeline_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLoop_pipeline;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLoop_pipeline_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLoop_pipeline_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLoop_pipeline_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLoop_pipeline_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLoop_pipeline_Initialize(XLoop_pipeline *InstancePtr, u16 DeviceId);
XLoop_pipeline_Config* XLoop_pipeline_LookupConfig(u16 DeviceId);
int XLoop_pipeline_CfgInitialize(XLoop_pipeline *InstancePtr, XLoop_pipeline_Config *ConfigPtr);
#else
int XLoop_pipeline_Initialize(XLoop_pipeline *InstancePtr, const char* InstanceName);
int XLoop_pipeline_Release(XLoop_pipeline *InstancePtr);
#endif

void XLoop_pipeline_Start(XLoop_pipeline *InstancePtr);
u32 XLoop_pipeline_IsDone(XLoop_pipeline *InstancePtr);
u32 XLoop_pipeline_IsIdle(XLoop_pipeline *InstancePtr);
u32 XLoop_pipeline_IsReady(XLoop_pipeline *InstancePtr);
void XLoop_pipeline_Continue(XLoop_pipeline *InstancePtr);
void XLoop_pipeline_EnableAutoRestart(XLoop_pipeline *InstancePtr);
void XLoop_pipeline_DisableAutoRestart(XLoop_pipeline *InstancePtr);
u32 XLoop_pipeline_Get_return(XLoop_pipeline *InstancePtr);

void XLoop_pipeline_Set_A(XLoop_pipeline *InstancePtr, u64 Data);
u64 XLoop_pipeline_Get_A(XLoop_pipeline *InstancePtr);

void XLoop_pipeline_InterruptGlobalEnable(XLoop_pipeline *InstancePtr);
void XLoop_pipeline_InterruptGlobalDisable(XLoop_pipeline *InstancePtr);
void XLoop_pipeline_InterruptEnable(XLoop_pipeline *InstancePtr, u32 Mask);
void XLoop_pipeline_InterruptDisable(XLoop_pipeline *InstancePtr, u32 Mask);
void XLoop_pipeline_InterruptClear(XLoop_pipeline *InstancePtr, u32 Mask);
u32 XLoop_pipeline_InterruptGetEnabled(XLoop_pipeline *InstancePtr);
u32 XLoop_pipeline_InterruptGetStatus(XLoop_pipeline *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
