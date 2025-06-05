v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 810 -410 810 -390 {
lab=GND}
N 810 -490 810 -470 {
lab=v_ss}
N 810 -490 910 -490 {
lab=v_ss}
N 660 -430 660 -410 {
lab=GND}
N 660 -870 660 -490 {
lab=v_dd}
N 910 -720 910 -630 {
lab=v_in}
N 910 -720 1230 -720 {lab=v_in}
N 910 -570 910 -490 {lab=v_ss}
N 1180 -870 1180 -850 {
lab=v_dd}
N 1180 -790 1180 -690 {
lab=#net1}
N 1180 -690 1230 -690 {lab=#net1}
N 660 -870 1180 -870 {lab=v_dd}
N 1680 -590 1680 -490 {
lab=v_ss}
N 1600 -690 1680 -690 {lab=v_out}
N 1680 -690 1680 -650 {lab=v_out}
N 1600 -690 1600 -580 {
lab=v_out}
N 1150 -660 1230 -660 {lab=v_out}
N 1150 -660 1150 -580 {lab=v_out}
N 1150 -580 1600 -580 {lab=v_out}
N 1320 -870 1320 -740 {lab=v_dd}
N 1320 -640 1320 -490 {lab=v_ss}
N 1320 -490 1680 -490 {lab=v_ss}
N 1180 -870 1320 -870 {lab=v_dd}
N 910 -490 1320 -490 {lab=v_ss}
N 1440 -690 1600 -690 {lab=v_out}
C {devices/title.sym} 330 130 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} -180 -790 0 0 {name=NGSPICE only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

.control
set num_threads=1

op
let dcgain=v(v_out)/v(v_in)

ac dec 101 10 100MEG
meas ac acgain MAX vmag(v_out) FROM=10 TO=100
let f3db = acgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1

echo $&op1.dcgain $&fbw > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/vsource.sym} 810 -440 0 0 {name=Vss value=0}
C {devices/gnd.sym} 810 -390 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 810 -490 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 660 -460 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 660 -410 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 660 -500 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 910 -600 0 0 {name=Vin value="dc CACE\{vin\} ac 1"}
C {lab_wire.sym} 970 -720 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1030 -720 0 0 {name=p5 attrs=""}
C {isource.sym} 1180 -820 0 0 {name=I0 value=CACE\{ibias\}}
C {capa.sym} 1680 -620 0 0 {name=C1
value=CACE\{cload\}}
C {lab_wire.sym} 1680 -690 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1560 -690 0 0 {name=p6 attrs=""}
C {foldedcascode.sym} 1380 -690 0 0 {name=x1}
C {devices/code_shown.sym} -190 -320 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner_mos\}
.lib cornerMOShv.lib mos_CACE\{corner_mos\}
"}
