set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports clk]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS18} [get_ports reset]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS18} [get_ports up]

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports y[3]]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports y[2]]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS18} [get_ports y[1]]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS18} [get_ports y[0]]

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS18} [get_ports a]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS18} [get_ports b]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS18} [get_ports c]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS18} [get_ports d]
set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS18} [get_ports e]
set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS18} [get_ports f]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS18} [get_ports g]
set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS18} [get_ports pt]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]