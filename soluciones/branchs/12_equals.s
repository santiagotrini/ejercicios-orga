.data
prompt: .asciiz "Ingrese un numero\n"

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


exit:
  li $v0, 10
  syscall
