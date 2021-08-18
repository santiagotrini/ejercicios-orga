.data
prompt: .asciiz "Ingrese un numero\n"
true: .asciiz "verdadero\n"
false: .asciiz "falso\n"

.text
.globl main
main:
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s0, $v0   # $s0 <-- primer numero (a)
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s1, $v0   # $s1 <-- segundo numero (b)
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $s2, $v0   # $s2 <-- tercer numero (c)

  # sumas de lados
  # ab = a + b
  add $s3, $s0, $s1
  # bc = b + c
  add $s4, $s1, $s2
  # ac = a + c
  add $s5, $s0, $s2
  # condicionales
  bge $s0, $s4, not_triangle # a >= bc ?
  bge $s1, $s5, not_triangle # b >= ac ?
  bge $s2, $s3, not_triangle # c >= ab ?
  # es triangulo
  li $v0, 4
  la $a0, true
  syscall
  j exit
not_triangle:
  li $v0, 4
  la $a0, false
  syscall
exit:
  li $v0, 10
  syscall  
