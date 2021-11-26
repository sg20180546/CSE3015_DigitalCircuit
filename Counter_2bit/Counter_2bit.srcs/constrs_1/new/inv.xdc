set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS18} [get_ports clock]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS18} [get_ports reset]

set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS18} [get_ports y[1]]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS18} [get_ports y[0]]

#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets y[1]_OBUF]
#set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets y[0]_OBUF]

set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clock_IBUF]