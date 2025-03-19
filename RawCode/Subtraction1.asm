; Addresses:
; F0 : Minuend
; F1 : Subtrahend
; F2 : Result

  .org $C000

  lda #$FF
  sta $F0
  lda #$0D
  sta $F1

  sec
  lda $F0
  sbc $F1

  sta $F2
  brk
