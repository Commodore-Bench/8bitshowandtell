; ------------------------------------------------------------------------------
; 8-Bit Show And Tell - Episode 8
;
; Video URL: https://www.youtube.com/watch?v=05vlobA3JeU
; ------------------------------------------------------------------------------
;
; using $d012 raster counter to demonstrate some assembly
;
; run with SYS 4096
; 
; THIS IS AN UNOFFICIAL RECREATION OF THE CODE
; By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
; ------------------------------------------------------------------------------
                    *= $1000        ; relocated to $1000 from $8000

                    lda #147        ; clear the screen          
                    jsr $ffd2          

; to allow for cross compiling the vector the MNI was removed.  to re-add
; see tmp_restore_interrupt.asm in this folder                    

loop
                    lda #100           ; this waits for rasterline 100
wait1               cmp $d012
                    bne wait1          
                    
                    inc $d020          
                    inc $d021          
                    
                    lda #150           
wait2               cmp $d012          
                    bne wait2          
                    
                    dec $d020          
                    dec $d021          
                    
                    jmp loop           
                    