; ------------------------------------------------------------------------------
; 8-Bit Show And Tell - Episode 8
;
; Video URL: https://www.youtube.com/watch?v=05vlobA3JeU
; ------------------------------------------------------------------------------
;
; IF you're running TMP (and possibly others) with an REU
; this little bit of code will jump BACK into the assembler if
; you hit the restore key.
;
; obviously this REQUIRES an REU unit, but VICE can emulate one
;
; also run TMP+REU
;
; if you were to use this without the REU you would need to move your
; code somewhere else than $8000 and change jumpback address to $8000
;
; THIS IS AN UNOFFICIAL RECREATION OF THE CODE
; By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
; ------------------------------------------------------------------------------
                    *= $8000

jumpback            = $0140
                    
                    ; this bit is not part of the interrupt code
                    ; but was here for the code in the video
                    ; therefore it is here to serve as a landmark


                    lda #147        ; clear the screen          
                    jsr $ffd2          

                    ; we are re-pointing the vector
                    ; called when RESTORE is pressed

                    sei
                    
                    lda #<jumpback     
                    sta $0318          
                    lda #>jumpback     
                    sta $0319          
                    
                    

                    ; this is also just here as a landmark
loop                inc $d021
                    jmp loop
                    