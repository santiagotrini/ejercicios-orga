# en C
# f = g + (h - 5)

# en MIPS
# con $s0 = f
#     $s1 = g
#     $s2 = h

addi $s2, $s2, -5    # h = h - 5
add  $s0, $s1, $s2   # f = g + h
