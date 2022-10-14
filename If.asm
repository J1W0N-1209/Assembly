%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    ; 두 숫자가 같으면 1,다르면 0을 출력
    mov rax,10
    mov rbx,20
    
    cmp rax,rbx
    
    je LABEL_EQUAL
    
    mov rcx,0
    jmp LABEL_EQUAL_END
    
LABEL_EQUAL:
    mov rcx,1
LABEL_EQUAL_END:
    
    PRINT_HEX 1,rcx
    NEWLINE
    
    xor rax, rax
    ret