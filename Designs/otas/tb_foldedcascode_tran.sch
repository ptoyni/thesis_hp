v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 650 -70 650 -50 {
lab=GND}
N 730 -70 730 -50 {
lab=GND}
N 730 -150 730 -130 {
lab=v_ss}
N 1600 -300 1600 -150 {
lab=v_ss}
N 1400 -400 1400 -280 {
lab=v_out}
N 1030 -280 1400 -280 {
lab=v_out}
N 1030 -370 1030 -280 {
lab=v_out}
N 1030 -370 1100 -370 {
lab=v_out}
N 830 -280 830 -150 {
lab=v_ss}
N 730 -150 830 -150 {
lab=v_ss}
N 830 -430 830 -340 {
lab=v_in}
N 830 -430 1100 -430 {
lab=v_in}
N 1030 -400 1100 -400 {lab=#net1}
N 1030 -480 1030 -400 {lab=#net1}
N 1400 -400 1600 -400 {lab=v_out}
N 1600 -400 1600 -360 {lab=v_out}
N 650 -540 650 -130 {lab=v_dd}
N 1190 -540 1190 -450 {lab=v_dd}
N 1190 -350 1190 -150 {lab=v_ss}
N 1190 -150 1600 -150 {
lab=v_ss}
N 830 -150 1190 -150 {
lab=v_ss}
N 650 -540 1190 -540 {lab=v_dd}
N 1310 -400 1400 -400 {lab=v_out}
C {devices/code_shown.sym} 180 -60 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_ss
"}
C {devices/vsource.sym} 650 -100 0 0 {name=Vdd value=1.45
}
C {devices/gnd.sym} 650 -50 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 650 -150 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 730 -100 0 0 {name=Vss value=0}
C {devices/gnd.sym} 730 -50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 730 -150 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1600 -330 0 0 {name=C1
value=2p}
C {lab_wire.sym} 1600 -400 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 830 -310 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 890 -430 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1030 -510 0 0 {name=I0 value= 17.4u}
C {spice_probe.sym} 950 -430 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1450 -400 0 0 {name=p6 attrs=""}
C {foldedcascode.sym} 1250 -400 0 0 {name=x1}
C {devices/code_shown.sym} 180 -540 0 0 {name=NGSPICE1 only_toplevel=true 
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
C {devices/title.sym} 420 80 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
