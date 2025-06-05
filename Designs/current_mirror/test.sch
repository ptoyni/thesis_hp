v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -170 540 -150 {
lab=GND}
N 700 -240 770 -240 {
lab=GND}
N 540 -780 770 -780 {
lab=v_dd}
N 810 -240 840 -240 {
lab=v_gs}
N 770 -780 770 -760 {
lab=v_dd}
N 770 -330 770 -270 {
lab=#net1}
N 980 -240 1050 -240 {
lab=GND}
N 540 -170 700 -170 {
lab=GND}
N 540 -210 540 -170 {
lab=GND}
N 700 -240 700 -170 {
lab=GND}
N 700 -170 770 -170 {
lab=GND}
N 770 -210 770 -170 {
lab=GND}
N 770 -170 980 -170 {
lab=GND}
N 980 -210 980 -170 {
lab=GND}
N 980 -170 1050 -170 {
lab=GND}
N 1050 -240 1050 -170 {
lab=GND}
N 1100 -190 1100 -170 {
lab=GND}
N 1050 -170 1100 -170 {
lab=GND}
N 840 -240 940 -240 {
lab=v_gs}
N 980 -390 1100 -390 {
lab=out1}
N 1100 -390 1100 -250 {
lab=out1}
N 980 -310 980 -270 {
lab=#net2}
N 980 -390 980 -370 {
lab=out1}
N 770 -630 770 -580 {lab=v_gs}
N 770 -520 770 -480 {lab=#net3}
N 770 -420 770 -390 {lab=#net4}
N 700 -360 700 -240 {lab=GND}
N 700 -550 770 -550 {lab=GND}
N 700 -450 770 -450 {lab=GND}
N 700 -550 700 -450 {lab=GND}
N 700 -360 770 -360 {lab=GND}
N 700 -450 700 -360 {lab=GND}
N 770 -630 840 -630 {lab=v_gs}
N 770 -700 770 -630 {lab=v_gs}
N 840 -360 840 -240 {lab=v_gs}
N 810 -360 840 -360 {lab=v_gs}
N 840 -450 840 -360 {lab=v_gs}
N 810 -450 840 -450 {lab=v_gs}
N 840 -550 840 -450 {lab=v_gs}
N 810 -550 840 -550 {lab=v_gs}
N 840 -630 840 -550 {lab=v_gs}
N 540 -780 540 -270 {lab=v_dd}
C {devices/vsource.sym} 540 -240 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 540 -150 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 790 -240 0 1 {name=M1
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/isource.sym} 770 -730 0 0 {name=Ibias value=20u}
C {devices/lab_pin.sym} 840 -240 0 1 {name=p1 sig_type=std_logic lab=v_gs}
C {devices/lab_pin.sym} 540 -780 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {sg13g2_pr/sg13_lv_nmos.sym} 960 -240 0 0 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 1100 -220 0 0 {name=Vout1 value=0.6
}
C {devices/spice_probe.sym} 980 -390 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 840 -290 0 0 {name=p6 attrs=""}
C {devices/lab_pin.sym} 1100 -390 0 1 {name=p7 sig_type=std_logic lab=out1}
C {devices/ammeter.sym} 980 -340 0 0 {name=Viout1 savecurrent=true spice_ignore=0}
C {sg13g2_pr/sg13_lv_nmos.sym} 790 -360 0 1 {name=M3
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 790 -450 0 1 {name=M4
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 790 -550 0 1 {name=M5
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/code_shown.sym} 40 -740 0 0 {name=NGSPICE only_toplevel=true 
value="

.control
save all

op
write current_mirror_test.raw
dc Vout1 0 1.5 10m
plot i(viout1) vs v(out1)


.endc
"}
C {devices/code_shown.sym} 30 -320 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/title.sym} 190 80 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
