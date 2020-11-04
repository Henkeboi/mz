set_property IOSTANDARD LVCMOS33 [get_ports {ss_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports io0_i]
set_property IOSTANDARD LVCMOS33 [get_ports io0_o]
set_property IOSTANDARD LVCMOS33 [get_ports sck_o]
set_property PACKAGE_PIN E18 [get_ports sck_o]
set_property PACKAGE_PIN F16 [get_ports io0_i]
set_property PACKAGE_PIN E19 [get_ports {ss_o[0]}]
set_property PACKAGE_PIN F17 [get_ports io0_o]


set_property IOSTANDARD LVCMOS33 [get_ports {ss_o_1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports io0_i_1]
set_property IOSTANDARD LVCMOS33 [get_ports io0_o_1]
set_property IOSTANDARD LVCMOS33 [get_ports sck_o_1]
set_property PACKAGE_PIN L20 [get_ports {ss_o_1[0]}]
set_property PACKAGE_PIN M20 [get_ports io0_o_1]


set_property IOSTANDARD LVCMOS33 [get_ports SPI1_MISO_I]
set_property IOSTANDARD LVCMOS33 [get_ports SPI1_MOSI_O]
set_property IOSTANDARD LVCMOS33 [get_ports SPI1_SCLK_O]
set_property IOSTANDARD LVCMOS33 [get_ports SPI1_SS_O]
set_property PACKAGE_PIN E17 [get_ports SPI1_SCLK_O]
set_property PACKAGE_PIN D19 [get_ports SPI1_MISO_I]
set_property PACKAGE_PIN D18 [get_ports SPI1_SS_O]
set_property PACKAGE_PIN D20 [get_ports SPI1_MOSI_O]
set_property PACKAGE_PIN L19 [get_ports sck_o_1]
set_property PACKAGE_PIN M19 [get_ports io0_i_1]
set_property IOSTANDARD LVCMOS33 [get_ports {ss_o_2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports io0_i_2]
set_property IOSTANDARD LVCMOS33 [get_ports io0_o_2]
set_property IOSTANDARD LVCMOS33 [get_ports sck_o_2]
set_property PACKAGE_PIN M18 [get_ports {ss_o_2[0]}]
set_property PACKAGE_PIN K19 [get_ports io0_i_2]
set_property PACKAGE_PIN J19 [get_ports io0_o_2]
set_property PACKAGE_PIN M17 [get_ports sck_o_2]

set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_ss1_o]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_ss2_o]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_0_ss_io]
set_property PACKAGE_PIN B20 [get_ports SPI_0_io0_io]
set_property PACKAGE_PIN C20 [get_ports SPI_0_io1_io]
set_property PACKAGE_PIN M14 [get_ports SPI_0_sck_io]
set_property PACKAGE_PIN L16 [get_ports SPI_0_ss1_o]
set_property PACKAGE_PIN T19 [get_ports SPI_0_ss2_o]
set_property PACKAGE_PIN P16 [get_ports SPI_0_ss_io]




# From the vcu project
set_property IOSTANDARD LVCMOS33 [get_ports can_phy_rx]
set_property IOSTANDARD LVCMOS33 [get_ports can_phy_tx]
set_property DRIVE 16 [get_ports can_phy_tx]
set_property SLEW FAST [get_ports can_phy_tx]
set_property PULLUP true [get_ports can_phy_tx]

set_property PACKAGE_PIN T16 [get_ports can_phy_rx]
set_property PACKAGE_PIN V15 [get_ports can_phy_tx]

#
#       TX and RX physical pins should be asynchronous for the CAN protocol.
#       Further, number of clock cycles between TX and RX are compensated for in software.
#
set_false_path -to [get_ports can_phy_tx]
set_false_path -from [get_ports can_phy_rx]

set_property OFFCHIP_TERM NONE [get_ports can_phy_tx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN_0_rx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN_0_tx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN_1_rx]
set_property IOSTANDARD LVCMOS33 [get_ports CAN_1_tx]
set_property PACKAGE_PIN H16 [get_ports CAN_1_rx]
set_property PACKAGE_PIN J18 [get_ports CAN_1_tx]
set_property PACKAGE_PIN H17 [get_ports CAN_0_rx]
set_property PACKAGE_PIN H18 [get_ports CAN_0_tx]
