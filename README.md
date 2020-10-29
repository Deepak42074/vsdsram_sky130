# VSD_SRAM
This project focuses on design of 1024x32(4KB) SRAM memory with operating voltage of 1.8v 
and access time of less than 2.5ns using opensource sky130 pdk technology and compiled using 
opensource compiler openRAM.The circuits(custom cells) which are required as input to openRAM 
are designed and simluated using opensource tools.

## Installing and cloning of repository
### Installing Ngspice and Git package
<dl>
  <dd> 1. Open terminal </dd>
  <dd> 2. Type below command to install Ngspice: </dd>
</dl>
```
$   sudo apt-get install –y ngspice
$   sudo apt install git
$   git clone https://github.com/Deepak42074/VSD_SRAM.git
$   cd VSD_SRAM/NgspiceNetlist/Prelayout/
$   git clone https://foss-eda-tools.googlesource.com/skywater-pdk/libs/sky130_fd_pr

```
<dl>
  <dt> Simulation of Basic CMOS inverter:Basic check for installation </dt>
</dl>
```
$   cd VSD_SRAM/NgspiceNetlist/Prelayout/ 
$    ngspice inv.spice 
```



## SRAM Memory Architecture

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SramMemoryArchitecture/SRAM_memory_architecture.png)


# Prelayout Schematic and Simulaiton waveforms:

## 1. 6T_SRAM cell 
The standard 1-bit 6T - SRAM cell consists of 6 transistors. It has pair of cross-coupled CMOS inverters and two NMOS access transistors(M5, M6). 
The NMOS transistors (M3, M4) and PMOS transistors(M1,M2) are driver and pull up transistors respectively.

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/6T_sram_cell.png)

**Simulation Waveform**
<dl>
  <dd> Type below command in Prealyout directory </dd>

```
$  ngspice 6T_sram_cell.spice </dd>
```
</dl>

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/6T_sram_cell.png)









