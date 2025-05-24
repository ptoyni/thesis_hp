v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 690 -180 690 -160 {
lab=GND}
N 770 -180 770 -160 {
lab=GND}
N 770 -260 770 -240 {
lab=v_ss}
N 1640 -410 1640 -260 {
lab=v_ss}
N 1440 -510 1440 -390 {
lab=v_out}
N 1070 -390 1440 -390 {
lab=v_out}
N 1070 -480 1070 -390 {
lab=v_out}
N 1070 -480 1140 -480 {
lab=v_out}
N 870 -390 870 -260 {
lab=v_ss}
N 770 -260 870 -260 {
lab=v_ss}
N 870 -540 870 -450 {
lab=v_in}
N 870 -540 1140 -540 {
lab=v_in}
N 1070 -510 1140 -510 {lab=#net1}
N 1070 -590 1070 -510 {lab=#net1}
N 1440 -510 1640 -510 {lab=v_out}
N 1640 -510 1640 -470 {lab=v_out}
N 690 -650 690 -240 {lab=v_dd}
N 1230 -650 1230 -560 {lab=v_dd}
N 1230 -460 1230 -260 {lab=v_ss}
N 1230 -260 1640 -260 {
lab=v_ss}
N 870 -260 1230 -260 {
lab=v_ss}
N 690 -650 1230 -650 {lab=v_dd}
N 1350 -510 1440 -510 {lab=v_out}
C {devices/code_shown.sym} 80 -80 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 80 -160 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 100 -520 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.ic v(v_vout)=0
.control

tran 0.005u 15u uic
plot v_out

let tstart=0
let vout_limit = 0.7*0.99
meas tran tcross WHEN v(v_out)=vout_limit

let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} 690 -210 0 0 {name=Vdd value=1.5
}
C {devices/gnd.sym} 690 -160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 690 -260 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 770 -210 0 0 {name=Vss value=0}
C {devices/gnd.sym} 770 -160 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 770 -260 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1640 -440 0 0 {name=C1
value=0.1p}
C {lab_wire.sym} 1640 -510 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 870 -420 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 930 -540 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1070 -620 0 0 {name=I0 value= 6u}
C {spice_probe.sym} 990 -540 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1490 -510 0 0 {name=p6 attrs=""}
C {devices/title.sym} 240 80 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {foldedcascode.sym} 1290 -510 0 0 {name=x1}
