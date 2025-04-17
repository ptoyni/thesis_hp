# Thesis Focus

The focus of our thesis is the complete design and implementation of the error amplifier block within the selected buck converter topology. This involves developing the block from initial specification and schematic design through to layout, verification (including LVS and PEX), and final tapeout using exclusively open-source tools. The goal is to create a high-performance, low-power error amplifier tailored to the requirements of the mixed-signal LED driver IC, ensuring accurate regulation and stability of the control loop. This work will contribute a critical building block to the overall ASIC design while also serving as a case study in open-source analog IC design workflows.

# Title: Development and Tapeout of an Analog Error Amplifier for LED Driver Control Using Open-Source Tools

This thesis presents the end-to-end custom IC design of a folded cascode error amplifier for integration within a voltage-mode buck converter-based LED driver IC. Targeting a 130nm CMOS process (IHP SG13G2), the project covers schematic design, simulation, layout, and physical verification using fully open-source tools provided by the IIC-OSIC ecosystem. The amplifier is tailored to meet the feedback stability and performance specifications of the LED driver system operating within a 5 V output and 18–36 V input range.

## Error Amplifier Design for Buck Converter Feedback Control

### Objectives

- **Design Goal**: Develop a high-gain, low-offset error amplifier suitable for the feedback loop in a buck converter topology, ensuring accurate voltage regulation and stable control performance.

### Design and Simulation Workflow

1. **Circuit Design**  
   A high-gain, low-offset operational amplifier is designed using a two-stage architecture, optimized for low power and high common-mode rejection. Key specifications include:
   - Gain > 80 dB
   - Offset voltage < 2 mV
   - Slew rate and bandwidth compatible with buck converter control dynamics

2. **PVT Simulation**  
   The amplifier is verified across process, voltage, and temperature (PVT) corners using SPICE simulation. These include:
   - Process corners: TT, SS, FF, SF, FS
   - Voltage variations within 18–36 V system constraints
   - Temperature range from -40°C to 125°C  
   
   Simulation ensures consistent performance and stability across all scenarios.

### Layout Implementation

3. **Layout Using Magic**  
   The layout is implemented using the open-source tool Magic, adhering to best practices for analog layout:
   - Symmetrical layout for differential pairs
   - Common centroid matching for critical current mirrors and input stages
   - Guard rings and proper routing to minimize noise and mismatch

4. **Design Verification**
   - **DRC (Design Rule Check)**: Ensures compliance with foundry-specific design rules.
   - **LVS (Layout vs. Schematic)**: Confirms the physical layout matches the intended circuit.
   - **PEX (Parasitic Extraction)**: Extracts layout parasitics and verifies circuit behavior with these effects included.

### Tapeout Preparation

5. **GDSII Generation**  
   A validated GDSII file is generated for MPW (Multi-Project Wafer) tapeout submission through the IIC-OSIC shuttle, targeting integration into the full mixed-signal LED driver IC.

## Specifications

| **Parameter**        | **Target Value**                |
|----------------------|----------------------------------|
| Gain (DC)            | > 60 dB                          |
| Bandwidth            | > 1 MHz                          |
| Phase Margin         | > 60°                            |
| Power Supply         | 3.3 V (AVDD)                     |
| Load Capacitance     | ~2–10 pF                         |
| Power Consumption    | < 1 mW                           |
| Input CM Range       | Rail-to-rail or 0.5–2.8 V        |

In the section detailing buck converter control design (especially the voltage-mode control loop), @wicht2020 focuses on:

- A transconductance amplifier used as the error amplifier

- High open-loop gain

- A clear emphasis on stability, bandwidth, and linear range

- In most cases, the paper assumes low voltage (3.3V analog supply) domain

- The architectures shown are two-stage OTAs or folded cascode for high PSRR

Final Take:

Folded Cascode OTA is very much aligned with @wicht2020 methodology, especially if our focus is on:

- A high-gain, linear, feedback-stage amplifier

- Working within 3.3V analog domain

- Dealing with moderate capacitive loads (e.g. compensation network / VCOMP node)

- @wicht2020 doesn’t enforce one architecture rigidly, but the characteristics described match folded cascode best.

## Design Process Overview

1. **Literature Review** – Study error amplifier architectures, compensation, and integration in PMICs  
2. **Topology Selection** – Choose folded cascode due to high gain and good output swing  
3. **Schematic Design** – Build differential input stage, current mirrors, biasing blocks  
4. **Simulation** – DC, AC, transient, noise, PVT, Monte Carlo  
5. **Layout** – Apply matching, shielding, dummy devices  
6. **LVS + DRC** – Ensure physical correctness and rule compliance  
7. **PEX + Post-Layout Sim** – Verify parasitic-aware performance  
8. **Tapeout Packaging** – Generate GDSII and tapeout documents  
