v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 920 -460 920 -440 {
lab=GND}
N 920 -540 920 -520 {
lab=v_ss}
N 920 -540 1020 -540 {
lab=v_ss}
N 770 -480 770 -460 {
lab=GND}
N 770 -920 770 -540 {
lab=v_dd}
N 1020 -770 1020 -680 {
lab=v_in}
N 1020 -770 1340 -770 {lab=v_in}
N 1020 -620 1020 -540 {lab=v_ss}
N 1290 -920 1290 -900 {
lab=v_dd}
N 1290 -840 1290 -740 {
lab=#net1}
N 1290 -740 1340 -740 {lab=#net1}
N 770 -920 1290 -920 {lab=v_dd}
N 1790 -640 1790 -540 {
lab=v_ss}
N 1710 -740 1790 -740 {lab=v_out}
N 1790 -740 1790 -700 {lab=v_out}
N 1710 -740 1710 -630 {
lab=v_out}
N 1260 -710 1340 -710 {lab=v_out}
N 1260 -710 1260 -630 {lab=v_out}
N 1260 -630 1710 -630 {lab=v_out}
N 1430 -920 1430 -790 {lab=v_dd}
N 1430 -690 1430 -540 {lab=v_ss}
N 1430 -540 1790 -540 {lab=v_ss}
N 1290 -920 1430 -920 {lab=v_dd}
N 1020 -540 1430 -540 {lab=v_ss}
N 1590 -740 1710 -740 {lab=v_out}
N 1430 -790 1440 -790 {lab=v_dd}
N 1430 -690 1440 -690 {lab=v_ss}
C {devices/title.sym} 540 130 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/vsource.sym} 920 -490 0 0 {name=Vss value=0}
C {devices/gnd.sym} 920 -440 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 920 -540 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 770 -510 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 770 -460 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 770 -550 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1020 -650 0 0 {name=Vin value=CACE\{vin\}}
C {lab_wire.sym} 1080 -770 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1140 -770 0 0 {name=p5 attrs=""}
C {isource.sym} 1290 -870 0 0 {name=I0 value="dc 0 pwl(0 0 1.1u 0 1.2u CACE\{ibias\})"}
C {capa.sym} 1790 -670 0 0 {name=C1
value=CACE\{cload\}}
C {lab_wire.sym} 1790 -740 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1670 -740 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 50 -910 0 0 {name=NGSPICE only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

.ic v(v_out)=0
.option method=gear

.control
set num_threads=1
tran 0.005u 15u uic

let vout_limit=CACE\{vin\}*0.99
meas tran tcross WHEN v(v_out)=vout_limit


let tstart=0
let tsettle=tcross-tstart

echo $&tsettle > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/code_shown.sym} 50 -410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
"}
C {/foss/designs/thesis/workspace/thesis_hp/designs/otas/5tota.sym} 1490 -740 0 0 {name=x1}
