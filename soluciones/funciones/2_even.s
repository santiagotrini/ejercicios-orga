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
  jal is_even
  move $a0, $v0
  li $v0, 1
  syscall          # print resultado (1 o 0)
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall

# funcion is_even(n)
is_even:
  rem $t0, $a0, 2  # $t0 = n % 2
  beq $t0, $zero, true
  li $v0, 0
  j return
true:
  li $v0, 1
return:
  jr $ra
