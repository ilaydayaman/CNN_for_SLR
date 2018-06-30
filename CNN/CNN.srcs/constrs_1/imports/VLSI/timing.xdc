create_clock -period 15.000 -name clk -waveform {0.000 7.500} [get_ports clk]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]