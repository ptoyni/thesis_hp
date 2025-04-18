# Open Source Tools and PDK

## IHP-Sg13g2 PDK

  - 0.13 µm BiCMOS process.
  - Includes high-speed **SiGe:C npn-HBTs** with  **fT = 300 GHz**, **fmax = 500 GHz**.
  - Supports 1.2 V (thin oxide) and 3.3 V (thick oxide) devices.
  - Passive components: Poly resistors, MIM capacitors.
  - Backend: 5 thin Al + 2 thick Al metal layers, MIM layer.

- Unlike traditional PDKs like **SKY130** or **GF180**, the IHP-Open-PDK does **not require installation**. It delivers ready-to-use primitives and tool configuration files to minimize setup effort. Which can be done two ways.

### **Method I : Building Tools**
 The IHP-Open-PDK is developed and tested primarily on Ubuntu LTS. Ubuntu 24.04 is recommended.

 - **Git** is required to clone the repository.

 - Most tools (e.g., Magic, Xschem, Netgen, OpenROAD) can be **built from source** using code hosted on platforms, for more instructions visit  [IHP-DesignLib/Installation](https://ihp-open-pdk-docs.readthedocs.io/en/latest/install.html).

 - **PDK Cloning**:  
  Use the `--recursive` option while cloning:  
  ```bash
  git clone --recursive https://github.com/IHP-GmbH/IHP-Open-PDK.git
  cd IHP-Open-PDK
  git checkout dev
  ```
 - **Branch Info**:  
  - `dev` branch contains the latest models and is required for compatibility with examples.  
  - `main` branch is more stable but lags behind `dev`.

 - **Environment Setup**: Set PDK-related variables in `.bashrc`, e.g., `PDK_ROOT`, `PDK`, `KLAYOUT_PATH`.

### **Method II : OSIC-IIC Tools**

 IIC-OSIC-TOOLS is an all-in-one Docker container for open-source-based integrated circuit designs for analog and digital circuit flows. The CPU architectures x86_64/amd64 and aarch64/arm64 are natively supported based on Ubuntu 24.04 LTS (since release 2025.01)

 This collection of tools is curated by the Institute for Integrated Circuits and Quantum Computing (IICQC), Johannes Kepler University (JKU).

 - **Docker** installation is required in desktop.

 - It supports IHP-Open PDK along with other PDKs and no additional configuration is required.

 - **PDK Cloning**:  
  ```bash
  git clone --depth=1 https://github.com/iic-jku/iic-osic-tools.git
  ```
 
 - It supports two modes of operation:

   - Using a complete desktop environment (XFCE) in Xvnc (a VNC server), either directly accessing it with a VNC client of your choice or the integrated noVNC server that runs in your browser.
   - Using a local X11 server and directly showing the application windows on your desktop.

 - It has all the tools required for our work pre-installed in it.

 - All the details for more specific installation and environment setup instructions are mentioned on their [Git Repository](https://github.com/iic-jku/iic-osic-tools.git).

We are going to use **METHOD II -OSIC-IIC Tools** in our thesis as its efficient and offers far more scope than building tools from scratch.

## Process Flow Summary

- **Isolation**: Shallow trench isolation (STI).
- **Well Formation**: NWell, PWell, Triple Well.
- **Gate Stack**: Poly Gate formation.
- **Active Regions**: Emitter, Collector, Bipolar Windows.
- **Implants**: nSD / pSD implant and drive.
- **Metallization & Contacts**: Salicide formation, Metal1 to Metal5, vias.
- **Advanced Features**: MIM capacitors, thick top metals.
- **Passivation & Testing**: Final passivation and parametric wafer testing.

## Cross-Section Overview

- **Layers** (from top to bottom):
  - Poly resistor (~160 nm), Nitride (50 nm), Field oxide (400 nm)
  - ILD/CO with εr ≈ 4.1, total ~640 nm thick
  - Epi layer (3750 nm, σ = 20 Ωcm), Si bulk (750 µm, σ = 50 Ωcm)
- **BEOL Details**:
  - Metal layers stacked with dielectric layers (εr = 4.1 ± 0.1)
  - Via spacings from 490–540 nm between layers
  - Top dielectric (εr = 6.6) for MIM support

## Process Control

- **Measurement Temperature**: Standard measurements at 27°C; models extracted for -40°C to 125°C.
- **Parameter Types**:
  - **Pass/Fail**: Measured on every wafer, used for wafer selection with bold red SPEC limits.
  - **Information**:
    - Group 1: Measured per wafer, with blue SPEC limits.
    - Group 2: Not on every wafer with italic blue SPEC limits. (e.g., thicknesses, model behavior).
- **Simulation Models**: Process control parameters must not be used for circuit simulations. Use dedicated simulation models.

All these Process Control Parameters are mentioned in the [attached reference](https://ihp-open-pdk-docs.readthedocs.io/en/latest/process_specs/02_process_control_params.html) along with measurement conditions.

## Wafer Reject Criteria

- **Evaluation Sites**: Pass/Fail parameters measured at ≥9 sites across the wafer.
- **Passing Rule**: A wafer passes if at least **2/3 of sites (minimum 6)** pass **all** Pass/Fail criteria.

## Layout Rules

- Only the layers described in the [Layer table](https://ihp-open-pdk-docs.readthedocs.io/en/latest/layout_rules/02_layer_table.html) are allowed to be used in layout designs. Do not use layers exclusively reserved for internal usage.