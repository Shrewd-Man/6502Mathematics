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
  clc
  adc $F0
  inx
  cpx $F1
  bne addLoop

  sta $F2
  brk
