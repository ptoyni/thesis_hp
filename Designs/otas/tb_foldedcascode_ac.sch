v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -380 790 -360 {
lab=GND}
N 790 -460 790 -440 {
lab=v_ss}
N 790 -460 890 -460 {
lab=v_ss}
N 640 -400 640 -380 {
lab=GND}
N 640 -840 640 -460 {
lab=v_dd}
N 890 -690 890 -600 {
lab=v_in}
N 890 -690 1210 -690 {lab=v_in}
N 890 -540 890 -460 {lab=v_ss}
N 1160 -840 1160 -820 {
lab=v_dd}
N 1160 -760 1160 -660 {
lab=#net1}
N 1160 -660 1210 -660 {lab=#net1}
N 640 -840 1160 -840 {lab=v_dd}
N 1660 -560 1660 -460 {
lab=v_ss}
N 1580 -660 1660 -660 {lab=v_out}
N 1660 -660 1660 -620 {lab=v_out}
N 1580 -660 1580 -550 {
lab=v_out}
N 1130 -630 1210 -630 {lab=v_out}
N 1130 -630 1130 -550 {lab=v_out}
N 1130 -550 1580 -550 {lab=v_out}
N 1300 -840 1300 -710 {lab=v_dd}
N 1300 -610 1300 -460 {lab=v_ss}
N 1300 -460 1660 -460 {lab=v_ss}
N 1160 -840 1300 -840 {lab=v_dd}
N 890 -460 1300 -460 {lab=v_ss}
N 1420 -660 1580 -660 {lab=v_out}
C {devices/code_shown.sym} 40 -70 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 40 -150 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -910 0 0 {name=NGSPICE only_toplevel=true 
value="

.control
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
C {devices/vsource.sym} 790 -410 0 0 {name=Vss value=0}
C {devices/gnd.sym} 790 -360 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 790 -460 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 640 -430 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 640 -380 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 640 -470 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 890 -570 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 950 -690 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1010 -690 0 0 {name=p5 attrs=""}
C {isource.sym} 1160 -790 0 0 {name=I0 value=6u}
C {capa.sym} 1660 -590 0 0 {name=C1
value=1p}
C {lab_wire.sym} 1660 -660 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1540 -660 0 0 {name=p6 attrs=""}
C {devices/title.sym} 330 130 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {foldedcascode.sym} 1360 -660 0 0 {name=x1}
