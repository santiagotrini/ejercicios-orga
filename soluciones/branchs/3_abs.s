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
  move $s0, $v0            # $s0 es el numero leido
  blt $s0, $zero, negativo # es negativo?
  j exit
negativo:
  mul $s0, $s0, -1         # $s0 = $s0 * -1
exit:
  li $v0, 1
  move $a0, $s0
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall
