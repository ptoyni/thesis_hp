v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 960 -150 960 -130 {
lab=GND}
N 960 -230 960 -210 {
lab=v_ss}
N 960 -230 1060 -230 {
lab=v_ss}
N 810 -170 810 -150 {
lab=GND}
N 810 -610 810 -230 {
lab=v_dd}
N 1060 -460 1060 -370 {
lab=v_in}
N 1060 -460 1380 -460 {lab=v_in}
N 1060 -310 1060 -230 {lab=v_ss}
N 1330 -610 1330 -590 {
lab=v_dd}
N 1330 -530 1330 -430 {
lab=#net1}
N 1330 -430 1380 -430 {lab=#net1}
N 810 -610 1330 -610 {lab=v_dd}
N 1750 -430 1830 -430 {lab=v_out}
N 1750 -430 1750 -320 {
lab=v_out}
N 1300 -400 1380 -400 {lab=v_out}
N 1300 -400 1300 -320 {lab=v_out}
N 1300 -320 1750 -320 {lab=v_out}
N 1550 -430 1750 -430 {lab=v_out}
N 1430 -610 1430 -490 {lab=v_dd}
N 1330 -610 1430 -610 {lab=v_dd}
N 1060 -230 1430 -230 {lab=v_ss}
N 1430 -370 1430 -230 {lab=v_ss}
C {devices/vsource.sym} 960 -180 0 0 {name=Vss value=0}
C {devices/gnd.sym} 960 -130 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 960 -230 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 810 -200 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 810 -150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 810 -240 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 1060 -340 0 0 {name=Vin value="dc 0.7 ac 1"}
C {lab_wire.sym} 1120 -460 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 1180 -460 0 0 {name=p5 attrs=""}
C {isource.sym} 1330 -560 0 0 {name=I0 value=14u}
C {lab_wire.sym} 1830 -430 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1710 -430 0 0 {name=p6 attrs=""}
C {devices/code_shown.sym} 110 -1030 0 0 {name=NGSPICE1 only_toplevel=true 
value="



.include /foss/designs/thesis/thesis_hp/Designs/final_tapeout_submission/3_kpex/output/FMD_QNC_ota_decoup__FMD_QNC_ota_decoup/magic_cc/FMD_QNC_ota_decoup.pex.spice
            

            




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
C {devices/title.sym} 760 90 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
C {devices/code_shown.sym} 110 -160 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.include $::SG13G2_MODELS/sg13g2_bondpad.lib
.include $::SG13G2_MODELS/sg13g2_esd.lib
"}
C {/foss/designs/thesis/thesis_hp/Designs/otas/1_schematics/ota_final.sym} 1530 -430 0 0 {name=x1}
