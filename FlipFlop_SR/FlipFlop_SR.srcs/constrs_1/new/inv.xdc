set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports S]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports R]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports clk]

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports Q]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports notQ]

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets Q_OBUF]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets notQ_OBUF]

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]