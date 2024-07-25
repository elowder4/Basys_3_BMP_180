# Introduction
This project contains Verilog code to display temperature values from a BMP180 on the 7-segment display of the Basys 3 FPGA. I did not have any resource limitations, so this 
project is not optimized by any means.

# How To Use 
To use this project, clone the repositiory and open the project in Vivado. All Verilog and IP should already be in the project. Open the hardware manager and program your board with
the pre-generated bitstream. 

# Optimization
There are many steps one could take to optimize this project, most concered with calc_temp.v. One could onsolidate some of the intermediate variables that are only used once, 
consolidate the divider and adder IPs, and optimizing the timing of the state machine in calc_temp. 

# Extra Files
Initially, I did not use divider IP and had a custom module. Divider.v is still in the project, but not used.