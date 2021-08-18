.data
nl: .asciiz "\n"

.text
.globl main
main:
  li $s0, 0    # suma = 0
  li $s1, 1    # contador = 1
  li $s2, 101  # $s2 = 101 para saber cuando terminar de loopear
loop:
  beq $s1, $s2, exit  # si contador > 100 salir del loop
  add $s0, $s0, $s1   # suma += contador
  addi $s1, $s1, 1    # contador++
  j loop
exit:
  li $v0, 1
  move $a0, $s0
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall
