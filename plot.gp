set style line 1 lt 1 lc rgb "#a6cee3" lw 3;
set style line 2 lt 2 lc rgb "#1f78b4" lw 3;
set style line 3 lt 3 lc rgb "#b2df8a" lw 3;
set style line 4 lt 4 lc rgb "#33a02c" lw 3;
set style line 5 lt 5 lc rgb "#fb9a99" lw 3;
set style line 6 lt 6 lc rgb "#e31a1c" lw 3;
set style line 7 lt 7 lc rgb "#fdbf6f" lw 3;
set style line 8 lt 8 lc rgb "#ff7f00" lw 3;
set style line 9 lt 9 lc rgb "#cab2d6" lw 3;
set style line 10 lt 10 lc rgb "#6a3d9a" lw 3;

set term svg enhanced mouse size 1000,400
set output '_logs/udb2.svg'
set key outside
set key right top


set xlab "CPU seconds per input"
set ylab "#bytes per distinct key"
set xran [0:*]


# IMPORT-DATA udb2 _logs/udb2.txt

## MULTIPLOT(experiment) SELECT memory*1.0/elements AS y, time*100000/elements as x, MULTIPLOT FROM udb2
## WHERE experiment NOT IN ('std', 'rigtorp', 'eliasP', 'eliasS', 'clearyP', 'layeredP')
## GROUP BY MULTIPLOT,x ORDER BY MULTIPLOT,x
plot \
    'plot-data.txt' index 0 title "chmapI" with linespoints, \
    'plot-data.txt' index 1 title "chtI" with linespoints, \
    'plot-data.txt' index 2 title "clearyS" with linespoints, \
    'plot-data.txt' index 3 title "google" with linespoints, \
    'plot-data.txt' index 4 title "layeredS" with linespoints, \
    'plot-data.txt' index 5 title "plainI" with linespoints, \
    'plot-data.txt' index 6 title "spp" with linespoints, \
    'plot-data.txt' index 7 title "tsl" with linespoints

