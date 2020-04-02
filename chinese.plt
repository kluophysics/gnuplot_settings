set term pdfcairo lw 2  font "Helvetica, 14"
# change font accordingly
#font 'Verdana,10'  
#font "Times New Roman, 8 "
set output "chinese.pdf"

set border linewidth 1.5

set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 5   # blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 7   # red
#set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 3   # red
#set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 3   # red

# this will change the default linestyle without using the MACRO
# like this:
# plot sin(x) ls @BLUE title "正弦"
#
set style increment user

set xlabel "横坐标"
set ylabel "纵坐标"


set macros
BLUE = "1" # if you still want to use BLUE and RED
RED = "2"

set xrange [-2*pi:2*pi]
set yrange [-1.5:1.5]
# Axes tics
set xtics ('-2π' -2*pi, '-π' -pi, 0, 'π' pi, '2π' 2*pi)
set ytics 1
set tics scale 0.75

set style line 12 lc rgb '#808080' lt 1 dt 2 lw 2
#set style line 12 lc rgb '#808080' lt 1 dt (2,5,2,15) lw 2
#set style line 12 lc rgb '#808080' lt 1 dt ".. " lw 2
set grid back ls 12

#plot \
#sin(x) ls @BLUE title "正弦",\
#cos(x) ls @RED title "余弦"


plot \
sin(x) title "正弦",\
cos(x) title "余弦"
set output

