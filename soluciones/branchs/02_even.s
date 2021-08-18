.data
prompt: .asciiz "Ingrese un numero\n"
es_par: .asciiz "Es par\n"
no_par: .asciiz "No es par\n"

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0        # $s0 es el numero leido
  rem $s0, $s0, 2      # $s0 = $s0 % 2
  beq $s0, $zero, true # es divisible por 2?
false:
  li $v0, 4
  la $a0, no_par
  syscall
  j exit
true:
  li $v0, 4
  la $a0, es_par
  syscall
exit:
  li $v0, 10
  syscall
