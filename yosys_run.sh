# read design

read_verilog iiitb_bidicntr.v

# generic synthesis
synth -top iiitb_bidicntr

# mapping to mycells.lib
dfflibmap -liberty /home/pankaj/iiitb_bidicntr/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/pankaj/iiitb_bidicntr/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog iiitb_bidicntr_synth.v
