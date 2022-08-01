# iiitb_bidicntr- Bidirectional Counter

## Description

Both Synchronous and Asynchronous counters are capable of counting “Up” or counting “Down”, but their is another more “Universal” type of counter that can count in both directions either Up or Down depending on the state of their input control pin and these are known as Bidirectional Counters.
Bidirectional counters, also known as Up/Down counters, are capable of counting in either direction through any given count sequence and they can be reversed at any point within their count sequence by using an additional control input as shown below.

## About iverilog 
Icarus Verilog is an implementation of the Verilog hardware description language.
## About GTKWave
GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing

### Installing iverilog and GTKWave

#### For Ubuntu

Open your terminal and type the following to install iverilog and GTKWave
```
$   sudo apt get update
$   sudo apt get install iverilog gtkwave
```


### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone https://github.com/sanampudig/iiitb_bidicntr
$   cd iiitb_bidicntr
$   iverilog iiitb_bidicntr.v iiitb_bidicntr_tb.v
$   ./a.out
$   gtkwave updown.vcd
```
