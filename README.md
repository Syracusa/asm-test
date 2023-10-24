# ASM-TEST 
+ Assembly practice 

# Test Environment
+ Ubuntu WSL
+ nasm 
  + sudo apt update
  + sudo apt install nasm

# Compile and test
+ nasm -f elf hello.asm
+ ld -m elf_i386 -s -o hello hello.o
+ ./hello


# Ref
+ https://www.tutorialspoint.com/assembly_programming/assembly_tutorial.pdf