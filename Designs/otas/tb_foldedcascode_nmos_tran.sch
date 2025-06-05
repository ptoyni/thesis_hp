v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -100 540 -80 {
lab=GND}
N 620 -100 620 -80 {
lab=GND}
N 620 -180 620 -160 {
lab=v_ss}
N 1490 -330 1490 -180 {
lab=v_ss}
N 1290 -430 1290 -310 {
lab=v_out}
N 920 -310 1290 -310 {
lab=v_out}
N 920 -400 920 -310 {
lab=v_out}
N 920 -400 990 -400 {
lab=v_out}
N 720 -310 720 -180 {
lab=v_ss}
N 620 -180 720 -180 {
lab=v_ss}
N 720 -460 720 -370 {
lab=v_in}
N 720 -460 990 -460 {
lab=v_in}
N 920 -430 990 -430 {lab=#net1}
N 920 -510 920 -430 {lab=#net1}
N 1290 -430 1490 -430 {lab=v_out}
N 1490 -430 1490 -390 {lab=v_out}
N 540 -570 540 -160 {lab=v_dd}
N 1080 -570 1080 -470 {lab=v_dd}
N 1080 -180 1490 -180 {
lab=v_ss}
N 720 -180 1080 -180 {
lab=v_ss}
N 540 -570 1080 -570 {lab=v_dd}
N 1080 -470 1090 -470 {lab=v_dd}
N 1080 -390 1090 -390 {lab=v_ss}
N 1080 -390 1080 -180 {lab=v_ss}
N 1160 -430 1290 -430 {lab=v_out}
C {devices/code_shown.sym} 70 -90 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_ss
"}
C {devices/vsource.sym} 540 -130 0 0 {name=Vdd value=1.45
}
C {devices/gnd.sym} 540 -80 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 540 -180 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 620 -130 0 0 {name=Vss value=0}
C {devices/gnd.sym} 620 -80 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 620 -180 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1490 -360 0 0 {name=C1
value=2p}
C {lab_wire.sym} 1490 -430 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 720 -340 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 780 -460 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 920 -540 0 0 {name=I0 value= 10u}
C {spice_probe.sym} 840 -460 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1340 -430 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 70 -570 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.temp -40

.ic v(v_out)=0
.option method=gear

.control

tran 0.005u 15u uic
plot v_out

let vout_limit=0.8*0.9
meas tran tcross WHEN v(v_out)=vout_limit

let tstart=0
let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/title.sym} 310 50 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {foldedcascode_nmos.sym} 1140 -430 0 0 {name=x1}
