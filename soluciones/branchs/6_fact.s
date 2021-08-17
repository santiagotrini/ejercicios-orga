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
  move $s0, $v0    # $s0 <-- numero leido
  li $s1, 1        # $s1 <-- resultado
loop:
  beq $s0, $zero, exit  # loopear hasta que n == 0
  mul $s1, $s1, $s0     # resultado *= n
  addi $s0, $s0, -1     # n -= 1
  j loop
exit:
  li $v0, 1
  move $a0, $s1
  syscall
  li $v0, 4
  la $a0, nl
  syscall
  li $v0, 10
  syscall
