v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 150 -470 300 -470 300 -300 150 -300 150 -470 {dash = 4}
P 4 5 -290 -510 80 -510 80 -300 -290 -300 -290 -510 {dash = 4}
P 4 5 620 -250 880 -250 880 -80 620 -80 620 -250 {dash = 4}
P 4 5 620 -550 1120 -550 1120 -290 620 -290 620 -550 {dash = 4}
P 4 5 430 -470 610 -470 610 -300 430 -300 430 -470 {dash = 4}
T {Level Shifter} 150 -300 0 0 0.4 0.4 {}
T {Low voltage comparator} -290 -300 0 0 0.4 0.4 {}
T {Low voltage error amplifier} 620 -80 0 0 0.4 0.4 {}
T {Power Stage} 990 -580 0 0 0.4 0.4 {}
T {Gate Driver} 430 -300 0 0 0.4 0.4 {}
N 700 -410 700 -400 {lab=v_switch}
N 700 -410 820 -410 {lab=v_switch}
N 700 -430 700 -410 {lab=v_switch}
N 1000 -410 1020 -410 {lab=v_out}
N 930 -350 930 -330 {lab=GND}
N 700 -340 700 -330 {lab=GND}
N 660 -440 660 -420 {lab=GND}
N 660 -350 660 -330 {lab=GND}
N 700 -520 700 -490 {lab=v_in}
N 1000 -80 1000 -60 {lab=GND}
N 1000 -410 1000 -240 {lab=v_out}
N 880 -410 1000 -410 {lab=v_out}
N 580 -370 660 -370 {lab=#net1}
N 500 -460 660 -460 {lab=#net2}
N 500 -420 500 -370 {lab=#net2}
N -220 -450 -220 -410 {lab=Vcomp}
N 1000 -160 1000 -140 {lab=v_fb}
N -220 -410 180 -410 {lab=Vcomp}
N -150 -580 -150 -560 {
lab=GND}
N -150 -670 -150 -640 {lab=v_dd}
N 690 -210 730 -210 {lab=Veamp}
N 770 -160 1000 -160 {lab=v_fb}
N 1000 -180 1000 -160 {lab=v_fb}
N 770 -200 800 -200 {lab=Vref}
N 220 -420 500 -420 {lab=#net2}
N 500 -460 500 -420 {lab=#net2}
C {devices/vsource.sym} 160 -610 0 0 {name=Vramp value="DC 0 PWL(0 0.3 0.1u 0.3 10u 1.2 10.1u 0.3 20u 1.2 20.1u 0.3 30u 1.2 30.1u 0.3 40u 1.2 40.1u 0.3 50u 1.2 50.1u 0.3 60u 1.2 60.1u 0.3 70u 1.2 70.1u 0.3 80u 1.2 80.1u 0.3 90u 1.2 90.1u 0.3 100u 1.2 100.1u 0.3 110u 1.2 110.1u 0.3 120u 1.2 120.1u 0.3 130u 1.2 130.1u 0.3 140u 1.2 140.1u 0.3 150u 1.2 150.1u 0.3 160u 1.2 160.1u 0.3 170u 1.2 170.1u 0.3 180u 1.2 180.1u 0.3 190u 1.2 190.1u 0.3 200u 1.2 200.1u 0.3 210u 1.2 210.1u 0.3 220u 1.2 220.1u 0.3 230u 1.2 230.1u 0.3 240u 1.2 240.1u 0.3 250u 1.2 250.1u 0.3 260u 1.2 260.1u 0.3 270u 1.2 270.1u 0.3 280u 1.2 280.1u 0.3 290u 1.2 290.1u 0.3 300u 1.2)" savecurrent=false}
C {devices/switch_ngspice.sym} 700 -460 0 0 {name=S5 model=mysw}
C {devices/switch_ngspice.sym} 700 -370 0 0 {name=S1 model=mysw}
C {ind.sym} 850 -410 1 0 {name=L1
m=1
value=10u
footprint=1206
device=inductor}
C {devices/capa.sym} 930 -380 0 0 {name=C7
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 930 -330 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 700 -330 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 700 -520 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 1020 -410 0 1 {name=p3 sig_type=std_logic lab=v_out}
C {res.sym} 1000 -210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1000 -110 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1000 -60 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -20 -610 0 0 {name=Vref value=2.5}
C {devices/lab_wire.sym} 160 -640 0 0 {name=p1 sig_type=std_logic lab=Vramp
}
C {devices/lab_wire.sym} -20 -640 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {devices/lab_wire.sym} 800 -200 0 1 {name=p4 sig_type=std_logic lab=Vref}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 540 -370 0 0 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 690 -210 0 0 {name=p5 sig_type=std_logic lab=Veamp}
C {devices/code_shown.sym} 1350 -530 0 0 {name=NGSPICE only_toplevel=true 
value="

.option method=gear reltol=1e-3
.param vdd=5

.model mysw SW vt=2.5 ron=0.1 roff=10G


Vvin v_in 0 DC 18

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
C {devices/title.sym} 240 90 0 0 {name=l9 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 1350 -60 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 1350 30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/gnd.sym} 160 -580 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} -20 -580 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} -220 -450 1 0 {name=p8 sig_type=std_logic lab=Vcomp}
C {lab_wire.sym} 1000 -160 0 1 {name=p9 sig_type=std_logic lab=v_fb}
C {lab_wire.sym} 740 -410 0 1 {name=p10 sig_type=std_logic lab=v_switch}
C {devices/gnd.sym} 660 -330 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 660 -420 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -220 -380 0 0 {name=E2 value="TABLE \{V(Veamp,Vramp)\} = (-0.15, 0.3V) (0.15, 1.2)"}
C {devices/gnd.sym} -220 -350 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -150 -610 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} -150 -560 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -150 -670 0 0 {name=p6 sig_type=std_logic lab=v_dd}
C {vcvs.sym} 730 -180 0 1 {name=E1 value=100}
C {devices/gnd.sym} 730 -150 0 0 {name=l8 lab=GND}
C {vcvs.sym} 220 -390 0 0 {name=E3 value=4.7}
C {devices/gnd.sym} 220 -360 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 180 -370 0 0 {name=l14 lab=GND}
