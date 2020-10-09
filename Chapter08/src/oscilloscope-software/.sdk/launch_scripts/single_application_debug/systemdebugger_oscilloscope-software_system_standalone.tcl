connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-100T 210319AE1BECA" && level==0 && jtag_device_ctx=="jsn-Arty A7-100T-210319AE1BECA-13631093-0"}
fpga -file Z:/oscilloscope-software/oscilloscope-software/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw Z:/oscilloscope-software/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow Z:/oscilloscope-software/oscilloscope-software/Debug/oscilloscope-software.elf
bpadd -addr &main
