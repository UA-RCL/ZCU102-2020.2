open_project -reset ZIP_prj
set_top ZIP_HLS_accel
add_files zip.h
add_files zip.cpp
add_files zip_axiwrapper.cpp
add_files -tb zip_tb.cpp
open_solution "zip"
# -flow_target vivado
set_part {xczu9eg-ffvb1156-2-e}
create_clock -period 3.333 -name default
#source "./ZIP/zip/directives.tcl"
# csim_design
csynth_design
# cosim_design
export_design -format ip_catalog -description "ZIP" -display_name "ZIP"
