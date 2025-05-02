; ReCOP Assembler Test Program
; Tests core instructions and addressing modes

;        .ORG    $0000       ; Start at address 0

; =============== MAIN PROGRAM ===============
START:
        ; Immediate addressing
        LDR R0 #1234     ; Load immediate value
        LDR R1 #10         ; Decimal immediate

        ; Direct addressing
        STR R0 $2000       ; Store to memory
        LDR R2 $2000       ; Read back

        ; Register indirect
        LDR R3 R2          ; Copy value through register

        ; Arithmetic operations
        ADD R0 R1     ; R4 = 1234 + 10
        SUBV R5 R3 #5     ; R5 = result - 5

        ; Bitwise operations
        AND R6 R0 #256 ; Mask lower byte
        OR R7 R6 #65280  ; Set upper byte

        ; Control flow
        LDR R8 #3          ; Loop counter
LOOP:
        SUBV R8 R8 #1          ; Decrement counter
        SZ LOOP             ; Loop until zero

        ; Memory-mapped I/O
        LDR R9 $2000       ; Read switches
        STR R9 $3001       ; Write to LEDs

        ; Subroutine call
        JMP PROCESS_DATA
        NOOP                ; Placeholder

HALT:
        JMP HALT            ; Infinite loop

; =============== SUBROUTINE ===============
PROCESS_DATA:
        ; Data processing example
        LDR R10 $3000      ; Load from memory
        ADD R10 #100 ; Add offset
        STR R10 $3000      ; Store back
        JMP HALT            ; Return

; =============== DATA SECTION ===============
;        .ORG    $2000
;DATA1:  .DW     $12345       ; Test data 1
;
;        .ORG    $3000
;DATA2:  .DW     $1234       ; Test data 2