nasm -f elf hello.asm
ld -m elf_i386 -s -o hello hello.o

nasm -f elf echo.asm
ld -m elf_i386 -s -o echo echo.o
