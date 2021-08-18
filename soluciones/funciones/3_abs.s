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
  jal abs_value
  move $a0, $v0
  li $v0, 1
  syscall      # print resultado (abs_value(n))
  li $v0, 4
  la $a0, nl
  syscall      # print \n
  li $v0, 10
  syscall

# funcion abs_value(n)
abs_value:
  bge $a0, $zero, positivo
  mul $v0, $a0, -1
  j return
positivo:
  move $v0, $a0
return:
  jr $ra
