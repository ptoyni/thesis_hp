
# CACE Summary for foldedcascode_nmos

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.98 V/V |  0.993 V/V |          any |  0.997 V/V |      1.1 V/V |  0.999 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 6559100.000 Hz |          any | 9327880.000 Hz |          any | 12137700.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.100 mV |          any |   0.125 mV |       0.2 mV |   0.157 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   1.295 us |          any |   1.355 us |       1.5 us |   1.412 us |   Pass ✅    |

