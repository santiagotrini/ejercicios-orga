.data
prompt: .asciiz "Ingrese un numero\n"
nl: .asciiz "\n"

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $a0, $v0
  jal factorial
  move $a0, $v0
  li $v0, 1
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall

# funcion factorial(n) (version iterativa)
factorial:
  li $v0, 1
loop:
  beq $a0, $zero, return
  mul $v0, $v0, $a0
  addi $a0, $a0, -1
  j loop
return:
  jr $ra
