
# CACE Summary for foldedcascode_nmos

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.98 V/V |  0.988 V/V |          any |  0.994 V/V |      1.1 V/V |  0.997 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 6451120.000 Hz |          any | 9280280.000 Hz |          any | 12451100.000 Hz |   Pass ✅    |
| Output noise         | ngspice              | noise                |             any |   0.112 mV |          any |   0.138 mV |       0.2 mV |   0.176 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   1.248 us |          any |   1.296 us |       1.4 us |   1.328 us |   Pass ✅    |

