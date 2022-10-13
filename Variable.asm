%include "io64.inc"

section .text
global CMAIN
CMAIN:
    PRINT_STRING "INT Variable : "
    PRINT_DEC 1,integer
    NEWLINE
    PRINT_STRING "STRING Variable : "
    PRINT_STRING string_variable
    PRING
    xor rax, rax
    ret
    
section .data
    integer db 10  
    string_variable db "String"
    
section .bss
    var resw 5 ; var 변수 2바이트 5개 (10바이트)