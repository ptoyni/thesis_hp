
v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}

* Voltage Sources
C {devices/vsource.sym} 10 -590 0 0 {name=Vramp value="DC 0 PWL(0 0 1u 1 2u 0 3u 1)" savecurrent=false}
C {devices/vsource.sym} 60 -500 0 0 {name=Vref value=2.5 savecurrent=false}
C {devices/vsource.sym} 110 -410 0 0 {name=Vvin value=DC 18 savecurrent=false}

* Behavioral Comparator
C {devices/bsource.sym} 200 -300 0 0 {name=B1 value="V(Veamp) > V(Vramp) ? 10 : 0"}

* Error Amplifier (Veamp = Vref - Vfb)
C {devices/behavioral.sym} 300 -300 0 0 {name=E1 expr="V(Vref) - V(v_fb)" nodes=Veamp 0}

* Switches
C {devices/switch_ngspice.sym} 400 -350 0 0 {name=S1 model=mysw}
C {devices/switch_ngspice.sym} 400 -250 0 0 {name=S2 model=mysw}

* LC Filter
C {devices/ind.sym} 500 -300 0 0 {name=L1 value=10u}
C {devices/cap.sym} 600 -300 0 0 {name=C1 value=100u}
C {devices/res.sym} 700 -300 0 0 {name=Rload value=50}

* Feedback Divider
C {devices/res.sym} 600 -250 0 0 {name=R1 value=10k}
C {devices/res.sym} 600 -200 0 0 {name=R2 value=10k}

* Pull-down for v_out to ensure stability
C {devices/res.sym} 600 -100 0 0 {name=Rpull value=10Meg}

* Labels
C {devices/lab_pin.sym} 600 -300 1 0 {name=out lab=v_out}
C {devices/lab_pin.sym} 10 -590 1 0 {name=vr lab=Vramp}
C {devices/lab_pin.sym} 300 -300 1 0 {name=veamp lab=Veamp}
C {devices/lab_pin.sym} 700 -300 1 0 {name=out2 lab=v_out}
C {devices/lab_pin.sym} 600 -225 1 0 {name=fb lab=v_fb}

* Connections
N 110 -410 400 -410 {lab=v_in}
N 400 -410 400 -350 {lab=v_in}
N 400 -350 500 -300 {lab=vsw}
N 500 -300 600 -300 {lab=v_out}
N 600 -300 700 -300 {lab=v_out}
N 600 -250 600 -300 {lab=v_out}
N 600 -250 600 -200 {lab=v_fb}
N 600 -200 600 -100 {lab=GND}
N 400 -250 400 -100 {lab=GND}

* Switch control
N 200 -300 400 -350 {lab=pwm_ctrl}
N 200 -300 400 -250 {lab=pwm_ctrl}
N 10 -590 200 -590 {lab=Vramp}

.model mysw SW vt=2.5 ron=1 roff=10G

* Control block
C {devices/code_shown.sym} 200 -600 0 0 {name=control only_toplevel=false value=".option method=gear reltol=1e-3
.ic V(v_out)=0 V(Veamp)=1
.control
save all
tran 10n 200u
plot v(v_out) v(Veamp) v(Vramp) v(pwm_ctrl)
.endc"}
