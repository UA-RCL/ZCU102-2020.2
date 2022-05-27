open_project "mmult" -reset
set_top HLS_accel

add_files src/matrix_multiply_axiwrapper.cpp
add_files src/matrix_multiply.cpp
add_files -tb src/matrix_multiply_tb.cpp 

open_solution "soln" -reset -flow_target vivado

set_part {xczu9eg-ffvb1156-2-e}

create_clock -period 3.333 -name default

csynth_design

export_design -format ip_catalog \
              -vendor "UA-RCL" \
              -library "UA-RCL-Lib" \
              -ipname "mmult_2020" \
              -description "A complex matrix multiply accelerator for 4x64 * 64x4 operations" \
              -display_name "mmult_2020" \
              -output ./mmult_export
