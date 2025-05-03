v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/lab_wire.sym} 270 -170 0 1 {name=p6 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 40 -330 0 0 {name=Vdd1 value=1.5}
C {devices/vsource.sym} 120 -330 0 0 {name=Vss1 value=0}
C {devices/lab_wire.sym} 40 -360 0 1 {name=p8 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 120 -360 0 1 {name=p9 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} 220 -200 1 0 {name=p10 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 220 -140 1 1 {name=p11 sig_type=std_logic lab=Vss}
C {devices/code_shown.sym} 540 -730 0 0 {name=NGSPICE1 only_toplevel=true 
value="
*Vin v_in 0 dc 0 pulse(0 1.5 0 1n 1n 4n 10n)

.control
reset
dc vin 0 1.5 0.01 
save all
let VP = 1.5
let vo_mid = VP/2
let dvout = deriv(v(v_out))
meas DC VSW find v(v_in) when v(v_out)=vo_mid
meas DC VIL find v(v_in) WHEN dvout=-1 CROSS=1
meas DC VIH find v(v_in) WHEN dvout=-1 CROSS=2
meas DC VOL find v(v_out) WHEN dvout=-1 CROSS=2
meas DC VOH find v(v_out) WHEN dvout=-1 CROSS=1
echo VTC measurements
print VSW
print VIL
print VIH
print VOH
print VOL
echo 
*set filetype=binary
*write ./Analog_Inverter/simulations/tb_inv_dc.raw
             
plot v(v_out)                  


.endc
.end
"}
C {devices/code_shown.sym} 540 -130 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} 130 -170 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} 40 -300 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 120 -300 0 0 {name=l4 lab=GND}
C {/foss/designs/Thesis/workspace/thesis_hp/Schematics/Analog_Inverter/Analog_Inverter.sym} 280 -170 0 0 {name=x1}
C {devices/vsource.sym} 210 -330 0 0 {name=Vin value="dc 0 pulse(0 1.5 0 1n 1n 4n 10n)"}
C {devices/lab_wire.sym} 210 -360 0 1 {name=p1 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} 210 -300 0 0 {name=l1 lab=GND}
