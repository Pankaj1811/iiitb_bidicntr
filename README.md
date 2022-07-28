# iiitb_bidicntr-bidirectional counter
In this project Bidirectional counter is made that can be used to count either in one direction or both direction.

Note: Circuit requires further optimization to improve performance. Design yet to be modified.

// Functional Simulation
sudo apt install -y git
git clone https://github.com/Pankaj1811/iiitb_bidicntr
cd avsdbgp_3v3/Simulation/Ng_spice_Simulation/Final_simulation/Prelayout

//To clone the repository and download the netlist files for simulation, enter the following commands in your terminal
git clone https://github.com/Pankaj1811/iiitb_bidicntr
cd iiitb_bidicntr
iverilog iiitb_bidicntr_tb.v iiitb_bidicntr.v
./a.out
gtkwave updown.vcd
