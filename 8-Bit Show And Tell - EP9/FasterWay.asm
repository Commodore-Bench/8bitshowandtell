; much more efficient BCD mode (24bit -- or in BCD 6 char)

                    *= $c000

screen              = $0400
                    
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
                    sed ; set decimal mode

                    clc
                    lda score          
                    adc #1             
                    sta score
                    bcc done1          ; nothing to update now
                    lda score+1        
                    adc #0             
                    sta score+1        
                    bcc done1          ; nothing left to update
                    lda score+2
                    adc #0             
                    sta score+2        
done1
                    cld
                    
                    jsr display        ; our display code

                    ; end operations
                    
                    dec $d020
          
                    jmp loop           

                    
; ----------------------------------------
; display subroutine
; ----------------------------------------
display
                    ldy #5             ; screen offset - what position in the score are we showing
                    ldx #0             ; score byte index - we start at the right and go left
                    
sloop                                  ; score loop
                    lda score,x        
                    pha                ; put the score on the stack
                    and #$0f           ; grab the lowest digit
                    jsr plotdigit      
                    
                    pla                ; take the score OFF the stack
                    lsr a              ; shift to the right 4 bits (to get the high number)
                    lsr a              
                    lsr a              
                    lsr a

                    jsr plotdigit      
                    
                    inx
                    cpx #3             ; we're at 3 so we're done
                    bne sloop

                    rts                ; all done


; ----------------------------------------
; convert value to screencode subroutine
; ----------------------------------------
plotdigit   ; requires Y to be set at the position 
                    clc
                    adc #48 ; add 48 to the value (the convert to petsci)
                    sta screen,y       
                    dey
                    rts


; ----------------------------------------
; variables
; ----------------------------------------

score               byte 0, 0, 0