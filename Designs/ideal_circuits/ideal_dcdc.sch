v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 690 -1220 840 -1220 840 -1050 690 -1050 690 -1220 {dash = 4}
P 4 5 250 -1260 620 -1260 620 -1050 250 -1050 250 -1260 {dash = 4}
P 4 5 1160 -1000 1420 -1000 1420 -830 1160 -830 1160 -1000 {dash = 4}
P 4 5 1160 -1300 1660 -1300 1660 -1040 1160 -1040 1160 -1300 {dash = 4}
P 4 5 970 -1220 1150 -1220 1150 -1050 970 -1050 970 -1220 {dash = 4}
T {Level Shifter} 690 -1050 0 0 0.4 0.4 {}
T {Low voltage comparator} 250 -1050 0 0 0.4 0.4 {}
T {Low voltage error amplifier} 1160 -830 0 0 0.4 0.4 {}
T {Power Stage} 1530 -1330 0 0 0.4 0.4 {}
T {Gate Driver} 970 -1050 0 0 0.4 0.4 {}
N 1240 -1160 1240 -1150 {lab=v_switch}
N 1240 -1160 1360 -1160 {lab=v_switch}
N 1240 -1180 1240 -1160 {lab=v_switch}
N 1540 -1160 1560 -1160 {lab=v_out}
N 1470 -1100 1470 -1080 {lab=GND}
N 1240 -1090 1240 -1080 {lab=GND}
N 1200 -1190 1200 -1170 {lab=GND}
N 1200 -1100 1200 -1080 {lab=GND}
N 1240 -1270 1240 -1240 {lab=v_in}
N 1540 -830 1540 -810 {lab=GND}
N 1540 -1160 1540 -990 {lab=v_out}
N 1420 -1160 1540 -1160 {lab=v_out}
N 1120 -1120 1200 -1120 {lab=#net1}
N 1040 -1210 1200 -1210 {lab=#net2}
N 1040 -1170 1040 -1120 {lab=#net2}
N 320 -1200 320 -1160 {lab=Vcomp}
N 1540 -910 1540 -890 {lab=v_fb}
N 320 -1160 720 -1160 {lab=Vcomp}
N 390 -1330 390 -1310 {
lab=GND}
N 390 -1420 390 -1390 {lab=v_dd}
N 1230 -960 1270 -960 {lab=Veamp}
N 1310 -910 1540 -910 {lab=v_fb}
N 1540 -930 1540 -910 {lab=v_fb}
N 1310 -950 1340 -950 {lab=Vref}
N 760 -1170 1040 -1170 {lab=#net2}
N 1040 -1210 1040 -1170 {lab=#net2}
C {devices/vsource.sym} 700 -1360 0 0 {name=Vramp value="DC 0 PWL(0 0.3 0.1u 0.3 10u 1.2 10.1u 0.3 20u 1.2 20.1u 0.3 30u 1.2 30.1u 0.3 40u 1.2 40.1u 0.3 50u 1.2 50.1u 0.3 60u 1.2 60.1u 0.3 70u 1.2 70.1u 0.3 80u 1.2 80.1u 0.3 90u 1.2 90.1u 0.3 100u 1.2 100.1u 0.3 110u 1.2 110.1u 0.3 120u 1.2 120.1u 0.3 130u 1.2 130.1u 0.3 140u 1.2 140.1u 0.3 150u 1.2 150.1u 0.3 160u 1.2 160.1u 0.3 170u 1.2 170.1u 0.3 180u 1.2 180.1u 0.3 190u 1.2 190.1u 0.3 200u 1.2 200.1u 0.3 210u 1.2 210.1u 0.3 220u 1.2 220.1u 0.3 230u 1.2 230.1u 0.3 240u 1.2 240.1u 0.3 250u 1.2 250.1u 0.3 260u 1.2 260.1u 0.3 270u 1.2 270.1u 0.3 280u 1.2 280.1u 0.3 290u 1.2 290.1u 0.3 300u 1.2)" savecurrent=false}
C {devices/switch_ngspice.sym} 1240 -1210 0 0 {name=S5 model=mysw}
C {devices/switch_ngspice.sym} 1240 -1120 0 0 {name=S1 model=mysw}
C {ind.sym} 1390 -1160 1 0 {name=L1
m=1
value=10u
footprint=1206
device=inductor}
C {devices/capa.sym} 1470 -1130 0 0 {name=C7
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1470 -1080 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1240 -1080 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 1240 -1270 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 1560 -1160 0 1 {name=p3 sig_type=std_logic lab=v_out}
C {res.sym} 1540 -960 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1540 -860 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1540 -810 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 520 -1360 0 0 {name=Vref value=2.5}
C {devices/lab_wire.sym} 700 -1390 0 0 {name=p1 sig_type=std_logic lab=Vramp
}
C {devices/lab_wire.sym} 520 -1390 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {devices/lab_wire.sym} 1340 -950 0 1 {name=p4 sig_type=std_logic lab=Vref}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 1080 -1120 0 0 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 1230 -960 0 0 {name=p5 sig_type=std_logic lab=Veamp}
C {devices/code_shown.sym} 1890 -1280 0 0 {name=NGSPICE only_toplevel=true 
value="

.option method=gear reltol=1e-3
.param vdd=5

.model mysw SW vt=2.5 ron=0.1 roff=10G


Vvin v_in 0 DC 24

.control
save all
.ic V(v_out)=5


tran 10n 300u
plot v(v_out) 
plot v(Veamp) 
plot v(Vcomp)
plot v(v_switch)
plot v(v_fb)
plot v(Vramp)
.endc
"}
C {devices/title.sym} 780 -660 0 0 {name=l9 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 1890 -810 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 1890 -720 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/gnd.sym} 700 -1330 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 520 -1330 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 320 -1200 1 0 {name=p8 sig_type=std_logic lab=Vcomp}
C {lab_wire.sym} 1540 -910 0 1 {name=p9 sig_type=std_logic lab=v_fb}
C {lab_wire.sym} 1280 -1160 0 1 {name=p10 sig_type=std_logic lab=v_switch}
C {devices/gnd.sym} 1200 -1080 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1200 -1170 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 320 -1130 0 0 {name=E2 value="TABLE \{V(Veamp,Vramp)\} = (-0.15, 0.3V) (0.15, 1.2)"}
C {devices/gnd.sym} 320 -1100 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 390 -1360 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 390 -1310 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 390 -1420 0 0 {name=p6 sig_type=std_logic lab=v_dd}
C {vcvs.sym} 1270 -930 0 1 {name=E1 value=100}
C {devices/gnd.sym} 1270 -900 0 0 {name=l8 lab=GND}
C {vcvs.sym} 760 -1140 0 0 {name=E3 value=4.7}
C {devices/gnd.sym} 760 -1110 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 720 -1120 0 0 {name=l14 lab=GND}
