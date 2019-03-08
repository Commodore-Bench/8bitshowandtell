; ------------------------------------------------------------------------------
; 8-Bit Show And Tell - Episode 7
;
; Video URL: https://www.youtube.com/watch?v=EUCSZw7piKE
; ------------------------------------------------------------------------------
;
; this will rapidly change the border color of the screen
;
; run the code with SYS 4096
;
; THIS IS AN UNOFFICIAL RECREATION OF THE CODE
; By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
; ------------------------------------------------------------------------------
                    *= $1000
loop1
                    inc $d020          
                    jmp loop1