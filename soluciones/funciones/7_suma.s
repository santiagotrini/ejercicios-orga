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
  jal suma_n
  move $a0, $v0
  li $v0, 1
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall

# funcion suma_n(n)
suma_n:
  addi $t0, $a0, 1   # (n + 1)
  mul $v0, $a0, $t0  # n(n + 1)
  div $v0, $v0, 2    # n(n + 1) / 2
  jr $ra
