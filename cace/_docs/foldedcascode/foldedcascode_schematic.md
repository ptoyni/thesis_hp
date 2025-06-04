
# CACE Summary for foldedcascode

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.94 V/V |  0.942 V/V |          any |  1.019 V/V |      1.5 V/V |  1.063 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 3400620.000 Hz |          any | 4237800.000 Hz |          any | 7842000.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.135 mV |          any |   0.172 mV |       0.7 mV |   0.205 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   1.286 us |          any |   1.317 us |       1.5 us |   1.366 us |   Pass ✅    |


## Plots

## gain_vs_temp

![gain_vs_temp](./foldedcascode/schematic/gain_vs_temp.png)

## gain_vs_vin

![gain_vs_vin](./foldedcascode/schematic/gain_vs_vin.png)

## gain_vs_vdd

![gain_vs_vdd](./foldedcascode/schematic/gain_vs_vdd.png)

## gain_vs_corner

![gain_vs_corner](./foldedcascode/schematic/gain_vs_corner.png)

## bw_vs_temp

![bw_vs_temp](./foldedcascode/schematic/bw_vs_temp.png)

## bw_vs_vin

![bw_vs_vin](./foldedcascode/schematic/bw_vs_vin.png)

## bw_vs_vdd

![bw_vs_vdd](./foldedcascode/schematic/bw_vs_vdd.png)

## bw_vs_corner

![bw_vs_corner](./foldedcascode/schematic/bw_vs_corner.png)

## noise_vs_temp

![noise_vs_temp](./foldedcascode/schematic/noise_vs_temp.png)

## noise_vs_vin

![noise_vs_vin](./foldedcascode/schematic/noise_vs_vin.png)

## noise_vs_vdd

![noise_vs_vdd](./foldedcascode/schematic/noise_vs_vdd.png)

## noise_vs_corner

![noise_vs_corner](./foldedcascode/schematic/noise_vs_corner.png)

## settling_vs_temp

![settling_vs_temp](./foldedcascode/schematic/settling_vs_temp.png)

## settling_vs_vin

![settling_vs_vin](./foldedcascode/schematic/settling_vs_vin.png)

## settling_vs_vdd

![settling_vs_vdd](./foldedcascode/schematic/settling_vs_vdd.png)

## settling_vs_corner

![settling_vs_corner](./foldedcascode/schematic/settling_vs_corner.png)
