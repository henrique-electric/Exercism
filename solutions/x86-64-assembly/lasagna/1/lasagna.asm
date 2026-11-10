; Everything that comes after a semicolon (;) is a comment

; Assembler-time constants may be defined using 'equ'

section .text

EXPECTED_MINUTES equ 40

; You should implement functions in the .text section

; the global directive makes a function visible to the test files
global expected_minutes_in_oven
expected_minutes_in_oven:
    mov rax, EXPECTED_MINUTES
    ret

global remaining_minutes_in_oven
remaining_minutes_in_oven:
    mov rax, EXPECTED_MINUTES
    sub rax, rdi
    ret

global preparation_time_in_minutes
preparation_time_in_minutes:
    mov rax, rdi
    mul rax, 2
    ret

global elapsed_time_in_minutes
elapsed_time_in_minutes:
    
    call preparation_time_in_minutes
    add rax, rsi
    ret

%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
