
# CACE Summary for foldedcascode_nmos

**netlist source**: schematic

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Output voltage ratio | ngspice              | gain                 |        0.98 V/V |  0.994 V/V |          any |  0.997 V/V |      1.1 V/V |  0.998 V/V |   Pass ✅    |
| Bandwidth            | ngspice              | bw                   |          1e6 Hz | 3155670.000 Hz |          any | 4223180.000 Hz |          any | 5326870.000 Hz |   Pass ✅    |
| Output voltage ratio (MC) | ngspice              | gain_mc              |             any |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Bandwidth (MC)       | ngspice              | bw_mc                |          1e6 Hz |          ​ |          any |          ​ |          any |          ​ |   Error ❗   |
| Output noise         | ngspice              | noise                |             any |   0.134 mV |          any |   0.164 mV |       0.2 mV |   0.202 mV |   Fail ❌    |
| Settling time        | ngspice              | tsettle              |             any |   1.396 us |          any |   1.476 us |       1.4 us |   1.551 us |   Fail ❌    |

