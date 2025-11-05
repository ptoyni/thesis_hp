v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 990 -150 990 -130 {
lab=GND}
N 990 -230 990 -210 {
lab=v_ss}
N 990 -230 1090 -230 {
lab=v_ss}
N 840 -170 840 -150 {
lab=GND}
N 840 -610 840 -230 {
lab=v_dd}
N 1090 -460 1090 -370 {
lab=v_in}
N 1090 -460 1410 -460 {lab=v_in}
N 1090 -310 1090 -230 {lab=v_ss}
N 1360 -610 1360 -590 {
lab=v_dd}
N 1360 -530 1360 -430 {
lab=#net1}
N 1360 -430 1410 -430 {lab=#net1}
N 840 -610 1360 -610 {lab=v_dd}
N 1780 -430 1860 -430 {lab=v_out}
N 1780 -430 1780 -320 {
lab=v_out}
N 1330 -400 1410 -400 {lab=v_out}
N 1330 -400 1330 -320 {lab=v_out}
N 1330 -320 1780 -320 {lab=v_out}
N 1580 -430 1780 -430 {lab=v_out}
N 1460 -610 1460 -490 {lab=v_dd}
N 1360 -610 1460 -610 {lab=v_dd}
N 1090 -230 1460 -230 {lab=v_ss}
N 1460 -370 1460 -230 {lab=v_ss}
C {devices/vsource.sym} 990 -180 0 0 {name=Vss value=0}
C {devices/gnd.sym} 990 -130 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 990 -230 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 840 -200 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 840 -150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 840 -240 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1090 -340 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1150 -460 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1210 -460 0 0 {name=p5 attrs=""}
C {isource.sym} 1360 -560 0 0 {name=I0 value=14u}
C {lab_wire.sym} 1860 -430 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1740 -430 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 140 -1030 0 0 {name=NGSPICE1 only_toplevel=true 
value="



.include /foss/designs/thesis/thesis_hp/Designs/final_tapeout_submissions/ledamp/2_layout/postlayout_simulations/FMD_QNC_ota_decoup_extracted.cir    

.temp 27
.control
option sparse
save all
op
write tb_ac.raw
set appendwrite

ac dec 101 1k 1G
write tb_ac.raw
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
C {devices/title.sym} 790 90 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 140 -160 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::SG13G2_MODELS/sg13g2_bondpad.lib
.include $::SG13G2_MODELS/sg13g2_esd.lib
"}
C {/foss/designs/thesis/thesis_hp/Designs/final_tapeout_submissions/ledamp/1_schematics/FMD_QNC_ota_decoup.sym} 1560 -430 0 0 {name=x1}
