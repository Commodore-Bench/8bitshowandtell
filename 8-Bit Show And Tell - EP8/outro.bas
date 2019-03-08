 1 rem ------------------------------------------------------------------------------
 2 rem 8-Bit Show And Tell - Episode 8
 3 rem 
 4 rem Video URL: https://www.youtube.com/watch?v=05vlobA3JeU
 5 rem ------------------------------------------------------------------------------
 6 rem 
 7 rem using $d012 raster counter to show off a scrolling rainbow
 8 rem 
10 rem THIS IS AN UNOFFICIAL RECREATION OF THE CODE
11 rem By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
12 rem ------------------------------------------------------------------------------
110 dimc(15):REM NEED TO PRINT CLEARSCREEN HERE, CANNOT FIGURE OUT HOW IN MY EDITOR
120 forx=0to15:reada:c(x)=a:next
130 forx=0to15
140 printchr$(205.5+rnd(1)); 
150 poke 53280,c(x):poke53281,c(x)
160 next
170 goto 130
180 data 0,1,2,3,4,6,7,5
190 data 8,10,11,9,12,15,13,14
