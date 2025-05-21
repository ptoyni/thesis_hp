v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 840 -220 840 -200 {
lab=GND}
N 840 -300 840 -280 {
lab=v_ss}
N 840 -300 940 -300 {
lab=v_ss}
N 690 -240 690 -220 {
lab=GND}
N 690 -680 690 -300 {
lab=v_dd}
N 940 -530 940 -440 {
lab=v_in}
N 940 -530 1260 -530 {lab=v_in}
N 940 -380 940 -300 {lab=v_ss}
N 1210 -680 1210 -660 {
lab=v_dd}
N 1210 -600 1210 -500 {
lab=#net1}
N 1210 -500 1260 -500 {lab=#net1}
N 690 -680 1210 -680 {lab=v_dd}
N 1710 -400 1710 -300 {
lab=v_ss}
N 1630 -500 1710 -500 {lab=v_out}
N 1710 -500 1710 -460 {lab=v_out}
N 1630 -500 1630 -390 {
lab=v_out}
N 1350 -300 1710 -300 {lab=v_ss}
N 1180 -470 1260 -470 {lab=v_out}
N 1180 -470 1180 -390 {lab=v_out}
N 1180 -390 1630 -390 {lab=v_out}
N 1350 -450 1350 -300 {lab=v_ss}
N 940 -300 1350 -300 {lab=v_ss}
N 1350 -680 1350 -550 {lab=v_dd}
N 1210 -680 1350 -680 {lab=v_dd}
N 1470 -500 1630 -500 {lab=v_out}
C {devices/vsource.sym} 840 -250 0 0 {name=Vss value=0}
C {devices/gnd.sym} 840 -200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 840 -300 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 690 -270 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 690 -220 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 690 -310 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 940 -410 0 0 {name=Vin value="dc 0.6 ac 1"}
C {lab_wire.sym} 1000 -530 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1060 -530 0 0 {name=p5 attrs=""}
C {isource.sym} 1210 -630 0 0 {name=I0 value=6u}
C {capa.sym} 1710 -430 0 0 {name=C1
value=5p}
C {lab_wire.sym} 1710 -500 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1590 -500 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 70 -70 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 70 -150 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 70 -870 0 0 {name=NGSPICE1 only_toplevel=true 
value="

.control
option sparse
save all
op
write foldedcascode_ac.raw
set appendwrite

ac dec 101 1k 1G
write foldedcascode_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

meas ac gain_cross_freq WHEN vdb(v_out)=0 CROSS=1
meas ac phase_at_gain_cross phase(v_out) AT gain_cross_freq
let phase_margin = 180 + phase_at_gain_cross
print gain_cross_freq
print phase_at_gain_cross
print phase_margin

plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {foldedcascode.sym} 1410 -500 0 0 {name=x1}
C {devices/title.sym} 350 150 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
