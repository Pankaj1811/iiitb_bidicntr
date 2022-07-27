# iiitb_bidicntr-bidirectional counter
//Functional Simulation
sudo apt install -y git
git clone https://github.com/Pankaj1811/iiitb_bidicntr
cd avsdbgp_3v3/Simulation

//To clone the repository and download the netlist files for simulation, enter the following commands in your terminal
git clone https://github.com/Pankaj1811/iiitb_bidicntr
cd iiitb_bidicntr
iverilog iiitb_bidicntr_tb.v iiitb_bidicntr.v
./a.out
gtkwave updown.vcd
