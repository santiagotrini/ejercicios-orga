.data
prompt: .asciiz "Ingrese un numero entero\n"
nl: .asciiz "\n"
equals: .asciiz " = "
times: .asciiz " x "
plus: .asciiz " + "

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall          # prompt message
  li $v0, 5
  syscall
  move $s0, $v0    # primer numero en $s0 (dividendo)
  li $v0, 4
  la $a0, prompt
  syscall          # prompt message
  li $v0, 5
  syscall
  move $s1, $v0    # segundo numero en $s1 (divisor)

  div $s2, $s0, $s1 # cociente en $s2
  rem $s3, $s0, $s1 # resto en $s3

  # print resultado
  li $v0, 1
  move $a0, $s0
  syscall            # print dividendo
  li $v0, 4
  la $a0, equals
  syscall            # print equals
  li $v0, 1
  move $a0, $s2
  syscall            # print cociente
  li $v0, 4
  la $a0, times
  syscall            # print times
  li $v0, 1
  move $a0, $s1
  syscall            # print divisor
  li $v0, 4
  la $a0, plus
  syscall            # print plus
  li $v0, 1
  move $a0, $s3
  syscall            # print resto
  li $v0, 4
  la $a0, nl
  syscall            # print \n
  li $v0, 10
  syscall            # exit
