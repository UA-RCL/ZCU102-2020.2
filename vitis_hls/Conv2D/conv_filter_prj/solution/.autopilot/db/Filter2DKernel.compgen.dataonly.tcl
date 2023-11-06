# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_config {
factor { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
bias { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
stride { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
coeffs { 
	dir I
	width 32
	depth 121
	mode ap_memory
	offset 512
	offset_end 1023
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict config $port_config


