v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 410 -120 410 -100 {
lab=GND}
N 570 -190 640 -190 {
lab=GND}
N 410 -360 410 -220 {
lab=v_dd}
N 410 -360 640 -360 {
lab=v_dd}
N 640 -240 640 -220 {
lab=v_gs}
N 680 -190 710 -190 {
lab=v_gs}
N 710 -240 710 -190 {
lab=v_gs}
N 640 -240 710 -240 {
lab=v_gs}
N 640 -360 640 -340 {
lab=v_dd}
N 640 -280 640 -240 {
lab=v_gs}
N 850 -190 920 -190 {
lab=GND}
N 1090 -190 1160 -190 {
lab=GND}
N 1350 -190 1420 -190 {
lab=GND}
N 1290 -190 1310 -190 {
lab=v_gs}
N 1030 -190 1050 -190 {
lab=v_gs}
N 790 -190 810 -190 {
lab=v_gs}
N 790 -240 790 -190 {
lab=v_gs}
N 410 -120 570 -120 {
lab=GND}
N 410 -160 410 -120 {
lab=GND}
N 570 -190 570 -120 {
lab=GND}
N 570 -120 640 -120 {
lab=GND}
N 640 -160 640 -120 {
lab=GND}
N 640 -120 850 -120 {
lab=GND}
N 850 -160 850 -120 {
lab=GND}
N 850 -120 920 -120 {
lab=GND}
N 920 -190 920 -120 {
lab=GND}
N 1090 -160 1090 -120 {
lab=GND}
N 970 -120 1090 -120 {
lab=GND}
N 970 -140 970 -120 {
lab=GND}
N 920 -120 970 -120 {
lab=GND}
N 1090 -120 1160 -120 {
lab=GND}
N 1160 -190 1160 -120 {
lab=GND}
N 1210 -120 1350 -120 {
lab=GND}
N 1350 -160 1350 -120 {
lab=GND}
N 1350 -120 1420 -120 {
lab=GND}
N 1420 -190 1420 -120 {
lab=GND}
N 1290 -240 1290 -190 {
lab=v_gs}
N 710 -190 790 -190 {
lab=v_gs}
N 1030 -240 1030 -190 {
lab=v_gs}
N 790 -240 1030 -240 {
lab=v_gs}
N 850 -340 970 -340 {
lab=out1}
N 970 -340 970 -200 {
lab=out1}
N 1210 -140 1210 -120 {
lab=GND}
N 1160 -120 1210 -120 {
lab=GND}
N 1210 -340 1210 -190 {
lab=out2}
N 1090 -340 1210 -340 {
lab=out2}
N 1030 -240 1290 -240 {
lab=v_gs}
N 1350 -340 1470 -340 {
lab=out3}
N 1470 -340 1470 -200 {
lab=out3}
N 1470 -140 1470 -120 {
lab=GND}
N 1420 -120 1470 -120 {
lab=GND}
N 850 -260 850 -220 {
lab=#net1}
N 850 -340 850 -320 {
lab=out1}
N 1090 -260 1090 -220 {
lab=#net2}
N 1090 -340 1090 -320 {
lab=out2}
N 1350 -260 1350 -220 {
lab=#net3}
N 1350 -340 1350 -320 {
lab=out3}
C {devices/code_shown.sym} 30 80 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 30 -370 0 0 {name=NGSPICE only_toplevel=true 
value="

.control
save all

op
write current_mirror.raw
dc Vout1 0 1.5 10m
plot i(viout1) vs v(out1)
dc Vout2 0 1.5 10m
plot i(viout2) vs v(out2)
dc Vout3 0 1.5 10m
plot i(viout3) vs v(out3)

.endc
"}
C {devices/vsource.sym} 410 -190 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 410 -100 0 0 {name=l3 lab=GND}
C {devices/title.sym} 190 150 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {sg13g2_pr/sg13_lv_nmos.sym} 660 -190 0 1 {name=M1
l=5u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/isource.sym} 640 -310 0 0 {name=Ibias value=20u}
C {devices/lab_pin.sym} 710 -190 0 1 {name=p1 sig_type=std_logic lab=v_gs}
C {devices/lab_pin.sym} 410 -360 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {sg13g2_pr/sg13_lv_nmos.sym} 830 -190 0 0 {name=M2
l=5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1070 -190 0 0 {name=M3
l=5u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1330 -190 0 0 {name=M4
l=5u
w=8u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 970 -170 0 0 {name=Vout1 value=0.6
}
C {devices/vsource.sym} 1210 -170 0 0 {name=Vout2 value=0.6}
C {devices/vsource.sym} 1470 -170 0 0 {name=Vout3 value=0.6}
C {devices/spice_probe.sym} 850 -340 0 0 {name=p3 attrs=""}
C {devices/spice_probe.sym} 1090 -340 0 0 {name=p4 attrs=""}
C {devices/spice_probe.sym} 1350 -340 0 0 {name=p5 attrs=""}
C {devices/spice_probe.sym} 710 -240 0 0 {name=p6 attrs=""}
C {devices/lab_pin.sym} 970 -340 0 1 {name=p7 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 1210 -340 0 1 {name=p8 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 1470 -340 0 1 {name=p9 sig_type=std_logic lab=out3}
C {devices/ammeter.sym} 850 -290 0 0 {name=Viout1 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1090 -290 0 0 {name=Viout2 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1350 -290 0 0 {name=Viout3 savecurrent=true spice_ignore=0}
