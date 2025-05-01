v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/lab_wire.sym} 90 0 0 1 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} -140 -160 0 0 {name=Vdd value=1.5}
C {devices/vsource.sym} -60 -160 0 0 {name=Vss value=0}
C {devices/lab_wire.sym} -140 -190 0 1 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -60 -190 0 1 {name=p2 sig_type=std_logic lab=Vss}
C {devices/lab_wire.sym} 40 -30 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 40 30 1 1 {name=p5 sig_type=std_logic lab=Vss}
C {devices/code_shown.sym} 380 -380 0 0 {name=NGSPICE only_toplevel=true 
value="
Vin v_in 0 dc 0.75 pulse (0 1.5 95n 2n 2n 90n 180n)
.temp 27
.control
tran 100p 500n               ; simulation command 1
set xbrushwidth=2
plot v(v_in) v(v_out)



.endc
.end
"}
C {devices/code_shown.sym} 390 10 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} -50 0 0 0 {name=p7 sig_type=std_logic lab=v_in}
C {devices/gnd.sym} -140 -130 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -60 -130 0 0 {name=l1 lab=GND}
C {/foss/designs/Thesis/workspace/thesis_hp/Schematics/Analog_Inverter/Analog_Inverter.sym} 100 0 0 0 {name=x1}
