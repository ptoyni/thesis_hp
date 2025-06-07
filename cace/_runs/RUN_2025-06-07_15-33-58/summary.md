
# CACE Summary for foldedcascode_nmos

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.98 V/V |  0.982 V/V |          any |  0.989 V/V |      1.1 V/V |  0.992 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 7064580.000 Hz |          any | 10009600.000 Hz |          any | 13642200.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Bandwidth (MC)       | ngspice              | bw_mc                |          1e6 Hz |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Output noise         | ngspice              | noise                |             any |   0.090 mV |          any |   0.111 mV |       0.2 mV |   0.136 mV |   Pass ✅    |
| Settling time        | ngspice              | tsettle              |             any |   1.342 us |          any |   1.384 us |       1.5 us |   1.436 us |   Pass ✅    |

