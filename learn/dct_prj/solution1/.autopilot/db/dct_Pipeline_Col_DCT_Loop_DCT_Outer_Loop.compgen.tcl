# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name col_inbuf \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename col_inbuf \
    op interface \
    ports { col_inbuf_address0 { O 6 vector } col_inbuf_ce0 { O 1 bit } col_inbuf_q0 { I 16 vector } col_inbuf_address1 { O 6 vector } col_inbuf_ce1 { O 1 bit } col_inbuf_q1 { I 16 vector } col_inbuf_address2 { O 6 vector } col_inbuf_ce2 { O 1 bit } col_inbuf_q2 { I 16 vector } col_inbuf_address3 { O 6 vector } col_inbuf_ce3 { O 1 bit } col_inbuf_q3 { I 16 vector } col_inbuf_address4 { O 6 vector } col_inbuf_ce4 { O 1 bit } col_inbuf_q4 { I 16 vector } col_inbuf_address5 { O 6 vector } col_inbuf_ce5 { O 1 bit } col_inbuf_q5 { I 16 vector } col_inbuf_address6 { O 6 vector } col_inbuf_ce6 { O 1 bit } col_inbuf_q6 { I 16 vector } col_inbuf_address7 { O 6 vector } col_inbuf_ce7 { O 1 bit } col_inbuf_q7 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'col_inbuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name col_outbuf \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename col_outbuf \
    op interface \
    ports { col_outbuf_address0 { O 6 vector } col_outbuf_ce0 { O 1 bit } col_outbuf_we0 { O 1 bit } col_outbuf_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'col_outbuf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name dct_coeff_table_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_0 \
    op interface \
    ports { dct_coeff_table_0_address0 { O 3 vector } dct_coeff_table_0_ce0 { O 1 bit } dct_coeff_table_0_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name dct_coeff_table_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_1 \
    op interface \
    ports { dct_coeff_table_1_address0 { O 3 vector } dct_coeff_table_1_ce0 { O 1 bit } dct_coeff_table_1_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name dct_coeff_table_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_2 \
    op interface \
    ports { dct_coeff_table_2_address0 { O 3 vector } dct_coeff_table_2_ce0 { O 1 bit } dct_coeff_table_2_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name dct_coeff_table_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_3 \
    op interface \
    ports { dct_coeff_table_3_address0 { O 3 vector } dct_coeff_table_3_ce0 { O 1 bit } dct_coeff_table_3_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name dct_coeff_table_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_4 \
    op interface \
    ports { dct_coeff_table_4_address0 { O 3 vector } dct_coeff_table_4_ce0 { O 1 bit } dct_coeff_table_4_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name dct_coeff_table_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_5 \
    op interface \
    ports { dct_coeff_table_5_address0 { O 3 vector } dct_coeff_table_5_ce0 { O 1 bit } dct_coeff_table_5_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name dct_coeff_table_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_6 \
    op interface \
    ports { dct_coeff_table_6_address0 { O 3 vector } dct_coeff_table_6_ce0 { O 1 bit } dct_coeff_table_6_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name dct_coeff_table_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dct_coeff_table_7 \
    op interface \
    ports { dct_coeff_table_7_address0 { O 3 vector } dct_coeff_table_7_ce0 { O 1 bit } dct_coeff_table_7_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dct_coeff_table_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName dct_flow_control_loop_pipe_sequential_init_U
set CompName dct_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix dct_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


