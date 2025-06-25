
# CACE Summary for foldedcascode_nmos

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.98 V/V |  0.996 V/V |          any |  0.999 V/V |      1.1 V/V |  1.000 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 4056470.000 Hz |          any | 8457160.000 Hz |          any | 14665200.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  0.998 V/V |          any |  0.999 V/V |          any |  1.000 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |          1e6 Hz | 8014060.000 Hz |          any | 8425735.000 Hz |          any | 9289120.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.065 mV |          any |   0.101 mV |       0.2 mV |   0.136 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.234 us |          any |   0.258 us |       1.5 us |   0.286 us |   Pass ✅    |


## Plots

## gain_vs_temp

![gain_vs_temp](./foldedcascode_nmos/schematic/gain_vs_temp.png)

## gain_vs_vin

![gain_vs_vin](./foldedcascode_nmos/schematic/gain_vs_vin.png)

## gain_vs_vdd

![gain_vs_vdd](./foldedcascode_nmos/schematic/gain_vs_vdd.png)

## gain_vs_corner

![gain_vs_corner](./foldedcascode_nmos/schematic/gain_vs_corner.png)

## bw_vs_temp

![bw_vs_temp](./foldedcascode_nmos/schematic/bw_vs_temp.png)

## bw_vs_vin

![bw_vs_vin](./foldedcascode_nmos/schematic/bw_vs_vin.png)

## bw_vs_vdd

![bw_vs_vdd](./foldedcascode_nmos/schematic/bw_vs_vdd.png)

## bw_vs_corner

![bw_vs_corner](./foldedcascode_nmos/schematic/bw_vs_corner.png)

## gain_mc

![gain_mc](./foldedcascode_nmos/schematic/gain_mc.png)

## bw_mc

![bw_mc](./foldedcascode_nmos/schematic/bw_mc.png)

## noise_vs_temp

![noise_vs_temp](./foldedcascode_nmos/schematic/noise_vs_temp.png)

## noise_vs_vin

![noise_vs_vin](./foldedcascode_nmos/schematic/noise_vs_vin.png)

## noise_vs_vdd

![noise_vs_vdd](./foldedcascode_nmos/schematic/noise_vs_vdd.png)

## noise_vs_corner

![noise_vs_corner](./foldedcascode_nmos/schematic/noise_vs_corner.png)

## settling_vs_temp

![settling_vs_temp](./foldedcascode_nmos/schematic/settling_vs_temp.png)

## settling_vs_vin

![settling_vs_vin](./foldedcascode_nmos/schematic/settling_vs_vin.png)

## settling_vs_vdd

![settling_vs_vdd](./foldedcascode_nmos/schematic/settling_vs_vdd.png)

## settling_vs_corner

![settling_vs_corner](./foldedcascode_nmos/schematic/settling_vs_corner.png)
