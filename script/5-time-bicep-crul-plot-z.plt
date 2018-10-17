#!/usr/local/bin/gnuplot -persist
set terminal pdf
set output "../5-time-bicep-crul-plot-z.pdf"

set datafile separator ","
set xrange [-10:620]
set yrange [-13000:-20000]
set key autotitle columnhead
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/5_times_bicep_crul.csv' u 4 w l title 'az-value'
