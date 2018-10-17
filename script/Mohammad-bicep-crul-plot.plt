#!/usr/local/bin/gnuplot -persist
set terminal pdf

set output "../Mohammad-bicep-crul-x.pdf"
set datafile separator ","
set key autotitle columnhead
set xrange [-10:43000]
set yrange [-10000:10000]
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/Mohammad_Lateral_bicep.csv' u 2 w l title 'ax-value'

set output "../Mohammad-bicep-crul-y.pdf"
set datafile separator ","
set key autotitle columnhead
set xrange [-10:43000]
set yrange [-10000:6000]
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/Mohammad_Lateral_bicep.csv' u 3 w l title 'ay-value'

set output "../Mohammad-bicep-crul-z.pdf"
set datafile separator ","
set key autotitle columnhead
set xrange [-10:43000]
set yrange [-10000:10000]
set xlabel 'Time Unit'
set ylabel '4.8mm/s^2'
plot '../data/Mohammad_Lateral_bicep.csv' u 4 w l title 'az-value'
