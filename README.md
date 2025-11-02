# DAA-Multiplier-RTL-to-GDSII
VLSI project: Semi-custom design of DAA Multiplier (RTL to GDS)
# DAA Multiplier Semi-Custom (RTL to GDS) Design

##  Project Overview

The project demonstrates the **complete digital VLSI design flow** starting from Verilog-based RTL design, simulation, synthesis, and physical design stages using EDA tools such as **Cadence Genus** and **Innovus**.

###  Objective
To implement a low-power, low-complexity **DAA Multiplier** optimized for area and timing using standard cell methodology.

---

##  Repository Structure

| Folder/File | Description |
|--------------|-------------|
| **RTL_Code/** | Verilog source files and testbench for the multiplier |
| **Synthesis/** | Synthesis TCL scripts, constraint files, and synthesis reports |
| **vlsi.pdf** | Complete project documentation and results |
| **README.md** | Repository overview and project description |

---

##  Design Flow Summary

1. **RTL Design** → Verilog implementation of the DAA multiplier and testbench.
2. **Simulation** → Functional verification using Icarus Verilog and GTKWave.
3. **Synthesis** → Design constraints applied and synthesized using Cadence Genus.
4. **Physical Design (Layout)** → Standard cell placement, clock tree synthesis, routing, and GDS generation in Cadence Innovus.
5. **Verification** → Post-synthesis timing analysis and DRC/LVS checks.

---

##  Key Results

- **Technology Used:** 90nm CMOS  
- **Power Optimization:** Achieved by minimizing switching activity  
- **Complexity:** Reduced gate count compared to conventional array multipliers  
- **Tools Used:** Cadence Genus, Innovus, Virtuoso, Icarus Verilog, GTKWave  

---

##  Report

The complete report with detailed explanations, design decisions, and screenshots is available here:  
 [Project_Report.pdf](./vlsi.pdf)

---

##  Author

**Spoorthi Reddy**  
*Indian Institute of Information Technology, Kurnool*  
 *November 2025*
