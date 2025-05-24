v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -70 490 -50 {
lab=GND}
N 650 -140 720 -140 {
lab=GND}
N 790 -140 890 -140 {
lab=v_gs}
N 930 -140 1000 -140 {
lab=GND}
N 490 -70 650 -70 {
lab=GND}
N 490 -110 490 -70 {
lab=GND}
N 650 -140 650 -70 {
lab=GND}
N 650 -70 720 -70 {
lab=GND}
N 720 -110 720 -70 {
lab=GND}
N 720 -70 930 -70 {
lab=GND}
N 930 -110 930 -70 {
lab=GND}
N 930 -70 1000 -70 {
lab=GND}
N 1000 -140 1000 -70 {
lab=GND}
N 1050 -90 1050 -70 {
lab=GND}
N 1000 -70 1050 -70 {
lab=GND}
N 930 -210 930 -170 {
lab=#net1}
N 490 -530 720 -530 {lab=v_dd}
N 490 -530 490 -170 {lab=v_dd}
N 720 -450 720 -430 {lab=#net2}
N 720 -190 720 -170 {lab=v_gs}
N 720 -450 790 -450 {lab=#net2}
N 720 -470 720 -450 {lab=#net2}
N 790 -400 890 -400 {lab=#net2}
N 930 -540 1050 -540 {lab=out1}
N 1050 -540 1050 -150 {lab=out1}
N 930 -540 930 -510 {lab=out1}
N 930 -450 930 -430 {lab=#net3}
N 930 -370 930 -270 {lab=#net4}
N 650 -400 650 -140 {lab=GND}
N 650 -400 720 -400 {lab=GND}
N 930 -400 1000 -400 {lab=GND}
N 1000 -400 1000 -140 {lab=GND}
N 790 -190 790 -140 {lab=v_gs}
N 760 -140 790 -140 {
lab=v_gs}
N 720 -190 790 -190 {lab=v_gs}
N 720 -370 720 -190 {lab=v_gs}
N 790 -450 790 -400 {lab=#net2}
N 760 -400 790 -400 {lab=#net2}
C {devices/code_shown.sym} 110 130 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 110 -320 0 0 {name=NGSPICE only_toplevel=true 
value="

.control
save all

op
write current_mirror.raw
dc Vout1 0 1.5 10m
plot i(viout1) i(viout2) vs v(out1) 



.endc
"}
C {devices/vsource.sym} 490 -140 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 490 -50 0 0 {name=l3 lab=GND}
C {devices/title.sym} 270 200 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 -140 0 1 {name=M1
l=5u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/isource.sym} 720 -500 0 0 {name=Ibias value=20u}
C {devices/lab_pin.sym} 790 -140 0 1 {name=p1 sig_type=std_logic lab=v_gs}
C {devices/lab_pin.sym} 490 -530 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 -140 0 0 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 1050 -120 0 0 {name=Vout1 value=0.6
}
C {devices/spice_probe.sym} 930 -290 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 790 -190 0 0 {name=p6 attrs=""}
C {devices/lab_pin.sym} 1050 -540 0 1 {name=p7 sig_type=std_logic lab=out1}
C {devices/ammeter.sym} 930 -240 0 0 {name=Viout1 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 -400 0 1 {name=M3
l=5u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 -400 0 0 {name=M4
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ammeter.sym} 930 -480 0 0 {name=Viout2 savecurrent=true spice_ignore=0}
