; Addresses:
; 00F0 : Dividend
; 00F1 : Divisor
; 00F2 : Result
; 00F3 : Remainder

  .org $C000

  lda #$1B    ; Dividend Value
  sta $F0

  lda #$03    ; Divisor Value
  sta $F1

  ldx #$00    ; Set X to 0 to prepare
  lda $F0     ; load dividend

subLoop:
  cmp $F1
  bcc doneDivide  ; If dividend < divisor, we're done

  sec          ; set carry for accurate sub
  sbc $F1      ; subtract divisor
  inx          ; increment x
  jmp subLoop  ; restart until done

doneDivide:
  sta $F3   ; store a as remainder
  stx $F2   ; store x as result
  brk
