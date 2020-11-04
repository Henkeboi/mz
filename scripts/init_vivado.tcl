# Create empty Vivado project with correct part:
create_project ZynqExample ../vivado -part xc7z010clg225-2
set_property target_language VHDL [current_project]

# Add block design:
source ../hw/block_design.tcl

# Add constraints to project:
add_files -fileset constrs_1 ../hw/constraints.xdc
set_property target_constrs_file ../hw/constraints.xdc [current_fileset -constrset]

# Create HDL wrapper:
make_wrapper -files [get_files ../hw/system/system.bd] -top

# Add the HDL wrapper:
add_files -norecurse ../hw/system/hdl/system_wrapper.vhd
