set term postscript landscape monochrom  
#set term x11 
set out "graph_1.ps"
set grid
set title "Values at Nodes (plots.fbl)"
set ylabel " T        "
set xlabel " Length "
plot "graph_1.out" using 2:3 title 'Setname Ntop' with linespoints
