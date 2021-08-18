## Código máquina

### Ejercicio 1

`lw $t0, 1200($t1)`

Instrucción tipo I

|     |op    |rs   |rt   |imm                |
|:---:|:----:|:---:|:---:|:-----------------:|
|dec  |35    |9    |8    |1200               |
|bin  |100011|01001|01000|0000 0100 1011 0000|

**En hexadecimal:**: 0x8D2804B0

### Ejercicio 2

`add $t0, $s2, $t0`

Instrucción tipo R

|     |op    |rs   |rt   |rd   |shamt|funct |
|:---:|:----:|:---:|:---:|:---:|:---:|:----:|
|dec  |0     |18   |8    |8    |0    |32    |
|bin  |000000|10010|01000|01000|00000|100000|

**En hexadecimal:**: 0x02484020

### Ejercicio 3

`sw $t0, 1200($t1)`

Instrucción tipo I

|     |op    |rs   |rt   |imm                |
|:---:|:----:|:---:|:---:|:-----------------:|
|dec  |43    |9    |8    |1200               |
|bin  |101011|01001|01000|0000 0100 1011 0000|

**En hexadecimal:**: 0xAD2804B0

### Ejercicio 4

Pasar a ensamblador: 0x01095022

En binario: 0000 0001 0000 1001 0101 0000 0010 0010

El opcode es cero, por lo tanto es una instrucción de tipo R.

|     |op    |rs   |rt   |rd   |shamt|funct |
|:---:|:----:|:---:|:---:|:---:|:---:|:----:|
|dec  |0     |8    |9    |10   |0    |34    |
|bin  |000000|01000|01001|01010|00000|100010|

El código de función es 34 o 0x22, corresponde a la instrucción `sub`.

**Solución:** `sub $10, $8, $9` o `sub $t2, $t0, $t1` 
