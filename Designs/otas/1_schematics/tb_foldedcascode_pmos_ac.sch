v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1020 -130 1020 -110 {
lab=GND}
N 1020 -210 1020 -190 {
lab=v_ss}
N 1020 -210 1120 -210 {
lab=v_ss}
N 870 -150 870 -130 {
lab=GND}
N 870 -590 870 -210 {
lab=v_dd}
N 1120 -440 1120 -350 {
lab=v_in}
N 1120 -440 1440 -440 {lab=v_in}
N 1120 -290 1120 -210 {lab=v_ss}
N 1390 -590 1390 -570 {
lab=v_dd}
N 1390 -510 1390 -410 {
lab=#net1}
N 1390 -410 1440 -410 {lab=#net1}
N 870 -590 1390 -590 {lab=v_dd}
N 1810 -410 1890 -410 {lab=v_out}
N 1810 -410 1810 -300 {
lab=v_out}
N 1360 -380 1440 -380 {lab=v_out}
N 1360 -380 1360 -300 {lab=v_out}
N 1360 -300 1810 -300 {lab=v_out}
N 1610 -410 1810 -410 {lab=v_out}
N 1490 -590 1490 -470 {lab=v_dd}
N 1390 -590 1490 -590 {lab=v_dd}
N 1120 -210 1490 -210 {lab=v_ss}
N 1490 -350 1490 -210 {lab=v_ss}
N 1490 -470 1500 -470 {lab=v_dd}
N 1490 -350 1500 -350 {lab=v_ss}
C {devices/vsource.sym} 1020 -160 0 0 {name=Vss value=0}
C {devices/gnd.sym} 1020 -110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1020 -210 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 870 -180 0 0 {name=Vdd value=1.55}
C {devices/gnd.sym} 870 -130 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 870 -220 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1120 -320 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1180 -440 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1240 -440 0 0 {name=p5 attrs=""}
C {isource.sym} 1390 -540 0 0 {name=I0 value=14u}
C {lab_wire.sym} 1890 -410 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1770 -410 0 0 {name=p6 attrs=""}
C {devices/title.sym} 630 50 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {foldedcascode_pmos.sym} 1590 -410 0 0 {name=x1}
C {devices/code_shown.sym} 210 -100 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::SG13G2_MODELS/sg13g2_bondpad.lib
.include $::SG13G2_MODELS/sg13g2_esd.lib
"}
C {devices/code_shown.sym} 200 -890 0 0 {name=NGSPICE1 only_toplevel=true 
value="

*.include /foss/designs/thesis/thesis_hp/designs/otas/3_kpex/ota_final__ota_final/magic_CC/ota_final.pex.spice

*.include /foss/designs/thesis/thesis_hp/Designs/otas/1_schematics/simulations/ota_final.spice

.include /foss/designs/thesis/TO_July2025_OTALED/OTALED/design_data/lvs/foldedcascode_pmos_extracted.cir
            

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
