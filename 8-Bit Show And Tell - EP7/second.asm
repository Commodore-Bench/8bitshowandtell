; ------------------------------------------------------------------------------
; 8-Bit Show And Tell - Episode 7
;
; Video URL: https://www.youtube.com/watch?v=EUCSZw7piKE
; ------------------------------------------------------------------------------
;
; this will rapidly change the color of the screen
;
; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
; !!!!!!!!!!!!this HAS RAPIDLY CHANGING AND FLASHING COLORS!!!!!!!!!!!!
; !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
;
; run the code with SYS 4096
;
; THIS IS AN UNOFFICIAL RECREATION OF THE CODE
; By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
; ------------------------------------------------------------------------------
                    *= $1000
loop1
                    inc $d020
                    dec $d021
                    jmp loop1