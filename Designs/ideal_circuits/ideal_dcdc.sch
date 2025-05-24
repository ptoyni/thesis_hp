v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 10 180 20 {lab=#net1}
N 180 10 300 10 {lab=#net1}
N 180 -10 180 10 {lab=#net1}
N 480 10 500 10 {lab=v_out}
N 410 70 410 90 {lab=GND}
N 180 80 180 90 {lab=GND}
N 140 -20 140 -0 {lab=GND}
N 140 70 140 90 {lab=GND}
N 180 -100 180 -70 {lab=v_in}
N 480 260 480 280 {lab=#net2}
N 480 340 480 360 {lab=GND}
N 480 10 480 180 {lab=v_out}
N 360 10 480 10 {lab=v_out}
N 140 220 200 220 {lab=Vref}
N 140 260 480 260 {lab=#net2}
N 480 240 480 260 {lab=#net2}
N 60 50 140 50 {lab=#net3}
N -20 10 -20 50 {lab=#net4}
N -20 -40 140 -40 {lab=#net4}
N 100 190 100 210 {lab=Veamp}
N -230 10 -20 10 {lab=#net4}
N -20 -40 -20 10 {lab=#net4}
N -340 60 -270 60 {lab=Vramp}
N -340 20 -270 20 {lab=Veamp}
N -230 70 -230 90 {lab=GND}
C {devices/vsource.sym} -370 -290 0 0 {name=Vramp value="DC 0 PULSE(0 5 0 1n 1n 5u 10u)" savecurrent=false}
C {devices/switch_ngspice.sym} 180 -40 0 0 {name=S5 model=mysw}
C {devices/switch_ngspice.sym} 180 50 0 0 {name=S1 model=mysw}
C {ind.sym} 330 10 1 0 {name=L1
m=1
value=10u
footprint=1206
device=inductor}
C {devices/capa.sym} 410 40 0 0 {name=C7
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 410 90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 180 90 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 140 0 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 140 90 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 180 -100 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 500 10 0 1 {name=p3 sig_type=std_logic lab=v_out}
C {res.sym} 480 210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 480 310 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 480 360 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -90 -290 0 0 {name=Vref value=5}
C {devices/lab_wire.sym} -370 -320 0 0 {name=p1 sig_type=std_logic lab=Vramp
}
C {devices/lab_wire.sym} -90 -320 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {vcvs.sym} 100 240 0 1 {name=E1 value=-1000}
C {devices/lab_wire.sym} 200 220 0 1 {name=p4 sig_type=std_logic lab=Vref}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 20 50 0 0 {name=x2 VDD=1.5 VSS=0 prefix=sg13g2_ }
C {devices/lab_wire.sym} 100 190 0 0 {name=p5 sig_type=std_logic lab=Veamp}
C {vcvs.sym} -230 40 0 0 {name=E2 value=-1000}
C {devices/lab_wire.sym} -340 20 0 0 {name=p6 sig_type=std_logic lab=Veamp}
C {devices/lab_wire.sym} -340 60 0 0 {name=p7 sig_type=std_logic lab=Vramp
}
C {devices/gnd.sym} -230 90 0 0 {name=l7 lab=GND}
