v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1180 -760 1180 -690 {lab=D_ENA}
N 1340 -690 1340 -570 {lab=AVSS}
N 1240 -660 1240 -570 {lab=AVSS}
N 1240 -780 1240 -720 {lab=ena_n}
N 1240 -820 1240 -780 {lab=ena_n}
N 1420 -850 1420 -780 {lab=ena_n}
N 1480 -790 1480 -720 {lab=ena}
N 1480 -660 1480 -570 {lab=AVSS}
N 1420 -780 1420 -690 {lab=ena_n}
N 1480 -820 1480 -790 {lab=ena}
N 1580 -690 1580 -570 {lab=AVSS}
N 1240 -1930 1240 -880 {lab=AVDD}
N 1480 -1930 1480 -880 {lab=AVDD}
N 1180 -850 1180 -760 {lab=D_ENA}
N 1180 -850 1200 -850 {lab=D_ENA}
N 1180 -690 1200 -690 {lab=D_ENA}
N 1420 -850 1440 -850 {lab=ena_n}
N 1420 -690 1440 -690 {lab=ena_n}
N 1240 -850 1340 -850 {lab=AVDD}
N 1240 -570 1340 -570 {lab=AVSS}
N 800 -570 1240 -570 {lab=AVSS}
N 1240 -780 1420 -780 {lab=ena_n}
N 1340 -570 1480 -570 {lab=AVSS}
N 1480 -790 1650 -790 {lab=ena}
N 1480 -570 1580 -570 {lab=AVSS}
N 800 -1930 1240 -1930 {lab=AVDD}
N 1340 -1930 1480 -1930 {lab=AVDD}
N 790 -760 1180 -760 {lab=D_ENA}
N 1340 -1930 1340 -850 {lab=AVDD}
N 1240 -1930 1340 -1930 {lab=AVDD}
N 1580 -1930 1580 -850 {lab=AVDD}
N 1480 -1930 1580 -1930 {lab=AVDD}
N 1480 -850 1580 -850 {lab=AVDD}
N 1240 -690 1340 -690 {lab=AVSS}
N 1480 -690 1580 -690 {lab=AVSS}
N 1420 -780 1650 -780 {lab=ena_n}
N 1650 -780 1650 -760 {lab=ena_n}
C {ipin.sym} 800 -570 0 0 {name=p5 lab=AVSS}
C {ipin.sym} 800 -1930 0 0 {name=p2 lab=AVDD}
C {devices/lab_wire.sym} 1650 -790 0 0 {name=p15 sig_type=std_logic lab=ena}
C {devices/lab_wire.sym} 1650 -760 0 0 {name=p6 sig_type=std_logic lab=ena_n}
C {devices/ipin.sym} 790 -760 0 0 {name=p9 lab=D_ENA}
C {sg13g2_pr/sg13_lv_pmos.sym} 1220 -850 0 0 {name=Mpd2
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1460 -850 0 0 {name=Mpd3
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1220 -690 0 0 {name=Mpd1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1460 -690 0 0 {name=Mpd4
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
