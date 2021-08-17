.data
nl: .asciiz "\n"
prompt: .asciiz "Ingrese un numero\n"
suma: .asciiz "La suma de las potencias es: "

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0     # $s0 <-- n
  # imprimir las primeras n potencias de 2
  li $s1, 1         # $s1 <-- contador
  li $s2, 1         # $s2 <-- potencia
  li $s3, 0         # $s3 <-- suma
loop:
  bgt $s1, $s0, exit # salir del loop cuando contador > n
  li $v0, 1
  move $a0, $s2
  syscall            # print potencia
  li $v0, 4
  la $a0, nl
  syscall            # print \n
  add $s3, $s3, $s2  # suma += potencia
  addi $s1, $s1, 1   # contador++
  mul $s2, $s2, 2    # potencia *= 2 (proxima)
  j loop
exit:
  li $v0, 4
  la $a0, suma
  syscall
  li $v0, 1
  move $a0, $s3
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall
