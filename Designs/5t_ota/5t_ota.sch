v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 990 -480 1080 -480 {lab=#net1}
N 1120 -400 1120 -350 {lab=Vout}
N 930 -420 930 -350 {lab=#net1}
N 1120 -290 1120 -250 {lab=#net2}
N 930 -420 990 -420 {lab=#net1}
N 990 -480 990 -420 {lab=#net1}
N 930 -450 930 -420 {lab=#net1}
N 970 -480 990 -480 {lab=#net1}
N 910 -480 930 -480 {lab=AVDD}
N 910 -510 910 -480 {lab=AVDD}
N 1120 -400 1210 -400 {lab=Vout}
N 1120 -450 1120 -400 {lab=Vout}
N 1030 -250 1120 -250 {lab=#net2}
N 1080 -320 1120 -320 {lab=AVSS}
N 1080 -170 1080 -50 {lab=AVSS}
N 1030 -250 1030 -200 {lab=#net2}
N 930 -250 1030 -250 {lab=#net2}
N 910 -510 1180 -510 {lab=AVDD}
N 1120 -480 1180 -480 {lab=AVDD}
N 1180 -510 1180 -480 {lab=AVDD}
N 130 -400 280 -400 {lab=Ibias}
N 1030 -140 1030 -50 {lab=AVSS}
N 1030 -50 1080 -50 {lab=AVSS}
N 280 -50 660 -50 {lab=AVSS}
N 280 -230 280 -200 {lab=#net3}
N 660 -250 660 -200 {lab=#net4}
N 730 -510 910 -510 {lab=AVDD}
N 280 -400 280 -310 {lab=Ibias}
N 280 -140 280 -50 {lab=AVSS}
N 220 -50 280 -50 {lab=AVSS}
N 660 -140 660 -50 {lab=AVSS}
N 730 -50 1030 -50 {lab=AVSS}
N 930 -290 930 -250 {lab=#net2}
N 930 -320 1080 -320 {lab=AVSS}
N 1030 -170 1080 -170 {lab=AVSS}
N 1080 -320 1080 -170 {lab=AVSS}
N 660 -340 660 -310 {lab=AVDD}
N 220 -510 660 -510 {lab=AVDD}
N 660 -280 730 -280 {lab=AVDD}
N 730 -510 730 -280 {lab=AVDD}
N 660 -510 730 -510 {lab=AVDD}
N 220 -280 280 -280 {lab=AVDD}
N 220 -510 220 -280 {lab=AVDD}
N 130 -510 220 -510 {lab=AVDD}
N 220 -170 280 -170 {lab=AVSS}
N 220 -170 220 -50 {lab=AVSS}
N 130 -50 220 -50 {lab=AVSS}
N 660 -170 730 -170 {lab=AVSS}
N 730 -170 730 -50 {lab=AVSS}
N 660 -50 730 -50 {lab=AVSS}
N 600 -170 620 -170 {lab=#net3}
N 600 -280 620 -280 {lab=AVDD}
N 280 -230 340 -230 {lab=#net3}
N 280 -250 280 -230 {lab=#net3}
N 340 -230 340 -170 {lab=#net3}
N 320 -170 340 -170 {lab=#net3}
N 600 -340 600 -280 {lab=AVDD}
N 320 -280 600 -280 {lab=AVDD}
N 600 -340 660 -340 {lab=AVDD}
N 660 -510 660 -340 {lab=AVDD}
N 600 -170 600 -110 {lab=#net3}
N 340 -170 600 -170 {lab=#net3}
N 600 -110 990 -110 {lab=#net3}
N 990 -170 990 -110 {lab=#net3}
C {sg13g2_pr/sg13_lv_nmos.sym} 1140 -320 0 1 {name=M1
l=0.5u
w=0.27u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 910 -320 0 0 {name=M3
l=0.5u
w=0.27u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1100 -480 0 0 {name=M5
l=0.5u
w=0.28u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 950 -480 0 1 {name=M7
l=0.5u
w=0.28u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 890 -320 0 0 {name=p1 lab=PLUS}
C {ipin.sym} 1160 -320 0 1 {name=p2 lab=MINUS
}
C {opin.sym} 1210 -400 0 0 {name=p3 lab=Vout}
C {ipin.sym} 130 -510 0 0 {name=p4 lab=AVDD}
C {ipin.sym} 130 -50 0 0 {name=p5 lab=AVSS}
C {ipin.sym} 130 -400 0 0 {name=p6 lab=Ibias}
C {sg13g2_pr/sg13_lv_nmos.sym} 1010 -170 0 0 {name=M6
l=0.5u
w=0.54u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -280 0 0 {name=M4
l=0.5u
w=0.27u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -170 0 0 {name=M2
l=0.5u
w=0.27u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 -170 0 1 {name=M9
l=0.5u
w=0.27u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 300 -280 0 1 {name=M8
l=0.5u
w=0.27u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/title.sym} 180 120 0 0 {name=l5 author="(c) 2025 Thesis_HP, Apache-2.0 license"}
