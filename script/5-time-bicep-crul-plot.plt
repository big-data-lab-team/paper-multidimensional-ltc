#!/usr/local/bin/gnuplot -persist
set terminal pdf

set output "../5-time-bicep-crul-plot-y.pdf"
set datafile separator ","
set xrange [-10:620]
set yrange [-6000:6000]
set key autotitle columnhead
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
set output "../5-time-bicep-crul-plot-x.pdf"
plot '../data/5_times_bicep_crul.csv' u 2 w l title 'ax-value'

set output "../5-time-bicep-crul-plot-y.pdf"
set datafile separator ","
set xrange [-10:620]
set yrange [-6000:6000]
set key autotitle columnhead
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/5_times_bicep_crul.csv' u 3 w l title 'ay-value'

set output "../5-time-bicep-crul-plot-z.pdf"
set datafile separator ","
set xrange [-10:620]
set yrange [-13000:-20000]
set key autotitle columnhead
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/5_times_bicep_crul.csv' u 4 w l title 'az-value'
