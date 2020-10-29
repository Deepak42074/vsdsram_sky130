# VSD_SRAM
This project focuses on design of 1024x32(4KB) SRAM memory with operating voltage of 1.8v 
and access time of less than 2.5ns using opensource sky130 pdk technology and compiled using 
opensource compiler openRAM.The circuits(custom cells) which are required as input to openRAM 
are designed and simluated using opensource tools.

## Installing and Cloning of Repository
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


# Prelayout Schematic and Simulation waveforms:

## 1. 6T_SRAM cell 
The standard 1-bit 6T - SRAM cell consists of 6 transistors. It has pair of cross-coupled CMOS inverters and two NMOS access transistors(M5, M6). 
The NMOS transistors (M2, M4) and PMOS transistors(M1,M3) are driver and pull up transistors respectively.

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

## 7. 1bit_sram_read 

**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>
 
```
$  ngspice 1bit_sram_read.png
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/1bit_sram_read.png)

## 8. 1bit_sram_write 
**Simulation Waveform :**
<dl>
  <dd> Type below command in Prelayout directory </dd>
</dl>
 
```
$  ngspice 1bit_write_read.png
```

![](https://github.com/Deepak42074/VSD_SRAM/blob/main/SimulationWaveforms/Prelayout/1bit_sram_write.png)

## Static Noise Margin Calculation of 6T sram cell
SNM is defined as minimum DC noise voltage needed to flip the cell state .It shows the stability of sram cell,used to measure the robustness of a cell which shows how well it can hold its data.
To find SNM we draw inverter charactersitics and its mirror characteristics. The resulting two lobe curves is called "Butterfly curve".
The SNM is defined as the length of side of largest square that can be drawn inside the lobes of butterfly curve.


**1. Hold SNM**
The ability of SRAM cell to retain the stored data in absence of word line is defined as hold stability and is calculated as Hold SNM.

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

On drawing the square of largest size in the two lobes we get below value.
Hold SNM = 0.71V


**2. Read SNM**

Read SNM is used to measure read ability which is the ability to prevent the sram cell to flip the stored value while reading the stored value.

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

 On drawing the square of largest size we get below value.
 Read SNM = 0.42V 


**3. Write SNM**

The minimum voltage required to feed new value into the sram cell is kown as write margin.

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

On drawing the square of largest size we get below value.
Write SNM = 0.55V

# Author
* Deepak verma

# Acknowledgements  
* Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.
* Philipp Gühring, Software Architect, LibreSilicon Assocation
* Yash Kumar, VSD Teaching Assistant  - laryash99@gmail.com
* Reuel Reuben, VSD Teaching Assistant  -reuel992000@gmail.com

# Contact Information  
* Deepak verma ,B.Tech(Electronics and Communication-2018),IIIT Sonepat -deepak074.verma@gmail.com
* Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. - kunalghosh@gmail.com
* Philipp Gühring, Software Architect, LibreSilicon Assocation - pg@futureware.at










