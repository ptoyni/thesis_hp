# foldedcascode_nmos

- Description: Simple voltage buffer for capacitive load realized with foldedcascode OTA
- PDK: ihp-sg13g2

## Authorship

- Designer: Hrishikesh Pangavhane
- Company: Hochschule Bremen
- Created: May 2025
- License: Apache 2.0
- Last modified: None

## Pins

- AVDD
  + Description: Positive analog power supply
  + Type: power
  + Direction: input
  + Vmin: 1.45
  + Vmax: 1.55
- AVSS
  + Description: Analog ground
  + Type: ground
  + Direction: input
- Ibias
  + Description: Bias current input 5uA (nom)
  + Type: signal
  + Direction: input
- PLUS
  + Description: Voltage positive input
  + Type: signal
  + Direction: input
- MINUS
  + Description: Voltage negative input
  + Type: signal
  + Direction: input
- Vout
  + Description: Voltage output
  + Type: signal
  + Direction: output

## Default Conditions

- vdd
  + Description: Analog power supply voltage
  + Display: Vdd
  + Unit: V
  + Typical: 1.5
- ibias
  + Description: Bias current
  + Display: Ibias
  + Unit: uA
  + Typical: 14
- corner_mos
  + Description: Process corner MOSFET
  + Display: Corner MOSFET
  + Typical: tt
- corner_res
  + Description: Process corner resistors
  + Display: Corner RES
  + Typical: typ
- temp
  + Description: Ambient temperature
  + Display: Temperature
  + Unit: °C
  + Typical: 27
- cload
  + Description: Load capacitance
  + Display: Cload
  + Unit: pF
  + Typical: 2

## Symbol

![Symbol of foldedcascode_nmos](foldedcascode_nmos_symbol.svg)

## Schematic

![Schematic of foldedcascode_nmos](foldedcascode_nmos_schematic.svg)
