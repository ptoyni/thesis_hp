v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 700 -410 700 -400 {lab=#net1}
N 700 -410 820 -410 {lab=#net1}
N 700 -430 700 -410 {lab=#net1}
N 1000 -410 1020 -410 {lab=v_out}
N 930 -350 930 -330 {lab=GND}
N 700 -340 700 -330 {lab=GND}
N 660 -440 660 -420 {lab=Vref}
N 660 -350 660 -330 {lab=Vref}
N 700 -520 700 -490 {lab=v_in}
N 1000 -160 1000 -140 {lab=#net2}
N 1000 -80 1000 -60 {lab=GND}
N 1000 -410 1000 -240 {lab=v_out}
N 880 -410 1000 -410 {lab=v_out}
N 660 -200 720 -200 {lab=Vref}
N 660 -160 1000 -160 {lab=#net2}
N 1000 -180 1000 -160 {lab=#net2}
N 580 -370 660 -370 {lab=#net3}
N 500 -410 500 -370 {lab=Vcomp}
N 500 -460 660 -460 {lab=Vcomp}
N 620 -230 620 -210 {lab=Veamp}
N 360 -410 500 -410 {lab=Vcomp}
N 500 -460 500 -410 {lab=Vcomp}
N 290 -350 290 -330 {lab=GND}
N 620 -150 620 -130 {lab=GND}
N 360 -450 360 -410 {lab=Vcomp}
N 290 -410 360 -410 {lab=Vcomp}
N 10 -660 10 -620 {lab=Vramp}
N 10 -560 10 -540 {lab=GND}
C {devices/vsource.sym} 10 -590 0 0 {name=Vramp value="DC 0 PWL(
+ 0      0
+ 10u    2.5   10.001u 0
+ 20u    2.5   20.001u 0
+ 30u    2.5   30.001u 0
+ 40u    2.5   40.001u 0
+ 50u    2.5   50.001u 0
+ 60u    2.5   60.001u 0
+ 70u    2.5   70.001u 0
+ 80u    2.5   80.001u 0
+ 90u    2.5   90.001u 0
+ 100u   2.5   100.001u 0
+ 110u   2.5   110.001u 0
+ 120u   2.5   120.001u 0
+ 130u   2.5   130.001u 0
+ 140u   2.5   140.001u 0
+ 150u   2.5   150.001u 0
+ 160u   2.5   160.001u 0
+ 170u   2.5   170.001u 0
+ 180u   2.5   180.001u 0
+ 190u   2.5   190.001u 0
+ 200u   2.5   200.001u 0
))" savecurrent=false}
C {devices/switch_ngspice.sym} 700 -460 0 0 {name=S5 model=mysw}
C {devices/switch_ngspice.sym} 700 -370 0 0 {name=S1 model=mysw}
C {ind.sym} 850 -410 1 0 {name=L1
m=1
value=72u
footprint=1206
device=inductor}
C {devices/capa.sym} 930 -380 0 0 {name=C7
m=1
value=10u
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
C {devices/vsource.sym} 230 -640 0 0 {name=Vref value=2.5}
C {devices/lab_wire.sym} 10 -660 0 0 {name=p1 sig_type=std_logic lab=Vramp
}
C {devices/lab_wire.sym} 230 -670 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {vcvs.sym} 620 -180 0 1 {name=E1 value=1000}
C {devices/lab_wire.sym} 720 -200 0 1 {name=p4 sig_type=std_logic lab=Vref}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 540 -370 0 0 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 620 -230 0 0 {name=p5 sig_type=std_logic lab=Veamp}
C {devices/gnd.sym} 290 -330 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 620 -130 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 1160 -570 0 0 {name=NGSPICE only_toplevel=true 
value="

.option method=gear reltol=1e-3
.param vdd=5

.model mysw SW vt=2.5 ron=1 roff=10G

Vvin v_in 0 DC 24

.control
save all
.ic V(v_out)=2.5 V(Vcomp)=0

tran 10n 200u
plot v(v_out) 
.endc
"}
C {devices/title.sym} 240 90 0 0 {name=l9 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 1190 -200 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 1180 -120 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/gnd.sym} 10 -540 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 230 -610 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 360 -450 1 0 {name=p8 sig_type=std_logic lab=Vcomp}
C {devices/vsource.sym} 290 -380 0 0 {name=E3 value="TABLE \{(V(Veamp)-V(Vramp))\} = (-1 0) (0 1) (1 1)"}
C {devices/lab_wire.sym} 660 -420 0 0 {name=p6 sig_type=std_logic lab=Vref}
C {devices/lab_wire.sym} 660 -330 0 0 {name=p7 sig_type=std_logic lab=Vref}
