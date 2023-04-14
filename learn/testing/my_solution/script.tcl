############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project testing
add_files ../main_file.cpp
add_files -tb ../main_test.cpp
open_solution "my_solution" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
source "./testing/my_solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
