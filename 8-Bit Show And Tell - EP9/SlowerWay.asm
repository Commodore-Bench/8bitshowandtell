; 16 bit only method - rather inefficient

                    *= $c000

                    ; reu jumpback routine (pressing RESTORE to return)
;jumpback            = $140
;                    
;                    sei
;                    lda #<jumpback     
;                    sta $0318          
;                    lda #>jumpback     
;                    sta $0319          
        
; main loop of the program            
                    lda #147           
                    jsr $ffd2          ; print the clearscreen char (in A)
                    
loop
                    lda #100           ; moved from 200 to 100
wait1               cmp $d012          
                    bne wait1          ; wait for the raster line 200
                    
                    inc $d020          ; increase border color
                    
                    ; do operations here
                    clc                ; 16 bit addition setup
                    lda score          
                    adc #1             
                    sta score          
                    lda score+1        ; if theres a bit to carry over into the high 8
                    adc #0             
                    sta score+1
                    
                    lda #19            
                    jsr $ffd2          ; print the home char (in A)
                    
                    ; print score
                    ldx score          
                    lda score+1        
                    jsr $bdcd          ; LINPRT


                    dec $d020
          
                    jmp loop           
                    
score               byte 0, 0
                    