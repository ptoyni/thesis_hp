v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 810 -360 810 -340 {
lab=GND}
N 810 -440 810 -420 {
lab=v_ss}
N 810 -440 910 -440 {
lab=v_ss}
N 660 -380 660 -360 {
lab=GND}
N 660 -820 660 -440 {
lab=v_dd}
N 910 -670 910 -580 {
lab=v_in}
N 910 -670 1230 -670 {lab=v_in}
N 910 -520 910 -440 {lab=v_ss}
N 1180 -820 1180 -800 {
lab=v_dd}
N 1180 -740 1180 -640 {
lab=#net1}
N 1180 -640 1230 -640 {lab=#net1}
N 660 -820 1180 -820 {lab=v_dd}
N 1680 -540 1680 -440 {
lab=v_ss}
N 1600 -640 1680 -640 {lab=v_out}
N 1680 -640 1680 -600 {lab=v_out}
N 1600 -640 1600 -530 {
lab=v_out}
N 1330 -440 1680 -440 {lab=v_ss}
N 1150 -610 1230 -610 {lab=v_out}
N 1150 -610 1150 -530 {lab=v_out}
N 1150 -530 1600 -530 {lab=v_out}
N 1330 -820 1330 -690 {lab=v_dd}
N 1180 -820 1330 -820 {lab=v_dd}
N 1330 -590 1330 -440 {lab=v_ss}
N 910 -440 1330 -440 {lab=v_ss}
N 1480 -640 1600 -640 {lab=v_out}
C {devices/code_shown.sym} 60 -50 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_ss
"}
C {devices/code_shown.sym} 60 -130 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 60 -890 0 0 {name=NGSPICE only_toplevel=true 
value="

.control
.temp -40
option sparse
save all
op
write tb_5t_ota_ac.raw
set appendwrite

ac dec 101 1k 1G
write tb_5t_ota_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror



plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/vsource.sym} 810 -390 0 0 {name=Vss value=0}
C {devices/gnd.sym} 810 -340 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 810 -440 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 660 -410 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 660 -360 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 660 -450 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 910 -550 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 970 -670 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1030 -670 0 0 {name=p5 attrs=""}
C {isource.sym} 1180 -770 0 0 {name=I0 value=20u}
C {capa.sym} 1680 -570 0 0 {name=C1
value=2p}
C {lab_wire.sym} 1680 -640 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1560 -640 0 0 {name=p6 attrs=""}
C {devices/title.sym} 350 150 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {5tota.sym} 1380 -640 0 0 {name=x1}
