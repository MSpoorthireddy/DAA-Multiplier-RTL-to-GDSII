# Set library search path
set_db init_lib_search_path /home/install/FOUNDRY/digital/90nm/dig/lib/

# Specify your technology library
set_db library slow.lib

# Read in your DAA multiplier RTL
read_hdl {./multiplier.v}

# Elaborate the design
elaborate

# Read SDC constraints
read_sdc ./constraints.sdc

# Set synthesis effort (optional but recommended)
set_db syn_generic_effort medium
set_db syn_map_effort  medium
set_db syn_opt_effort  medium

# Run synthesis stages
syn_generic
syn_map
syn_opt

# Write out synthesized netlist and constraints
write_hdl > multiplier_netlist.v
write_sdc  > multiplier_output.sdc

# Generate reports
report timing > multiplier_timing.rpt
report power > multiplier_power.rpt
report area  > multiplier_area.rpt
report gates > multiplier_gates.rpt

# Optionally open GUI for schematic viewing
gui_show
