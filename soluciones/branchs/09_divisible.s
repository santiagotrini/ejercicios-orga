.data
prompt: .asciiz "Ingrese un numero\n"
nl: .asciiz "\n"
verdadero: .asciiz "verdadero\n"
falso: .asciiz "falso\n"

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0   # $s0 <-- primer numero
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s1, $v0   # $s1 <-- segundo numero

  rem $s2, $s0, $s1  # $s2 = a % b
  rem $s3, $s1, $s0  # $s3 = b % a

  beq $s2, $zero, true   # a % b == 0?
  beq $s3, $zero, true   # b % a == 0?
  li $v0, 4
  la $a0, falso
  syscall
  j exit
true:
  li $v0, 4
  la $a0, verdadero
  syscall
exit:
  li $v0, 10
  syscall
