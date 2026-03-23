
create_clock -name wclk -period 10 [get_ports wclk]
create_clock -name rclk -period 10 [get_ports rclk]

set_clock_uncertainty 0.2 [get_clocks wclk]
set_clock_uncertainty 0.2 [get_clocks rclk]
set_clock_latency 0.5 [get_clocks wclk]
set_clock_latency 0.5 [get_clocks rclk]
set_input_delay 2 -clock wclk [all_inputs]
set_input_delay 2 -clock rclk [all_inputs]

set_output_delay 2 -clock wclk [all_outputs]
set_output_delay 2 -clock rclk [all_outputs]


set_max_transition 0.5 [current_design]

set_max_fanout 10 [current_design]
# Clock gating checks
set_clock_gating_check -setup 0.2
set_clock_gating_check -hold 0.1



