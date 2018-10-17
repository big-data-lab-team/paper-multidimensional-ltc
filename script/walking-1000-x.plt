#!/usr/local/bin/gnuplot -persist
set terminal pdf
set output "../walking-1000-x.pdf"

set datafile separator ","
set key autotitle columnhead
set xrange [0:1010]
set yrange [-500:3000]
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/walking-1000.csv' u 2 w l title 'ax-value'
