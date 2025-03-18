; Addresses:
; 00F0 : Addend 1
; 00F1 : Addend 2
; 00F2 : Result

  .org $C000

  lda #$07 ; addend 1 Value
  sta $F0

  lda #$04 ; addend 2 Value
  sta $F1

Addition:
  lda $F0
  adc $F1
  sta $F2

  brk
