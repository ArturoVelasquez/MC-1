#!/bin/bash
gnuplot<<EOF
set term dumb
set size ratio 0.5
set key off
set xrange[-1:1]
set yrange[-1:1]
set parametric
plot $1*sin(t),$1*cos(t)
EOF
