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
  move $t0, $v0   # <-- primer argumento (a)
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $t1, $v0   # <-- segundo argumento (b)
  li $v0, 4
  la $a0, prompt
  syscall
  li $v0, 5
  syscall
  move $t2, $v0   # <-- tercer argumento (c)
  # poner los args en $a0 - $a2
  move $a0, $t0
  move $a1, $t1
  move $a2, $t2
  jal is_triangle
  move $a0, $v0
  li $v0, 1
  syscall      # print resultado (is_triangle(a, b, c))
  li $v0, 4
  la $a0, nl
  syscall      # print \n
  li $v0, 10
  syscall

# funcion is_triangle(a, b, c)
is_triangle:
  # sumas de lados
  # ab = a + b
  add $t0, $a0, $a1
  # bc = b + c
  add $t1, $a1, $a2
  # ac = a + c
  add $t2, $a0, $a2
  # condicionales
  bge $a0, $t1, not_triangle # a >= bc ?
  bge $a1, $t2, not_triangle # b >= ac ?
  bge $a2, $t0, not_triangle # c >= ab ?
  # SI es triangulo
  li $v0, 1
  j return
not_triangle:
  li $v0, 0
return:
  jr $ra    
