#!/bin/bash

sudo apt-get install -y ngspice

cd Ngspice_Netlist/Prelayout/

git clone https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr

cp -vrf sky130_fd_pr ../Postlayout








