############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project loop_pipeline
set_top loop_pipeline
add_files ../Vitis-HLS-Introductory-Examples/Pipelining/Loops/pipelined_loop/loop_pipeline.cpp
add_files -tb ../Vitis-HLS-Introductory-Examples/Pipelining/Loops/pipelined_loop/result.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../Vitis-HLS-Introductory-Examples/Pipelining/Loops/pipelined_loop/loop_pipeline_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
source "./loop_pipeline/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
