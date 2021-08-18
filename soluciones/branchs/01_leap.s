.data
prompt: .asciiz "Ingrese un año\n"
is_leap: .asciiz "Es bisiesto\n"
not_leap: .asciiz "No es bisiesto\n"

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall             # print prompt
  li $v0, 5
  syscall
  move $s0, $v0       # año en $s0

  rem $s1, $s0, 4     # $s1 = year % 4
  rem $s2, $s0, 100   # $s2 = year % 100
  rem $s3, $s0, 400   # $s3 = year % 400
  bne $s1, $zero, false  # no es divisible por 4?
  beq $s2, $zero, false  # es divisible por 100?

true:
  li $v0, 4
  la $a0, is_leap
  syscall                 # print "es bisiesto"
  j exit
false:
  beq $s3, $zero, true    # es divisible por 400?
  li $v0, 4
  la $a0, not_leap
  syscall                 # print "no es bisiesto"

exit:
  li $v0, 10
  syscall                 # exit
