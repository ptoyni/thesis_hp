# 5tota

- Description: Simple voltage buffer for capacitive load realized with 5T-OTA
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
  + Direction: inout
  + Vmin: 1.45
  + Vmax: 1.55
- AVSS
  + Description: Analog ground
  + Type: ground
  + Direction: inout
- Ibias
  + Description: Bias current input 20uA nom.
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
  + Typical: 20
- corner
  + Description: Process corner
  + Display: Corner
  + Typical: tt
- temp
  + Description: Ambient temperature
  + Display: Temperature
  + Unit: °C
  + Typical: 27
- cload
  + Description: Load capacitance
  + Display: Cload
  + Unit: fF
  + Typical: 50

## Symbol

![Symbol of 5tota](5tota_symbol.svg)

## Schematic

![Schematic of 5tota](5tota_schematic.svg)
