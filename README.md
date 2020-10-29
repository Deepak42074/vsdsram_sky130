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
  <dd> 3. Simulation of Basic CMOS inverter:Basic check for installation </dd>
</dl>

```
$    cd VSD_SRAM/NgspiceNetlist/Prelayout/ 
$    ngspice inv.spice 
```



## SRAM Memory Architecture

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SramMemoryArchitecture/SRAM_memory_architecture.png)


# Prelayout Schematic and Simulaiton waveforms:

## 1. 6T_SRAM cell 
The standard 1-bit 6T - SRAM cell consists of 6 transistors. It has pair of cross-coupled CMOS inverters and two NMOS access transistors(M5, M6). 
The NMOS transistors (M3, M4) and PMOS transistors(M1,M2) are driver and pull up transistors respectively.

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/6T_sram_cell.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice 6T_sram_cell.spice 
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/6T_sram_cell.png)

## 2. Precharge circuit

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/Precharge_Cell.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice Prechargecell.spice 
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/Precharge_cell.png)

## 3. Differential Sense Amplifier

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/Differential_sense_amplifier.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice Differential_sense_amplifier.spice 
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/Differential_sense_amplifier.png)

## 4. Write Driver Circuit

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/write_driver.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice writedriver.spice 
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/writedriver.png)

## 5. Tristate Buffer

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/Tristate_buffer.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice Tristate_buffer.spice 
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/Tristate_buffer.png)

## 6. D flip flop

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/Dff.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice Dff.spice
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/Dff.png)

### Static Noise Margin Calculation of 6T sram cell

theory

** 1. Hold SNM **

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/Holdsnm.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice Holdsnm.spice
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/Holdsnm.png)


** 2. Read SNM **

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/Readsnm.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice Readsnm.spice
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/Readsnm.png)

** 3. Write SNM **

**Circuit Diagram :**

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/CircuitDiagrams/writesnm.png)

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>

```
$  ngspice writesnm.spice
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/writesnm.png)













