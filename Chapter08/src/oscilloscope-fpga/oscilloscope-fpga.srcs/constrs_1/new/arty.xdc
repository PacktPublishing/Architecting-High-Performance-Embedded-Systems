set_property IOSTANDARD LVCMOS33 [get_ports eth_ref_clk]
set_property PACKAGE_PIN G18 [get_ports eth_ref_clk] 

set_property PACKAGE_PIN C1 [get_ports spi_ss_io]

# Pmod Header JC
set_property IOSTANDARD TMDS_33  [get_ports enc_p]
set_property PACKAGE_PIN U12     [get_ports enc_p]

set_property IOSTANDARD LVCMOS33 [get_ports clk_1khz_out]
set_property PACKAGE_PIN T13     [get_ports clk_1khz_out]
