v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1150 -390 1150 -370 {
lab=GND}
N 1150 -470 1150 -450 {
lab=v_ss}
N 1150 -470 1250 -470 {
lab=v_ss}
N 1000 -410 1000 -390 {
lab=GND}
N 1000 -850 1000 -470 {
lab=v_dd}
N 1250 -700 1250 -610 {
lab=v_in}
N 1250 -700 1570 -700 {lab=v_in}
N 1250 -550 1250 -470 {lab=v_ss}
N 1520 -850 1520 -830 {
lab=v_dd}
N 1520 -770 1520 -670 {
lab=#net1}
N 1520 -670 1570 -670 {lab=#net1}
N 1000 -850 1520 -850 {lab=v_dd}
N 2020 -570 2020 -470 {
lab=v_ss}
N 1940 -670 2020 -670 {lab=v_out}
N 2020 -670 2020 -630 {lab=v_out}
N 1940 -670 1940 -560 {
lab=v_out}
N 1490 -640 1570 -640 {lab=v_out}
N 1490 -640 1490 -560 {lab=v_out}
N 1490 -560 1940 -560 {lab=v_out}
N 1660 -850 1660 -720 {lab=v_dd}
N 1660 -620 1660 -470 {lab=v_ss}
N 1660 -470 2020 -470 {lab=v_ss}
N 1520 -850 1660 -850 {lab=v_dd}
N 1250 -470 1660 -470 {lab=v_ss}
N 1670 -720 1670 -710 {lab=v_dd}
N 1660 -720 1670 -720 {lab=v_dd}
N 1670 -630 1670 -620 {lab=v_ss}
N 1660 -620 1670 -620 {lab=v_ss}
N 1740 -670 1940 -670 {lab=v_out}
C {devices/title.sym} 670 150 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 160 -770 0 0 {name=NGSPICE only_toplevel=true 
value="
.include /foss/designs/thesis/workspace/thesis_hp/cace/netlist/schematic/foldedcascode_nmos.spice
.temp 130
.param mc_ok = 1
.option SEED=12345

.control
set num_threads=1

op
let dcgain=v(v_out)/v(v_in)

ac dec 101 10 100MEG
meas ac acgain MAX vmag(v_out) FROM=10 TO=100
let f3db = acgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1

echo $&op1.dcgain $&fbw > /foss/designs/thesis/workspace/thesis_hp/cace/_runs/RUN_2025-06-07_01-35-42/parameters/ac_params/run_032/foldedcascode-nmos-ac_32.data
.endc
"}
C {devices/vsource.sym} 1150 -420 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1150 -370 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1150 -470 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 1000 -440 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 1000 -390 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 1000 -480 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1250 -580 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1310 -700 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1370 -700 0 0 {name=p5 attrs=""}
C {isource.sym} 1520 -800 0 0 {name=I0 value=9.999999999999999e-06}
C {capa.sym} 2020 -600 0 0 {name=C1
value=2e-12}
C {lab_wire.sym} 2020 -670 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1900 -670 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 150 -300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_sf
.lib cornerMOShv.lib mos_sf
"}
C {foldedcascode_nmos.sym} 1720 -670 0 0 {name=x1}
