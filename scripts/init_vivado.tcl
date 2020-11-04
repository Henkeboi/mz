# Create empty Vivado project with correct part:
create_project ams ../vivado -part xc7z010clg400-1
set_property target_language VHDL [current_project]

# Add block design:
source ../hw/block_design.tcl
regenerate_bd_layout

# Init PS
source ../hw/ps7_init.tcl

# Add constraints to project:
add_files -fileset constrs_1 ../hw/constraints.xdc
set_property target_constrs_file ../hw/constraints.xdc [current_fileset -constrset]
