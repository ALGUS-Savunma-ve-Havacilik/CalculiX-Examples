set term pngcairo enhanced
set out "path.png"
set grid
set xlabel "Distance along path in mm"
set y2tics
set ylabel "Pressure p in MPa"
set y2label "Sliding distance s in µm"
plot "graph_0.out" using 2:3 title "p" axes x1y1 w lp,\
"graph_1.out" using 2:($3*1000) title "s" axes x1y2 w lp
