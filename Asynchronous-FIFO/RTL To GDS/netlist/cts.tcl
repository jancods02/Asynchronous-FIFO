# Add routing rules
add_ndr \
  -width   {Metal1 0.12 Metal2 0.14 Metal3 0.14 Metal4 0.14 Metal5 0.14 Metal6 0.14 Metal7 0.14 Metal8 0.14 Metal9 0.14} \
  -spacing {Metal1 0.12 Metal2 0.14 Metal3 0.14 Metal4 0.14 Metal5 0.14 Metal6 0.14 Metal7 0.14 Metal8 0.14 Metal9 0.14} \
  -name M2W2

# CTS routing layers
set_ccopt_property route_type clkroute -net_type trunk \
  -bottom_preferred_layer Metal5 \
  -top_preferred_layer Metal6

set_ccopt_property route_type clkroute -net_type leaf

# CTS cell choices
set_ccopt_property buffer_cells {CLKBUFX8 CLKBUFX12}
set_ccopt_property inverter_cells {CLKINVX8 CLKINVX12}

# Clock gating cells
set_ccopt_property clock_gating_cells TLATNTSCA*

# CCOpt spec
set_ccopt_clock_tree_spec -file ccopt.spec

# Run CTS
ccopt_design -cts

# Save design
saveDesign DBS/cts.enc

# Reports
report_ccopt_clock_trees -file clk_trees.rpt
report_ccopt_skew_groups  -file skew_groups.rpt

