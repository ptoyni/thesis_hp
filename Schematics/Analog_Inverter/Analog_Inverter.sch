v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 80 -160 150 {lab=vout}
N -290 -40 -200 -40 {lab=vinp}
N -290 80 -290 180 {lab=vinp}
N -290 180 -200 180 {lab=vinp}
N -470 80 -290 80 {lab=vinp}
N -290 -40 -290 80 {lab=vinp}
N -160 -160 -160 -70 {lab=vdd}
N -530 -160 -160 -160 {lab=vdd}
N -530 280 -160 280 {lab=vss}
N -160 210 -160 280 {lab=vss}
N -160 180 -60 180 {lab=vss}
N -60 180 -60 280 {lab=vss}
N -160 280 -60 280 {lab=vss}
N -160 -40 -80 -40 {lab=vdd}
N -80 -160 -80 -40 {lab=vdd}
N -160 -160 -80 -160 {lab=vdd}
N -160 80 60 80 {lab=vout}
N -160 -10 -160 80 {lab=vout}
C {sg13g2_pr/sg13_lv_pmos.sym} -180 -40 0 0 {name=M1
l=0.52u
w=40u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -180 180 0 0 {name=M2
l=0.52u
w=20u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -470 80 0 0 {name=p4 lab=vin}
C {devices/iopin.sym} -530 -160 0 1 {name=p2 lab=vdd}
C {devices/iopin.sym} -530 280 0 1 {name=p3 lab=vss}
C {devices/opin.sym} 60 80 0 0 {name=p6 lab=vout}
