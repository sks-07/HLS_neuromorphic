# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
ap_return { 
	dir o
	width 20
	depth 1
	mode ap_ctrl_chain
	offset 16
	offset_end 0
}
A { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


