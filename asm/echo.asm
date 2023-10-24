section .data
    userMsg db 'Please enter a text(~4 charactor): '
    lenUserMsg equ $-userMsg
    dispMsg db 'You have entered: '
    lenDispMsg equ $-dispMsg

section .bss
    userInput resb 5

section .text
    global _start

_start:
    ; User prompt 'Please enter a text(~4 charactor): '
    mov eax, 4
    mov ebx, 1
    mov ecx, userMsg
    mov edx, lenUserMsg
    int 80h

    ; Read and store the user input
    mov eax, 3
    mov ebx, 2
    mov ecx, userInput
    mov edx, 5                  ; Read 5 bytes
    int 80h

    ; Output the message 'You have entered: '
    mov eax, 4
    mov ebx, 1
    mov ecx, dispMsg
    mov edx, lenDispMsg
    int 80h

    ; Output the user input
    mov eax, 4
    mov ebx, 1
    mov ecx, userInput
    mov edx, 5
    int 80h
    
    ; Exit code
    mov eax, 1
    mov ebx, 0
    int 80h