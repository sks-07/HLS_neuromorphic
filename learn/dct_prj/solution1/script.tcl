############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dct_prj
set_top dct
add_files C:/Users/ASUS/git/Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/dct.cpp
add_files -tb C:/Users/ASUS/git/Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/dct_test.cpp
add_files -tb C:/Users/ASUS/git/Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/in.dat
add_files -tb C:/Users/ASUS/git/Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/out.golden.dat
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
#source "./dct_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
