# iiitb_bidicntr- Bidirectional Counter

## Description

Both Synchronous and Asynchronous counters are capable of counting “Up” or counting “Down”, but their is another more “Universal” type of counter that can count in both directions either Up or Down depending on the state of their input control pin and these are known as Bidirectional Counters.
Bidirectional counters, also known as Up/Down counters, are capable of counting in either direction through any given count sequence and they can be reversed at any point within their count sequence by using an additional control input as shown below.

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
