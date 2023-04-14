############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir_filter
set_top fir
add_files ../ug871-design-files/Introduction/lab1/fir.c
add_files -tb ../ug871-design-files/Introduction/lab1/fir_test.c
add_files -tb ../ug871-design-files/Introduction/lab1/out.gold.dat
open_solution "solution1" -flow_target vitis
set_part {-}
create_clock -period 10 -name default
#source "./fir_filter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
