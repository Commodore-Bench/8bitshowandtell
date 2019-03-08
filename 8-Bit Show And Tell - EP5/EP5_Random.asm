; ------------------------------------------------------------------------------
; 8-Bit Show And Tell - Episode 5
;
; Video URL: https://www.youtube.com/watch?v=-ADjfx79wNg
; ------------------------------------------------------------------------------
;
; this will generate 65535 random values and store them at XXXX in ram
; this REQUIRES an REU unit for bank 0
;
; in the video the bank was initally filled using the commands
; *R0 to switch to the REU and then
; F 0 FFFF BB on the super snapshot in monitor mode
;
; 
; in basic ENABLE osciallator 3 with the following pokes
; poke 54286, 255
; poke 54287, 255
; poke 54290, 128
;
; check that it worked with to ensure you're getting random numbers
; print peek(54299)
;
; run the code with SYS 49152
;
; NOTE FOR VICE USERS WITH SUPER SNAPSHOT
; SHIFT+F7 is how you enter the Monitor
;
; THIS IS AN UNOFFICIAL RECREATION OF THE CODE
; By User DuckyVirus.  It is not endorsed or affiliated with 8-Bit Show And Tell
; ------------------------------------------------------------------------------

                    *= $c000

                    lda #$1b           ; low byte of SID address
                    sta $df02          ; computer byte to copy FROM
                    lda #$d4           
                    sta $df03          ; $df03 ; from C64 oscillator Output
                    lda #$00           
                    sta $df04          ; REU Destination (low)
                    sta $df05          ; (high)
                    sta $df06          ; bank 0 in REU
                    
                    sta $df07          ; length of transfer (0 = MAX)
                    sta $df08          ; 65535 bytes
                    
                    lda #$80           ; Fix C64 address 
                    sta $df0a          ; the address control register
                    
                    ; turn off the screen so the VIC doesnt take over
                    lda $d011          ; vic control
                    and #$ef           ; set bit 4 to 0
                    sta $d011          ; to ensure bit 4 is off
                    
                    lda #$90           ; bit 7 - REU Execute, disable FF00 decode          
                    sta $df01          
                    
                    ; reenable screen
                    lda $d011          
                    ora #$10           
                    sta $d011          
                    
                    ; return
                    rts
                    