; Addresses:
; 00F0 : Multiplicand
; 00F1 : Multiplier
; 00F2 : Result

  .org $C000

  lda #$07 ; Multiplicand Value
  sta $F0
  lda #$04 ; Multiplier Value
  sta $F1

  lda #$00 ; clear accumulator
  ldx #$00 ; clear x
addLoop:
  clc          ; clear carry for accurate addition
  adc $F0      ; add multiplicand
  inx          ; increment x
  cpx $F1      ; compare x to multiplier
  bne addLoop  ; stop when x = multiplier

  sta $F2      ; store result
  brk
