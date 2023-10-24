section .text
; Use the label _start instead of main for the ELF entry point.
; main implies it's like the C main function, but this isn't
; even a function (e.g. you can't ret).
; ref : https://stackoverflow.com/questions/34758769/load-warning-cannot-find-entry-symbol-start
    global _start

_start:
    mov edx,len
    mov ecx,msg
    mov ebx,1

    ; system call (sys_write)
    mov eax,4      
    int 0x80

    ; system call (sys_exit)
    mov eax,1       
    int 0x80

section .data
    msg db 'Hello, world!', 0xa
    len equ $ - msg