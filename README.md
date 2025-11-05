# 🧮 DAA Multiplier – Semi-Custom VLSI Design (RTL to GDS)

This repository contains the complete **RTL-to-GDSII implementation** of a **DAA (Distributed Arithmetic Algorithm) Multiplier** using **Cadence EDA tools**.  
It demonstrates a low-power, low-complexity multiplier designed using **semi-custom VLSI methodology**, covering the entire ASIC flow from Verilog code to GDSII layout.


---

## 🧠 Overview

The **DAA Multiplier** (Distributed Arithmetic Algorithm Multiplier) simplifies multiplication by precomputing and summing partial results using bit-level arithmetic.  
This project implements the complete **semi-custom VLSI design flow**, starting from **Verilog RTL** to final **GDSII generation** using Cadence tools.

---

## 🎯 Objectives

- To design and simulate an **8×8-bit DAA Multiplier** in Verilog HDL.  
- To perform synthesis, generate **timing, area, and power reports**.  
- To execute **floorplanning, placement, routing, and GDSII** generation.  
- To verify the design’s **timing and functionality** post-layout.  
- To optimize for **power, area, and delay**.

---

## 🧰 Tools Used

| Tool | Purpose |
|------|----------|
| **Cadence Genus** | RTL Synthesis |
| **Cadence Innovus** | Physical Design (Placement, CTS, Routing) |
| **nclaunch / Xcelium** | Simulation |
| **GTKWave** | Waveform Viewing |
| **RedHat Linux** | Environment |

---

## ⚙️ Design Flow

1. **RTL Coding** – Verilog HDL implementation of the DAA Multiplier.  
2. **Simulation** – Functional verification using testbench and waveforms.  
3. **Synthesis** – Using Cadence Genus to obtain area, timing, and power reports.  
4. **Physical Design** – Floorplan, placement, CTS, routing using Innovus.  
5. **Verification** – DRC/LVS checks and timing closure.  
6. **GDSII Generation** – Final layout export ready for fabrication.

---

## 🧩 Working Flowchart

Below is the flowchart illustrating the DAA Multiplier operation:

![DAA Multiplier Flowchart](Layout/flowchart.jpg)

**Figure:** Flowchart showing bit-wise multiplication and accumulation steps.

---

## 🧩 RTL Schematic

This schematic represents the RTL-level architecture of the DAA Multiplier generated after synthesis in **Cadence Genus**.

![RTL Schematic](Layout/schematic.jpg)

**Observation:**  
The schematic shows connections between partial product generation and accumulation blocks. Flip-flops synchronize results at each clock edge.

---

## 📈 Simulation Waveforms

Waveform output validates correct multiplication results for various input test cases.

![Simulation Waveform](Layout/waveform.jpg)

**Observation:**  
The output `result` changes only at positive clock edges and correctly matches expected products for given A and B values.

---

## ⚡ Synthesis and Reports

The design was synthesized using **Cadence Genus**.  
Reports were generated for **area**, **power**, and **timing** using constraint files and a TCL script.

| Report Type | Description | Tool | Status |
|--------------|-------------|------|--------|
| **Area Report** | Displays total cell area and utilization | Genus | ✅ Generated |
| **Power Report** | Shows dynamic and leakage power | Genus | ✅ Generated |
| **Timing Report** | Setup and hold timing checks | Genus | ✅ Clean |

**Power Report Snapshot:**

![Power Report](Synthesis/reports/power.jpg)

**Observation:**  
Low power dissipation achieved due to efficient bit-level computation and optimized synthesis.

---

## 🧱 Physical Design and GDSII

Physical design implemented using **Cadence Innovus** covering:
- Floorplanning  
- Placement  
- Clock Tree Synthesis (CTS)  
- Routing  
- DRC/LVS Verification  
- GDSII Export  

**2D Layout View:**

![2D Layout](Layout/layout_2D.jpg)

**3D Layout View:**

![3D Layout](Layout/layout_3D.jpg)

**Observation:**  
The layout is DRC/LVS clean and meets timing requirements. The routing pattern clearly shows power rails, data paths, and clock distribution.

---

---

## 📊 Results

| Parameter | Result |
|------------|--------|
| Input Width | 8-bit |
| Output Width | 16-bit |
| Design Type | Sequential |
| Technology | Semi-Custom |
| Power | Low |
| Timing | Clean |
| DRC/LVS | Passed |
| GDSII | Generated Successfully |

---

## 🚀 Future Work

- Optimize design for **45nm / 28nm** technology nodes.  
- Apply **clock gating** and **power gating** techniques.  
- Extend to **16-bit or 32-bit DAA Multiplier**.  
- Compare performance with **Booth** and **Array** multipliers.

---

## 📚 References

- J. Bamela Mary, K. Ramamoorthy – *“Implementation of Low-Complexity Multiplier using Distributed Arithmetic Algorithm.”*  
- Cadence Design Systems – *Genus and Innovus Tool Manuals*  
- IIIT Kurnool – *VLSI Design Laboratory Resources*  
- **Additional Reading:** [Distributed Arithmetic Algorithm – ResearchGate Paper](https://www.researchgate.net/publication/343845174_Implementation_of_Low_Complexity_Multiplier_using_Distributed_Arithmetic_Algorithm)

---

## 👩‍🎓 Author & Guide

**Student:** Spoorthi  
**Institute:** Indian Institute of Information Technology, Kurnool  
**Guide:** Prof. Ranga Babu, Department of ECE  
**Date:** November 2025  

---

### ⭐ Acknowledgment

This project was carried out under the guidance of **Prof. Ranga Babu**, Department of ECE, IIIT Kurnool.  
Special thanks to the **Cadence University Program** for providing academic tool access.

---

> 📝 *Note: This project is intended solely for academic and educational purposes.*


