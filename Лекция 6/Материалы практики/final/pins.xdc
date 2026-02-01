# Push-Button, BTN0
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {i_btn}]

# Slide Switches (DIP-Switch), SW0-SW3
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {i_sw[0]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {i_sw[1]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {i_sw[2]}]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports {i_sw[3]}]

# LEDs, LED0-LED3
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports {o_led[0]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {o_led[1]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {o_led[2]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {o_led[3]}]

# Special conditions
#set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets *]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_btn*]
