# contraints file (.xdc file) for lab 4
# Clock signal
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {clk}]


# On-board LEDs
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {q[0]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {q[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {q[2]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {q[3]}]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {q[4]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {q[5]}]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {q[6]}]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {q[7]}]

# On-board Slide Switches
#set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} #[get_ports {switch[0]}]
#set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} #[get_ports {switch[1]}]
#set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} #[get_ports {switch[2]}]
#set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} #[get_ports {switch[3]}]
#set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} #[get_ports {switch[4]}]
#set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} #[get_ports {switch[5]}]
#set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} #[get_ports {switch[6]}]
#set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} #[get_ports {switch[7]}]

# On-board 7-Segment display 0
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS33} [get_ports {anode[0]}]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports {anode[1]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {anode[2]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {anode[3]}]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {cathode[6]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {cathode[5]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {cathode[4]}]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {cathode[3]}]
set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS33} [get_ports {cathode[2]}]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS33} [get_ports {cathode[1]}]
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports {cathode[0]}]

#Buttons
set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports {rst}]

# Timing Constraints
# clk input is from the 100 MHz oscillator on Boolean board
create_clock -period 10.000 -name clk [get_ports {clk}]
set_input_delay -clock clk -add_delay 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "IN" } ]
set_output_delay -clock clk -add_delay 0.000 [get_ports -filter { NAME =~  "*" && DIRECTION == "OUT" } ]

# Set Bank 0 voltage
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
