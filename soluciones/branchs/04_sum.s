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
  move $s0, $v0          # $s0 <-- numero leido
loop:
  beq $s0, $zero, exit   # si ingresa cero salir
  add $s1, $s1, $s0      # acumular en $s1
  # volver a pedir un numero
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0
  j loop
exit:
  # imprimir $s1 (suma) y salir
  li $v0, 1
  move $a0, $s1
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall
