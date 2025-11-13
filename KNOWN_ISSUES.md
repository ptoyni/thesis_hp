1. ESD Protection P_cells:

- We have different four types of ESD protection pcells provided by IHP Foundry.

- namely nmoscl_2, nmoscl_4, diodevss_4kv. diodevdd_4kv, diodevss_2kv and diodevdd_2kv

- We used diodevss2kv, diodevdd2kv and it is destroying the gain of the ota completely.

- compared it with other esd protection diodes and saw their behaviour still same.


2. PMOS Dummy Transistors in PMOS Foldedcascode Topology:

- I have added dummy transistors around PMOS active load due to some reason the upper pair of pmos active load which is connected to AVDD has issue with dummies.

- Klayout is not matching netlist even though all the nets, devices and pins are matching and highlighting issue with VDD.

- After further debugging, it results as topmost upper active load pair has dummies whose except drain everything is short to AVDD.

- Creating flag with AVDD pin. But why it triggers LVS mismatch unknown. More research needs to be done on this.


3. Limitations in current IIC-OSIC Toolchain and PDK:

- Klayout is enable to publish DRC files. DRC can be checked in Macro Development but totally manual.
    - unable to click on error and see it in layout.
    - have to manually find in whole gds.

- Magic have almost no support for ihp PDK.
    - cannot open or write gds in it.

- Newer releases of KLayout in IIC-OSIC Image are resolving issues.

4. KPEX:
- Not working due to lambda value issues.
- Python script to run PEX isn't fully supported and throws errors.
- Didn't run with preprovided LVSDB file.
- Currently, removed from IIC-OSIC toolchain.