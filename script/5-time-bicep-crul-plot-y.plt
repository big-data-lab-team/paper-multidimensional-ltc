#!/usr/local/bin/gnuplot -persist
set terminal pdf
set output "../5-time-bicep-crul-plot-y.pdf"

set datafile separator ","
set xrange [-10:620]
set yrange [-6000:6000]
set key autotitle columnhead
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/5_times_bicep_crul.csv' u 3 w l title 'ay-value'
