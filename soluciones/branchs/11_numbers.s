.data
nl: .asciiz "\n"
sp: .asciiz " "

.text
.globl main
main:
  li $s0, 1000      # $s0 <-- numero a imprimir
  li $s1, 1         # $s1 <-- contador
  li $s2, 1001      # para salir del loop
loop:
  beq $s1, $s2, exit
  li $v0, 1
  move $a0, $s0
  syscall           # print n
  li $v0, 4
  la $a0, sp
  syscall           # print espacio
  rem $s3, $s1, 5   # $s3 = contador % 5
  bne $s3, $zero, increment  # contador % 5 != 0 ? saltear print \n
  li $v0, 4
  la $a0, nl
  syscall           # print \n
increment:
  addi $s1, $s1, 1  # contador++
  addi $s0, $s0, 1  # n++
  j loop
exit:
  li $v0, 10
  syscall
