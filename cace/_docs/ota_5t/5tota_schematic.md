
# CACE Summary for 5tota

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.97 V/V |  0.978 V/V |          any |  0.999 V/V |     1.03 V/V |  1.006 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |         10e6 Hz | 15591500.000 Hz |          any | 26870900.000 Hz |          any | 37903800.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |  0.849 V/V |          any |  0.997 V/V |          any |  1.130 V/V |   Pass ✅    |
| Bandwidth (MC)       | ngspice              | bw_mc                |         10e6 Hz | 23972200.000 Hz |          any | 27031600.000 Hz |          any | 29586700.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.301 mV |          any |   0.364 mV |         1 mV |   0.440 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   0.035 us |          any |   0.049 us |        10 us |   0.081 us |   Pass ✅    |


## Plots

## gain_vs_temp

![gain_vs_temp](./5tota/schematic/gain_vs_temp.png)

## gain_vs_vin

![gain_vs_vin](./5tota/schematic/gain_vs_vin.png)

## gain_vs_vdd

![gain_vs_vdd](./5tota/schematic/gain_vs_vdd.png)

## gain_vs_corner

![gain_vs_corner](./5tota/schematic/gain_vs_corner.png)

## bw_vs_temp

![bw_vs_temp](./5tota/schematic/bw_vs_temp.png)

## bw_vs_vin

![bw_vs_vin](./5tota/schematic/bw_vs_vin.png)

## bw_vs_vdd

![bw_vs_vdd](./5tota/schematic/bw_vs_vdd.png)

## bw_vs_corner

![bw_vs_corner](./5tota/schematic/bw_vs_corner.png)

## gain_mc

![gain_mc](./5tota/schematic/gain_mc.png)

## bw_mc

![bw_mc](./5tota/schematic/bw_mc.png)

## noise_vs_temp

![noise_vs_temp](./5tota/schematic/noise_vs_temp.png)

## noise_vs_vin

![noise_vs_vin](./5tota/schematic/noise_vs_vin.png)

## noise_vs_vdd

![noise_vs_vdd](./5tota/schematic/noise_vs_vdd.png)

## noise_vs_corner

![noise_vs_corner](./5tota/schematic/noise_vs_corner.png)

## settling_vs_temp

![settling_vs_temp](./5tota/schematic/settling_vs_temp.png)

## settling_vs_vin

![settling_vs_vin](./5tota/schematic/settling_vs_vin.png)

## settling_vs_vdd

![settling_vs_vdd](./5tota/schematic/settling_vs_vdd.png)

## settling_vs_corner

![settling_vs_corner](./5tota/schematic/settling_vs_corner.png)
