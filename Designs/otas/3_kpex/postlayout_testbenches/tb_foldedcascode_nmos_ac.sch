v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 860 -120 860 -100 {
lab=GND}
N 860 -200 860 -180 {
lab=v_ss}
N 860 -200 960 -200 {
lab=v_ss}
N 710 -140 710 -120 {
lab=GND}
N 710 -580 710 -200 {
lab=v_dd}
N 960 -430 960 -340 {
lab=v_in}
N 960 -430 1280 -430 {lab=v_in}
N 960 -280 960 -200 {lab=v_ss}
N 1230 -580 1230 -560 {
lab=v_dd}
N 1230 -500 1230 -400 {
lab=#net1}
N 1230 -400 1280 -400 {lab=#net1}
N 710 -580 1230 -580 {lab=v_dd}
N 1730 -300 1730 -200 {
lab=v_ss}
N 1650 -400 1730 -400 {lab=v_out}
N 1730 -400 1730 -360 {lab=v_out}
N 1650 -400 1650 -290 {
lab=v_out}
N 1200 -370 1280 -370 {lab=v_out}
N 1200 -370 1200 -290 {lab=v_out}
N 1200 -290 1650 -290 {lab=v_out}
N 1450 -400 1650 -400 {lab=v_out}
N 1330 -580 1330 -460 {lab=v_dd}
N 1230 -580 1330 -580 {lab=v_dd}
N 1330 -200 1730 -200 {lab=v_ss}
N 960 -200 1330 -200 {lab=v_ss}
N 1330 -340 1330 -200 {lab=v_ss}
C {devices/vsource.sym} 860 -150 0 0 {name=Vss value=0}
C {devices/gnd.sym} 860 -100 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 860 -200 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 710 -170 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 710 -120 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 710 -210 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 960 -310 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1020 -430 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1080 -430 0 0 {name=p5 attrs=""}
C {isource.sym} 1230 -530 0 0 {name=I0 value=14u}
C {capa.sym} 1730 -330 0 0 {name=C1
value=2p}
C {lab_wire.sym} 1730 -400 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1610 -400 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 50 -20 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 50 -790 0 0 {name=NGSPICE1 only_toplevel=true 
value="

*.include /foss/designs/thesis/thesis_hp/designs/otas/3_kpex/ota_final__ota_final/magic_CC/ota_final.pex.spice

*.include /foss/designs/thesis/thesis_hp/Designs/otas/1_schematics/simulations/ota_final.spice

.include /foss/designs/thesis/thesis_hp/Designs/otas/2_layout/lvs/ota_final_extracted.cir
            

.temp 27
.control
option sparse
save all
op
write tb_foldedcascode_nmos_ac.raw
set appendwrite

ac dec 101 1k 1G
write tb_foldedcascode_nmos_ac.raw
plot 20*log10(v_out)



meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror



plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/title.sym} 470 60 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {/foss/designs/thesis/thesis_hp/Designs/otas/1_schematics/ota_final.sym} 1430 -400 0 0 {name=x1}
