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

# funcion factorial(n) (version recursiva)
factorial:
  addi $sp, $sp, -8
  sw $a0, 0($sp)
  sw $ra, 4($sp)
  beq $a0, $zero, base
  addi $a0, $a0, -1
  jal factorial
  lw $a0, 0($sp)
  lw $ra, 4($sp)
  addi $sp, $sp, 8
  mul $v0, $v0, $a0
  j return
base:
  li $v0, 1
  lw $a0, 0($sp)
  lw $ra, 4($sp)
  addi $sp, $sp, 8
return:
  jr $ra
