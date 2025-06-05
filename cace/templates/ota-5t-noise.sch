v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1020 -280 1020 -260 {
lab=GND}
N 1020 -360 1020 -340 {
lab=v_ss}
N 1020 -360 1120 -360 {
lab=v_ss}
N 870 -300 870 -280 {
lab=GND}
N 870 -740 870 -360 {
lab=v_dd}
N 1120 -590 1120 -500 {
lab=v_in}
N 1120 -590 1440 -590 {lab=v_in}
N 1120 -440 1120 -360 {lab=v_ss}
N 1390 -740 1390 -720 {
lab=v_dd}
N 1390 -660 1390 -560 {
lab=#net1}
N 1390 -560 1440 -560 {lab=#net1}
N 870 -740 1390 -740 {lab=v_dd}
N 1890 -460 1890 -360 {
lab=v_ss}
N 1810 -560 1890 -560 {lab=v_out}
N 1890 -560 1890 -520 {lab=v_out}
N 1810 -560 1810 -450 {
lab=v_out}
N 1360 -530 1440 -530 {lab=v_out}
N 1360 -530 1360 -450 {lab=v_out}
N 1360 -450 1810 -450 {lab=v_out}
N 1530 -740 1530 -610 {lab=v_dd}
N 1530 -510 1530 -360 {lab=v_ss}
N 1530 -360 1890 -360 {lab=v_ss}
N 1390 -740 1530 -740 {lab=v_dd}
N 1120 -360 1530 -360 {lab=v_ss}
N 1690 -560 1810 -560 {lab=v_out}
N 1530 -610 1540 -610 {lab=v_dd}
N 1530 -510 1540 -510 {lab=v_ss}
C {devices/vsource.sym} 1020 -310 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1020 -260 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1020 -360 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 870 -330 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 870 -280 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 870 -370 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1120 -470 0 0 {name=Vin value="dc CACE\{vin\} ac 1"}
C {lab_wire.sym} 1180 -590 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1240 -590 0 0 {name=p5 attrs=""}
C {isource.sym} 1390 -690 0 0 {name=I0 value=CACE\{ibias\}}
C {capa.sym} 1890 -490 0 0 {name=C1
value=CACE\{cload\}}
C {lab_wire.sym} 1890 -560 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1770 -560 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 60 -870 0 0 {name=NGSPICE only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.option sparse

.control
set num_threads=1
save all
noise v(v_out) Vin dec 101 1k 100MEG

let noise=onoise_total
echo $&noise > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/code_shown.sym} 60 -380 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
"}
C {devices/title.sym} 430 140 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {/foss/designs/thesis/workspace/thesis_hp/designs/otas/5tota.sym} 1590 -560 0 0 {name=x1}
