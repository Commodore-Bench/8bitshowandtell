10 poke53280,0:poke53281,0
15 dima$(6),b$(19),c$(10),d$(16)
20 forx=1to6:reada$(x):nextx
30 forx=1to19:readb$(x):nextx
40 forx=1to10:readc$(x):nextx
50 forx=1to16:readd$(x):nextx
100 print "{clear}{home}";: REM CLEARSCREENHERE
110 print "    the trek technobabble generator"
120 print "       designed by phil farrand"
130 print "programmed by robin harbron on feb.3/96"
140 a=int(rnd(1)*6)+1
150 b=int(rnd(1)*19)+1
160 c=int(rnd(1)*10)+1
170 d=int(rnd(1)*16)+1
180 print:print:print:print
190 print "{cyan}";a$(a);b$(b);c$(c);d$(d)
200 getg$:ifg$=""then200
210 goto100
1000 data"",ambient ,annular ,quantum ,spatial ,trans-
1010 data"",anaphasic ,axionic ,biomimetic ,cosmic ,duodynetic ,"dynamic "
1020 datagenetic ,interphasic ,isomiatic ,magnascopic ,metagenic ,"metaphasic "
1030 datanueucleonic ,osmotic ,plasmonic ,positronic ,static ,"subharmonic "
1040 data"",confinement ,containment, energy ,flux ,impulse ,particle ,"plasma "
1050 datavertion ,"warp "
1060 data"",beam ,being ,bubble ,burst ,capacitor ,conduit ,converter ,"core "
1070 datadiscriminator ,field ,scanner ,sensor ,shell ,stream ,"string "
3000 REM STOPPED AT 7:30