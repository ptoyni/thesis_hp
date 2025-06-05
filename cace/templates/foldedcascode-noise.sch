v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 980 -320 980 -300 {
lab=GND}
N 980 -400 980 -380 {
lab=v_ss}
N 980 -400 1080 -400 {
lab=v_ss}
N 830 -340 830 -320 {
lab=GND}
N 830 -780 830 -400 {
lab=v_dd}
N 1080 -630 1080 -540 {
lab=v_in}
N 1080 -630 1400 -630 {lab=v_in}
N 1080 -480 1080 -400 {lab=v_ss}
N 1350 -780 1350 -760 {
lab=v_dd}
N 1350 -700 1350 -600 {
lab=#net1}
N 1350 -600 1400 -600 {lab=#net1}
N 830 -780 1350 -780 {lab=v_dd}
N 1850 -500 1850 -400 {
lab=v_ss}
N 1770 -600 1850 -600 {lab=v_out}
N 1850 -600 1850 -560 {lab=v_out}
N 1770 -600 1770 -490 {
lab=v_out}
N 1320 -570 1400 -570 {lab=v_out}
N 1320 -570 1320 -490 {lab=v_out}
N 1320 -490 1770 -490 {lab=v_out}
N 1490 -780 1490 -650 {lab=v_dd}
N 1490 -550 1490 -400 {lab=v_ss}
N 1490 -400 1850 -400 {lab=v_ss}
N 1350 -780 1490 -780 {lab=v_dd}
N 1080 -400 1490 -400 {lab=v_ss}
N 1610 -600 1770 -600 {lab=v_out}
C {devices/vsource.sym} 980 -350 0 0 {name=Vss value=0}
C {devices/gnd.sym} 980 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 980 -400 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 830 -370 0 0 {name=Vdd value=CACE\{vdd\}}
C {devices/gnd.sym} 830 -320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 830 -410 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1080 -510 0 0 {name=Vin value="dc CACE\{vin\} ac 1"}
C {lab_wire.sym} 1140 -630 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1200 -630 0 0 {name=p5 attrs=""}
C {isource.sym} 1350 -730 0 0 {name=I0 value=CACE\{ibias\}}
C {capa.sym} 1850 -530 0 0 {name=C1
value=CACE\{cload\}}
C {lab_wire.sym} 1850 -600 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1730 -600 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 20 -910 0 0 {name=NGSPICE only_toplevel=true 
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
C {devices/title.sym} 390 100 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {foldedcascode.sym} 1550 -600 0 0 {name=x1}
C {devices/code_shown.sym} 0 -490 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner_mos\}
.lib cornerMOShv.lib mos_CACE\{corner_mos\}
"}
