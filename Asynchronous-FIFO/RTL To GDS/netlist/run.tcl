read_libs /linuxeda_new/c2scadence/FOUNDRY/digital/90nm/dig/lib/fast.lib
read_hdl {TOP.v synchronizer.v rptr_handler.v wptr_handler.v FIFO_Memory.v}
set top_module asynchronous_fifo
elaborate asynchronous_fifo
current_design asynchronous_fifo
read_sdc input_constraints.sdc
syn_generic
syn_map
syn_opt
write_hdl > FIFOfastnetlist.v
write_sdc > outputconstraintsfastFIFO.sdc
gui_show
report timing > FIFOfast_timing.rpt
report power > FIFOfast_power.rpt
report area > FIFOfast_area.rpt
report gates > FIFOfast_gates.rpt
