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
  jal is_leap
  move $a0, $v0
  li $v0, 1
  syscall      # print resultado (1 o 0)
  li $v0, 4
  la $a0, nl
  syscall      # print \n
exit:
  li $v0, 10
  syscall

# funcion is_leap(year)
is_leap:
  rem $t1, $a0, 4         # $s1 = year % 4
  rem $t2, $a0, 100       # $s2 = year % 100
  rem $t3, $a0, 400       # $s3 = year % 400
  bne $t1, $zero, false   # no es divisible por 4?
  beq $t2, $zero, false   # es divisible por 100?
true:
  li $v0, 1               # resultado = 1
  j return
false:
  beq $t3, $zero, true    # es divisible por 400?
  li $v0, 0               # resultado = 0
return:
  jr $ra
