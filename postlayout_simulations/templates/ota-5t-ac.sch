v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1030 -440 1030 -420 {
lab=GND}
N 1030 -520 1030 -500 {
lab=v_ss}
N 1030 -520 1130 -520 {
lab=v_ss}
N 880 -460 880 -440 {
lab=GND}
N 880 -900 880 -520 {
lab=v_dd}
N 1130 -750 1130 -660 {
lab=v_in}
N 1130 -750 1450 -750 {lab=v_in}
N 1130 -600 1130 -520 {lab=v_ss}
N 1400 -900 1400 -880 {
lab=v_dd}
N 1400 -820 1400 -720 {
lab=#net1}
N 1400 -720 1450 -720 {lab=#net1}
N 880 -900 1400 -900 {lab=v_dd}
N 1900 -620 1900 -520 {
lab=v_ss}
N 1820 -720 1900 -720 {lab=v_out}
N 1900 -720 1900 -680 {lab=v_out}
N 1820 -720 1820 -610 {
lab=v_out}
N 1370 -690 1450 -690 {lab=v_out}
N 1370 -690 1370 -610 {lab=v_out}
N 1370 -610 1820 -610 {lab=v_out}
N 1540 -900 1540 -770 {lab=v_dd}
N 1540 -670 1540 -520 {lab=v_ss}
N 1540 -520 1900 -520 {lab=v_ss}
N 1400 -900 1540 -900 {lab=v_dd}
N 1130 -520 1540 -520 {lab=v_ss}
N 1700 -720 1820 -720 {lab=v_out}
N 1540 -770 1550 -770 {lab=v_dd}
N 1540 -670 1550 -670 {lab=v_ss}
C {devices/title.sym} 550 100 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 40 -820 0 0 {name=NGSPICE only_toplevel=true 
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
C {devices/code_shown.sym} 40 -330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}

"}
C {devices/vsource.sym} 1030 -470 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1030 -420 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1030 -520 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 880 -490 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 880 -440 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 880 -530 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1130 -630 0 0 {name=Vin value="dc CACE\{vin\} ac 1"}
C {lab_wire.sym} 1190 -750 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1250 -750 0 0 {name=p5 attrs=""}
C {isource.sym} 1400 -850 0 0 {name=I0 value=CACE\{ibias\}}
C {capa.sym} 1900 -650 0 0 {name=C1
value=CACE\{cload\}}
C {lab_wire.sym} 1900 -720 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1780 -720 0 0 {name=p6 attrs=""}
C {/foss/designs/thesis/workspace/thesis_hp/designs/otas/5tota.sym} 1600 -720 0 0 {name=x1}
