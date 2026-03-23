# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.11-s111_1 on Wed Mar 18 10:25:30 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design asynchronous_fifo

create_clock -name "wclk" -period 10.0 -waveform {0.0 5.0} [get_ports wclk]
create_clock -name "rclk" -period 10.0 -waveform {0.0 5.0} [get_ports rclk]
set_clock_gating_check -hold 0.1 -setup 0.2 
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports rst]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports w_en]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports r_en]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[7]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[6]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[5]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[4]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[3]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[2]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[1]}]
set_input_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_in[0]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[7]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[6]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[5]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[4]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[3]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[2]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[1]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports {data_out[0]}]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports full]
set_output_delay -clock [get_clocks rclk] -add_delay 2.0 [get_ports empty]
set_max_fanout 10.000 [current_design]
set_max_transition 0.5 [current_design]
set_wire_load_mode "enclosed"
set_clock_latency  0.5 [get_clocks wclk]
set_clock_uncertainty -setup 0.2 [get_clocks wclk]
set_clock_uncertainty -hold 0.2 [get_clocks wclk]
set_clock_latency  0.5 [get_clocks rclk]
set_clock_uncertainty -setup 0.2 [get_clocks rclk]
set_clock_uncertainty -hold 0.2 [get_clocks rclk]
