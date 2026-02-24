set loadpath '~/.config/gnuplot'  # for further, figure-specific configs
# set term wxt size 1000, 720 font "Nimbus Sans L,20"
# Using default seaborn palette colors
set linetype 1 lc rgb '#444c72b0' lw 3
set linetype 2 lc rgb '#4455a868' lw 3
set linetype 3 lc rgb '#44c44e52' lw 3
set linetype 4 lc rgb '#448172b2' lw 3
set linetype 5 lc rgb '#44ccb974' lw 3
set linetype 6 lc rgb '#4464b5cd' lw 3
set linetype 7 lc rgb '#44ac6240' lw 3
#
#
# set style line 1 lc rgb '#4c72b0' lt 1 lw 3
# set style line 2 lc rgb '#55a868' lt 1 lw 3
# set style line 3 lc rgb '#c44e52' lt 1 lw 3
# set style line 4 lc rgb '#8172b2' lt 1 lw 3
# set style line 5 lc rgb '#ccb974' lt 1 lw 3
# set style line 6 lc rgb '#64b5cd' lt 1 lw 3
# set style line 7 lc rgb '#9400d3' lt 1 lw 3
set style line 101 lc rgb '#606060' lt 1 lw 1
set border 3 front ls 101
set ylabel textcolor '#606060'
set xlabel textcolor '#606060'
set tics nomirror out scale 0.4, 0.2 font ", 12"
set autoscale
set offsets graph 0.01, graph 0.01, graph 0.04, graph 0.04
set minussign
unset key
unset xlabel
unset ylabel
