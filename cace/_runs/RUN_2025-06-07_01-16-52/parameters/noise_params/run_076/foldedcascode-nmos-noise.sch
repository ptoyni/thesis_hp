v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1010 -180 1010 -160 {
lab=GND}
N 1010 -260 1010 -240 {
lab=v_ss}
N 1010 -260 1110 -260 {
lab=v_ss}
N 860 -200 860 -180 {
lab=GND}
N 860 -640 860 -260 {
lab=v_dd}
N 1110 -490 1110 -400 {
lab=v_in}
N 1110 -490 1430 -490 {lab=v_in}
N 1110 -340 1110 -260 {lab=v_ss}
N 1380 -640 1380 -620 {
lab=v_dd}
N 1380 -560 1380 -460 {
lab=#net1}
N 1380 -460 1430 -460 {lab=#net1}
N 860 -640 1380 -640 {lab=v_dd}
N 1880 -360 1880 -260 {
lab=v_ss}
N 1800 -460 1880 -460 {lab=v_out}
N 1880 -460 1880 -420 {lab=v_out}
N 1800 -460 1800 -350 {
lab=v_out}
N 1350 -430 1430 -430 {lab=v_out}
N 1350 -430 1350 -350 {lab=v_out}
N 1350 -350 1800 -350 {lab=v_out}
N 1520 -640 1520 -510 {lab=v_dd}
N 1520 -410 1520 -260 {lab=v_ss}
N 1520 -260 1880 -260 {lab=v_ss}
N 1380 -640 1520 -640 {lab=v_dd}
N 1110 -260 1520 -260 {lab=v_ss}
N 1530 -510 1530 -500 {lab=v_dd}
N 1520 -510 1530 -510 {lab=v_dd}
N 1530 -420 1530 -410 {lab=v_ss}
N 1520 -410 1530 -410 {lab=v_ss}
N 1600 -460 1800 -460 {lab=v_out}
C {devices/vsource.sym} 1010 -210 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1010 -160 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1010 -260 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 860 -230 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 860 -180 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 860 -270 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1110 -370 0 0 {name=Vin value="dc 0.8 ac 1"}
C {lab_wire.sym} 1170 -490 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1230 -490 0 0 {name=p5 attrs=""}
C {isource.sym} 1380 -590 0 0 {name=I0 value=9.999999999999999e-06}
C {capa.sym} 1880 -390 0 0 {name=C1
value=2e-12}
C {lab_wire.sym} 1880 -460 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1760 -460 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 50 -770 0 0 {name=NGSPICE only_toplevel=true 
value="
.include /foss/designs/thesis/workspace/thesis_hp/cace/netlist/schematic/foldedcascode_nmos.spice
.temp 130
.param mc_ok = 1
.option SEED=12345
.option sparse

.control
set num_threads=1
save all
noise v(v_out) Vin dec 101 1k 100MEG

let noise=onoise_total
echo $&noise > /foss/designs/thesis/workspace/thesis_hp/cace/_runs/RUN_2025-06-07_01-16-52/parameters/noise_params/run_076/foldedcascode-nmos-noise_76.data
.endc
"}
C {devices/title.sym} 420 240 0 0 {name=l6 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 30 -350 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"}
C {foldedcascode_nmos.sym} 1580 -460 0 0 {name=x1}
