#!/usr/bin/env gnuplot
set terminal lua tikz latex color standalone noclip\
    size 5.5cm, 4cm\
    preamble "\\usepackage{lmodern}\n\\usepackage{amsmath}\n\\small"
set tics format '\footnotesize %h'
set ytics offset 1.2
set xtics offset 0,0.2
set offsets 0.0, graph 0.01
