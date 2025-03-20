; Addresses:
; F0 : Minuend
; F1 : Subtrahend
; F2 : Result

  .org $C000

  lda #$FF  ; Minuend value
  sta $F0
  lda #$0D  ; Subtrahend value
  sta $F1

  sec       ; Set carry flag for accurate subtraction
  lda $F0
  sbc $F1   ; Subtract

  sta $F2   ; Store result
  brk
