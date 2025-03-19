; Addresses:
; 00F0 : Multiplicand
; 00F1 : Multiplier
; 00F2-00F3 : Result

  .org $0000

  lda #$07 ; Multiplicand Value
  sta $F0
  lda #$4A ; Multiplier Value
  sta $F1

  lda #$00 ; clear accumulator
  ldx #$00 ; clear x
  ldy #$00

addLoop:
  clc      ; clear carry
  adc $F0  ; add multiplicand
  bcs overflowCalculation ; to on carry
contLoop:
  inx      ; inc x
  cpx $F1  ; compare x to multiplier
  bne addLoop ; if not equal : addLoop

  jmp endSave

overflowCalculation:
  iny
  jmp contLoop

endSave:
  sta $F3
  sty $F2
  brk
