
# CACE Summary for foldedcascode_nmos

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.98 V/V |  0.989 V/V |          any |  0.999 V/V |      1.1 V/V |  1.000 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 1669630.000 Hz |          any | 8907150.000 Hz |          any | 11789400.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Bandwidth (MC)       | ngspice              | bw_mc                |          1e6 Hz |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Output noise         | ngspice              | noise                |             any |   0.095 mV |          any |   0.118 mV |       0.2 mV |   0.295 mV |   Fail ❌    |
| Settling time        | ngspice              | tsettle              |             any |   1.360 us |          any |   1.457 us |       1.4 us |   1.724 us |   Fail ❌    |

