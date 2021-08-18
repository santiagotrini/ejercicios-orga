.data
prompt: .asciiz "Ingrese un numero\n"
black: .asciiz "*"
white: .asciiz " "
nl: .asciiz "\n"

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0   # $s0 <-- n (contador i)
  move $s1, $s0   # $s1 <-- n (contador j)
  move $s2, $s0   # $s2 <-- n (no cambia)
  # imprimir patron con dos loops anidados
outer_loop:
  beq $s0, $zero, exit
inner_loop:
  beq $s1, $zero, exit_inner
  add $s3, $s0, $s1   # $s3 = i + j
  rem $s4, $s3, 2     # $s4 = (i + j) % 2
  beq $s4, $zero, negro
blanco:
  li $v0, 4
  la $a0, white
  syscall
  j decrement
negro:
  li $v0, 4
  la $a0, black
  syscall
decrement:
  addi $s1, $s1, -1
  j inner_loop
exit_inner:
  li $v0, 4
  la $a0, nl
  syscall
  addi $s0, $s0, -1
  move $s1, $s2
  j outer_loop
exit:
  li $v0, 10
  syscall
