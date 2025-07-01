v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {0.7 < 0.8(nom) < 0.9V} -42850 -16110 0 0 0.4 0.4 {}
N -43120 -16030 -43080 -16030 {lab=PLUS}
N -42390 -16030 -42350 -16030 {lab=MINUS}
N -42590 -16090 -42590 -16060 {lab=Drain_minus}
N -42520 -16090 -42430 -16090 {lab=Drain_minus}
N -42590 -15970 -42530 -15970 {lab=AVSS}
N -42590 -16000 -42590 -15970 {lab=AVSS}
N -42630 -16030 -42590 -16030 {lab=AVSS}
N -42630 -16030 -42630 -15970 {lab=AVSS}
N -42630 -15970 -42590 -15970 {lab=AVSS}
N -42530 -16030 -42530 -15970 {lab=AVSS}
N -42950 -16030 -42930 -16030 {lab=AVSS}
N -42890 -16030 -42830 -16030 {lab=AVSS}
N -42830 -16030 -42830 -15970 {lab=AVSS}
N -42890 -15970 -42830 -15970 {lab=AVSS}
N -42890 -16000 -42890 -15970 {lab=AVSS}
N -42950 -15970 -42890 -15970 {lab=AVSS}
N -42950 -16030 -42950 -15970 {lab=AVSS}
N -42890 -16090 -42890 -16060 {lab=Drain_plus}
N -42550 -16030 -42530 -16030 {lab=AVSS}
N -42430 -16000 -42430 -15950 {lab=#net1}
N -42530 -16030 -42430 -16030 {lab=AVSS}
N -42430 -16090 -42430 -16060 {lab=Drain_minus}
N -43040 -16030 -42950 -16030 {lab=AVSS}
N -43040 -16090 -43040 -16060 {lab=Drain_plus}
N -42990 -16090 -42890 -16090 {lab=Drain_plus}
N -43040 -16000 -43040 -15950 {lab=#net1}
N -43060 -16310 -42990 -16310 {lab=Drain_plus}
N -42990 -16310 -42990 -16090 {lab=Drain_plus}
N -43040 -16090 -42990 -16090 {lab=Drain_plus}
N -42520 -16310 -42520 -16090 {lab=Drain_minus}
N -42590 -16090 -42520 -16090 {lab=Drain_minus}
N -42890 -15860 -42590 -15860 {lab=AVSS}
N -42590 -15970 -42590 -15860 {lab=AVSS}
N -42890 -15970 -42890 -15860 {lab=AVSS}
N -43200 -15860 -42890 -15860 {lab=AVSS}
N -43040 -15950 -42430 -15950 {lab=#net1}
C {sg13g2_pr/sg13_lv_nmos.sym} -43060 -16030 0 0 {name=M1
l=1u
w=6u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -42410 -16030 0 1 {name=M2
l=1u
w=6u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -43120 -16030 0 0 {name=p3 lab=PLUS}
C {ipin.sym} -42350 -16030 0 1 {name=p4 lab=MINUS
}
C {sg13g2_pr/sg13_lv_nmos.sym} -42570 -16030 0 1 {name=Md2
l=1u
w=6u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -42910 -16030 0 0 {name=Md1
l=1u
w=6u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -43200 -15860 0 0 {name=p5 lab=AVSS}
C {ipin.sym} -43060 -16310 0 0 {name=p1 lab=Drain_plus}
C {ipin.sym} -42520 -16310 0 1 {name=p2 lab=Drain_minus}
