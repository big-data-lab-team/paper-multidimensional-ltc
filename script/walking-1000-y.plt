#!/usr/local/bin/gnuplot -persist
set terminal pdf
set output "../walking-1000-y.pdf"

set datafile separator ","
set key autotitle columnhead
set xrange [0:1010]
set yrange [-5000:1000]
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/walking-1000.csv' u 3 w l title 'ay-value'
