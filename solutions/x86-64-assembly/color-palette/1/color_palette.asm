; Everything that comes after a semicolon (;) is a comment

; Define the constants 'RED', 'GREEN' and 'BLUE'
; They must be accessible from other source files

; Define the variable 'base_color' with the default value of 0xFFFFFF00
; It must be accessible from other source files

global RED
global GREEN
global BLUE 

extern combining_function

section .rodata
RED: dd 0xFF000000
GREEN: dd 0x00FF0000
BLUE: dd 0x0000FF00

section .data
global base_color
  base_color:
  dd 0xFFFFFF00

section .text

; You should implement functions in the .text section

; the global directive makes a function visible to the test files
global get_color_value
get_color_value:
    mov rax, [rdi] ; RDI receives a memory address, we just copy the value there and put inside rax, following the SYSV ABI
    ret

global add_base_color
add_base_color:
    mov rdx, [rdi]; Load the color stored at the given address pointer
    mov [rel base_color], rdx ; Store the given color at base_color
    ret

global make_color_combination
make_color_combination:

    ; Save the current argumets
    push rdi
    push rsi
    ; -------------------------
    
    mov rdi, [rel base_color] ; get the address of base color
    
    mov rsi, [rsi] ; Get the value of the second color

    call combining_function
    
    ; Restore the pushsed registers
    pop rsi
    pop rdi ; This register contain where we should store the combined color calculated by combining_function 
    ; -------------------------
    
    mov [rdi], rax ; Store the resultant color 
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
