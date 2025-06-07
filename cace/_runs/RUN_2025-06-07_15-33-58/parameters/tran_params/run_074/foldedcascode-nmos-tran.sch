v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 930 -420 930 -400 {
lab=GND}
N 930 -500 930 -480 {
lab=v_ss}
N 930 -500 1030 -500 {
lab=v_ss}
N 780 -440 780 -420 {
lab=GND}
N 780 -880 780 -500 {
lab=v_dd}
N 1030 -730 1030 -640 {
lab=v_in}
N 1030 -730 1350 -730 {lab=v_in}
N 1030 -580 1030 -500 {lab=v_ss}
N 1300 -880 1300 -860 {
lab=v_dd}
N 1300 -800 1300 -700 {
lab=#net1}
N 1300 -700 1350 -700 {lab=#net1}
N 780 -880 1300 -880 {lab=v_dd}
N 1800 -600 1800 -500 {
lab=v_ss}
N 1720 -700 1800 -700 {lab=v_out}
N 1800 -700 1800 -660 {lab=v_out}
N 1720 -700 1720 -590 {
lab=v_out}
N 1270 -670 1350 -670 {lab=v_out}
N 1270 -670 1270 -590 {lab=v_out}
N 1270 -590 1720 -590 {lab=v_out}
N 1440 -880 1440 -750 {lab=v_dd}
N 1440 -650 1440 -500 {lab=v_ss}
N 1440 -500 1800 -500 {lab=v_ss}
N 1300 -880 1440 -880 {lab=v_dd}
N 1030 -500 1440 -500 {lab=v_ss}
N 1450 -750 1450 -740 {lab=v_dd}
N 1440 -750 1450 -750 {lab=v_dd}
N 1450 -660 1450 -650 {lab=v_ss}
N 1440 -650 1450 -650 {lab=v_ss}
N 1520 -700 1720 -700 {lab=v_out}
C {devices/title.sym} 550 170 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/vsource.sym} 930 -450 0 0 {name=Vss value=0}
C {devices/gnd.sym} 930 -400 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 930 -500 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 780 -470 0 0 {name=Vdd value=1.55}
C {devices/gnd.sym} 780 -420 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 780 -510 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1030 -610 0 0 {name=Vin value=0.7}
C {lab_wire.sym} 1090 -730 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1150 -730 0 0 {name=p5 attrs=""}
C {isource.sym} 1300 -830 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u 9.999999999999999e-06)"}
C {capa.sym} 1800 -630 0 0 {name=C1
value=2e-12}
C {lab_wire.sym} 1800 -700 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1680 -700 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 60 -870 0 0 {name=NGSPICE only_toplevel=true 
value="
.include /foss/designs/thesis/workspace/thesis_hp/cace/netlist/schematic/foldedcascode_nmos.spice
.temp 130
.param mc_ok = 1
.option SEED=12345

.ic v(v_out)=0
.option method=gear

.control
set num_threads=1
tran 0.005u 15u uic

let vout_limit=0.7*0.9
meas tran tcross WHEN v(v_out)=vout_limit


let tstart=0
let tsettle=tcross-tstart

echo $&tsettle > /foss/designs/thesis/workspace/thesis_hp/cace/_runs/RUN_2025-06-07_15-33-58/parameters/tran_params/run_074/foldedcascode-nmos-tran_74.data
.endc
"}
C {devices/code_shown.sym} 60 -370 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"}
C {foldedcascode_nmos.sym} 1500 -700 0 0 {name=x1}
