set title "Title Of Plot"
unset key
set xlabel "X LABEL"
set xrange [0:100+2]
set ylabel "Y LABEL"
set yrange [0:100]
set title font "helvetica,20"
set xtics 5 font "helvectica,13" scale -2,-1
set mxtics 5

set terminal canvas size 1000,400
set term canvas name 'foo'
set output "foo.js"
plot "-" using (column(0)+1):1 with impulses lw 5
91
98
68
9
4
54
40
81
28
47
72
59
33
70
41
98
15
92
20
71
78
69
100
85
88
80
83
74
57
5
22
59
94
25
17
7
78
11
77
97
46
39
0
75
20
75
100
45
52
23
26
63
91
10
29
26
71
99
2
50
18
6
17
86
41
4
45
88
73
64
40
90
11
81
12
34
3
6
60
76
0
88
62
52
4
24
60
10
84
66
40
75
79
23
52
79
36
10
31
11
end
