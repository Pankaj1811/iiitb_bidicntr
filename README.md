# iiitb_bidicntr- Bidirectional Counter

## Description

Both Synchronous and Asynchronous counters are capable of counting “Up” or counting “Down”, but their is another more “Universal” type of counter that can count in both directions either Up or Down depending on the state of their input control pin and these are known as Bidirectional Counters.
Bidirectional counters, also known as Up/Down counters, are capable of counting in either direction through any given count sequence and they can be reversed at any point within their count sequence by using an additional control input as shown below.

*Note: Circuit requires further optimization to improve performance. Design yet to be modified.*

## Application of Bidirectional Counter

Bidirectional counter has various applications
- *Up Counter*
- *Down Counter*
- *Analog to Digital converter*

## Bidirectional Counter - Verilog Implementation 
The digital circuit takes clock, ctrl and reset as input. It operates as  8-bit up counter when ctrl=1 and as  8-bit down cpunter when ctrl=0. The port description of the Bidirectional counter is shown in Table below. 


| PORT NAME | PORT TYPE | DESCRIPTION |
|-----------|-----------|-------------|
| clk       | input     | Clock Input |
| ctrl | input | to specify whether up or down counter |
| reset | input | Resets the counter to 0 |
| count[7:0] | output | 8-bit counter output |

## About iverilog 
Icarus Verilog is an implementation of the Verilog hardware description language.[^1]
## About GTKWave
GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing [^2]

### Installing iverilog and GTKWave

#### For Ubuntu

Open your terminal and type the following to install iverilog and GTKWave:
```
$   sudo apt-get install git 
$   sudo apt get update
$   sudo apt get install iverilog gtkwave
```


### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone https://github.com/Pankaj1811/iiitb_bidicntr
$   cd iiitb_bidicntr
$   iverilog iiitb_bidicntr.v iiitb_bidicntr_tb.v
$   ./a.out
$   gtkwave updown.vcd
```
### Functional Simulation Result
This is how behavioral simulation looks like

<img src="images/simu.png">

#  Synthesis
The software used to run gate level synthesis is Yosys. Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains. Yosys can be adapted to perform any synthesis job by combining the existing passes (algorithms) using synthesis scripts and adding additional passes as needed by extending the Yosys C++ code base. [^3]

```
git clone https://github.com/YosysHQ/yosys.git
make
sudo make install 
make test
```

The commands to run synthesis in yosys are given below. First create an yosys script `yosys_run.sh` and paste the below commands.
```
read_liberty -lib lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog iiitb_bidicntr.v
synth -top iiitb_bidicntr	
dfflibmap -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
write_verilog -noattr iiitb_bidicntr_synth.v
stat
show
```
Then, open terminal in the folder iiitb_gc and type the below command.
```
yosys -s yosys_run.sh
```
## Post synthesis simulation
- Stats
<img src="images/stats11.png">

- This is how layout is looking at first glance before proper placement

<img src="images/pic1.png">

- GTKWAVE simulation

<img src="images/synth_sim.png">

#  Layout

## Openlane
OpenLane is an automated RTL to GDSII flow based on several components including OpenROAD, Yosys, Magic, Netgen, CVC, SPEF-Extractor, CU-GR, Klayout and a number of custom scripts for design exploration and optimization. The flow performs full ASIC implementation steps from RTL all the way down to GDSII.

more at https://github.com/The-OpenROAD-Project/OpenLane
## Installation instructions 
```
$   apt install -y build-essential python3 python3-venv python3-pip
```
Docker installation process: https://docs.docker.com/engine/install/ubuntu/

goto home directory->
```
$   git clone https://github.com/The-OpenROAD-Project/OpenLane.git
$   cd OpenLane/
$   sudo make
```
To test the open lane
```
$ sudo make test
```
It takes approximate time of 5min to complete. After 43 steps, if it ended with saying **Basic test passed** then open lane installed succesfully.

## Magic
Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow.

More about magic at http://opencircuitdesign.com/magic/index.html

Run following commands one by one to fulfill the system requirement.

```
$   sudo apt-get install m4
$   sudo apt-get install tcsh
$   sudo apt-get install csh
$   sudo apt-get install libx11-dev
$   sudo apt-get install tcl-dev tk-dev
$   sudo apt-get install libcairo2-dev
$   sudo apt-get install mesa-common-dev libglu1-mesa-dev
$   sudo apt-get install libncurses-dev
```
**To install magic**
goto home directory

```
$   git clone https://github.com/RTimothyEdwards/magic
$   cd magic/
$   ./configure
$   sudo make
$   sudo make install
```
type **magic** terminal to check whether it installed succesfully or not. type **exit** to exit magic.

## Placement
<img src="images/magic1.png">
<img src="images/magic2.png">
<img src="images/magic3.png">
## Contributors

- **Pankaj Agrawal**
- **Kunal Ghosh**
- **Tejas B N**


## Acknowledgments


- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.
- Madhav Rao, Associate Professor, IIIT Bangalore
- V N Muralidhara, Associate Professor, IIIT Bangalore


## Contact Information

- Pankaj Agrawal, Postgraduate Student, International Institute of Information Technology, Bangalore  1811pankajagrawal@gmail.com
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com
- Tejas B N, Postgraduate Student, International Institute of Information Technology, Bangalore  bntejas@gmail.com


## *References*

[^1]: Icarus Verilog - [iverilog](http://iverilog.icarus.com/)

[^2]: GTK Wave [documentation](http://gtkwave.sourceforge.net/gtkwave.pdf)

[^3]: [Yosys](https://yosyshq.net/yosys/) synthesis tool
