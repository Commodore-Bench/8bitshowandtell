 1 rem ------------------------------------------------------------------------------
 2 rem 8-Bit Show And Tell - Episode 12
 3 rem 
 4 rem Video URL: https://www.youtube.com/watch?v=wo14rDnGUbY
 5 rem ------------------------------------------------------------------------------
 6 rem exploring integer optimizations - free6.bas
 7 rem THIS IS AN UNOFFICIAL RECREATION OF THE CODE
 8 rem By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
 9 rem ------------------------------------------------------------------------------
10 DEF FN FR(X)=FRE(0)-65536*(FRE(0)<0)
20 R1=0:R2=0
30 R1=FN FR(0)
35 :
40 DIM A%(50, 50)
45 :
50 R2=FN FR(0)
60 PRINTR1-R2


