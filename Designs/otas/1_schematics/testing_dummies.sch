v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -1060 -60 -1060 {lab=vdd}
N -60 -1060 -60 -1000 {lab=vdd}
N -150 -840 -60 -840 {lab=vss}
N -60 -910 -60 -840 {lab=vss}
N -250 -970 -100 -970 {lab=in}
N -60 -970 50 -970 {lab=vss}
N 50 -970 50 -840 {lab=vss}
N -60 -840 50 -840 {lab=vss}
N -220 -910 -220 -840 {lab=vss}
N -240 -840 -220 -840 {lab=vss}
N -220 -910 -190 -910 {lab=vss}
N -150 -1060 -150 -940 {lab=vdd}
N -240 -1060 -150 -1060 {lab=vdd}
N -150 -910 -60 -910 {lab=vss}
N -60 -940 -60 -910 {lab=vss}
N -150 -880 -150 -840 {lab=vss}
N -220 -840 -150 -840 {lab=vss}
C {devices/title.sym} -500 -630 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {ipin.sym} -240 -840 0 0 {name=p1 lab=vss}
C {ipin.sym} -240 -1060 0 0 {name=p2 lab=vdd}
C {ipin.sym} -250 -970 0 0 {name=p3 lab=in}
C {sg13g2_pr/sg13_lv_nmos.sym} -80 -970 0 0 {name=M2
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -170 -910 0 0 {name=M1
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
