.data
prompt: .asciiz "Ingrese un numero\n"
nl: .asciiz "\n"
suma: .asciiz "Suma: "
promedio: .asciiz "Promedio: "

.text
.globl main
main:
  li $s2, 0         # $s2 = 0 (contador)
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0          # $s0 <-- numero leido
loop:
  beq $s0, $zero, exit   # si ingresa cero salir
  add $s1, $s1, $s0      # acumular en $s1
  addi $s2, $s2, 1       # incrementar contador
  # volver a pedir un numero
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0
  j loop
exit:
  # calcular promedio (en $s3)
  # $s3 = $s1 / $s2
  div $s3, $s1, $s2
  # imprimir $s1 (suma)
  li $v0, 4
  la $a0, suma
  syscall
  li $v0, 1
  move $a0, $s1
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  # imprimir $s3 (promedio) y salir
  li $v0, 4
  la $a0, promedio
  syscall
  li $v0, 1
  move $a0, $s3
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall
