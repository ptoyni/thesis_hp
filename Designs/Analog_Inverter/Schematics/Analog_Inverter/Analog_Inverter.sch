v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1160 -200 1160 -130 {lab=vout}
N 1030 -320 1120 -320 {lab=vinp}
N 1030 -200 1030 -100 {lab=vinp}
N 1030 -100 1120 -100 {lab=vinp}
N 850 -200 1030 -200 {lab=vinp}
N 1030 -320 1030 -200 {lab=vinp}
N 1160 -440 1160 -350 {lab=vdd}
N 790 -440 1160 -440 {lab=vdd}
N 790 0 1160 0 {lab=vss}
N 1160 -70 1160 0 {lab=vss}
N 1160 -100 1260 -100 {lab=vss}
N 1260 -100 1260 0 {lab=vss}
N 1160 0 1260 0 {lab=vss}
N 1160 -320 1240 -320 {lab=vdd}
N 1240 -440 1240 -320 {lab=vdd}
N 1160 -440 1240 -440 {lab=vdd}
N 1160 -200 1380 -200 {lab=vout}
N 1160 -290 1160 -200 {lab=vout}
C {sg13g2_pr/sg13_lv_pmos.sym} 1140 -320 0 0 {name=M1
l=0.52u
w=40u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1140 -100 0 0 {name=M2
l=0.52u
w=20u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 850 -200 0 0 {name=p4 lab=vin}
C {devices/iopin.sym} 790 -440 0 1 {name=p2 lab=vdd}
C {devices/iopin.sym} 790 0 0 1 {name=p3 lab=vss}
C {devices/opin.sym} 1380 -200 0 0 {name=p6 lab=vout}
C {devices/title.sym} 170 70 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
