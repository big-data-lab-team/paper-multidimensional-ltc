#!/usr/local/bin/gnuplot -persist

set datafile separator ","
set key autotitle columnhead
set xlabel 'instructions executed'
set ylabel 'Byte'

plot '../data/memoryMeasure-5times.csv' u 1:2 w l t columnhead(2),\
'../data/memoryMeasure-5times.csv' u 3:4 w l t columnhead(4)

plot '../data/memoryMeasure-5times.csv' u 5:6 w l t columnhead(6),\
'../data/memoryMeasure-5times.csv' u 7:8 w l t columnhead(8)
