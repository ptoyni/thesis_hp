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
C {devices/code_shown.sym} 570 -550 0 0 {name=NGSPICE1 only_toplevel=true 
value="
Vin v_in 0 dc 0 pulse (0 1.5 95n 2n 2n 90n 180n)
.temp 27
.control
reset
dc vin 0 1.5 0.01              ; simulation command 2
plot v(v_out)                  ; v(in) not required because it is the x axis already


.endc
.end
"}
C {devices/code_shown.sym} 570 -160 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} 130 -170 0 0 {name=p12 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} 40 -300 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 120 -300 0 0 {name=l4 lab=GND}
C {/foss/designs/Thesis/workspace/thesis_hp/Schematics/Analog_Inverter/Analog_Inverter.sym} 280 -170 0 0 {name=x1}
