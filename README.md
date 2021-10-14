# Ejercicios

## Introducción a MIPS

[Apunte en el blog](https://la35.net/orga/mips-intro.html).

1. ¿Cuál es el código en MIPS para el siguiente enunciado de C? `f = g + (h - 5);`
2. Escribir un programa que acepte dos números enteros del usuario y calcule el cociente y resto de la división entera. El resultado tiene que verse así en la consola:
```console
dividendo = cociente x divisor + resto
```

## MIPS: branchs y Jumps

[Apunte en el blog](https://la35.net/orga/mips-branchs.html).

1. Escribir un programa en MIPS que decida si un año es bisiesto o no.
2. Escribir un programa en MIPS que decida si un número es par o no.
3. Escribir un programa en MIPS que devuelva el valor absoluto de un número ingresado por el usuario.
4. Escribir un programa en MIPS que acepte números ingresados por el usuario hasta que el usuario ingrese el número cero. La salida del programa es la suma de todos los números ingresados.
5. Mismo programa que el ejercicio cuatro, pero imprimiendo la suma y el promedio de los números ingresados.
6. Escribir un programa en MIPS que calcule el factorial de un número.
7. Escribir un programa en MIPS que sume los números del 1 al 100.
8. Escribir un programa que imprima las primeras n potencias de dos, siendo n un número ingresado por el usuario. Al finalizar el programa debe imprimir la suma de las potencias calculadas.
9. Escribir un programa que tome dos números enteros positivos e imprima "verdadero" si alguno de los argumentos es divisible por el otro.
10. Escribir un programa que tome tres números enteros positivos ingresados por el usuario. Debe imprimir "falso" si alguno es igual o mayor a la suma de los otros dos, o "verdadero" en caso contrario.
11. Escribir un programa que imprima los números entre el 1000 y el 1999, mostrando 5 números por línea.
12. Escribir un programa que acepte tres números enteros e imprima "iguales" si los tres números son iguales o "no iguales" de lo contrario.
13. Escribir un programa que acepte un número entero *n* y use dos loops anidados para imprimir un patrón como el de un tablero de ajedrez usando asteriscos y espacios con *n* filas y columnas.

## MIPS: funciones

[Apunte en el blog](https://la35.net/orga/mips-funciones.html).

1. Reescribir el ejercicio 1 del apunte anterior como una función. La función debe recibir un año como argumento y devolver 1 si es bisiesto o 0 si no lo es.
2. Reescribir el ejercicio 2 del apunte anterior como una función. La función debe recibir un número entero como argumento y devolver 1 si es par o 0 si es impar.
3. Reescribir el ejercicio 3 del apunte anterior como una función. La función recibe un entero com argumento y devuelve su valor absoluto.
4. Escribir una función `is_triangle` que reciba tres argumentos enteros y devuelva 1 si los 3 números pueden ser las longitudes de los lados de un tríangulo o 0 de lo contrario. Ver el ejercicio 10 del apunte anterior.
5. Reescribir el ejercicio 6 del apunte anterior como una función. La función debe devolver el factorial de un número entero. Calcularlo de manera iterativa, usando un _loop_.
6. Reescribir la función factorial pero esta vez de manera recursiva.
7. Escribir una función que devuelva la suma de los primeros *n* números naturales. La cantidad *n* de números es un argumento de la función.

## MIPS: código máquina

[Apunte en el blog](https://la35.net/orga/mips-maquina.html).

1. Traducir de ensamblador de MIPS a código máquina: `lw $t0, 1200($t1)`.
2. Traducir de ensamblador de MIPS a código máquina: `add $t0, $s2, $t0`.
3. Traducir de ensamblador de MIPS a código máquina: `sw $t0, 1200($t1)`.
4. Traducir de código máquina a ensamblador de MIPS: `0x01095022`.

## Lógica digital

[Apunte en el blog](https://la35.net/logica/logica-digital.html).

1. Dar la tabla de verdad para la compuerta AND de 3 entradas.
2. Dar la tabla de verdad para el circuito que compara dos números de dos bits. Las dos compuertas que aparecen ahí son XNOR, es decir la negación de XOR.
3. Expresar la salida como *Q* del circuito comparador de forma algebraica (como una ecuación).
4. Dar un circuito de tres entradas y una salida que produzca un uno cuando haya un número impar de unos en sus entradas.
5. Dar el circuito y la tabla de verdad resumida para un multiplexor 4:1.
6. Dar el circuito del decodificador 2:4. Dar circuito y tabla para el decodificador 3:8.
7. Dar el circuito de un _half adder_ sin usar una compuerta XOR.
8. Dar el circuito de un _full adder_, teniendo en cuenta la tabla de verdad y que como su nombre lo indica hace uso de dos _half adder_.
9. Implementar un circuito que me dé el complemento a dos de un número de 3 bits.
10. Implementar un circuito que sume o reste según se elija dos números de 3 bits.
11. Existen cuatro tipos de _flip flops_. Los tipos SR, D, JK y T. Buscar la tabla característica del _flip flop_ de tipo JK.
12. Existen muchos tutoriales de Arduino que muestran como usar un integrado 74HC595 para ampliar la cantidad de salidas digitales. El 74HC595 es un _shift register_ SIPO (_serial in parallel out_). Mostrar el circuito de un _shift register_ de 4 bits usando _flip flops_ de tipo D.
13. Un contador es un circuito que almacena de un número de _n_ bits con la capacidad de ir aumentando en uno ese número, osea contando. Por ejemplo el contador binario de 4 bits va desde 0000<sub>2</sub> a 1111<sub>2</sub> y "da la vuelta", pasa del 15 al 0 de vuelta. Implementar un contador binario de 4 bits usando _flip flops_ JK.
14. Un archivo de registros es un circuito que se encuentra generalmente dentro de una CPU con un número pequeño de registros, como 16 por ejemplo. Funciona de manera similar a una memoria. Dar el circuito de un archivo de registros con cuatro registros de 8 bits que me permita leer de dos registros a la vez y escribir en uno de ellos. Pista: los multiplexores y demultiplexores pueden ser útiles.
15. ¿Cuál es la diferencia entre un decodificador y un demultiplexor? Ilustrar con circuitos.

## MIPS: Datapath

[Apunte en el blog](https://la35.net/orga/mips-datapath.html).

1. ¿Para qué sirve el multiplexor antes de la entrada B de la ALU? Dar ejemplos de dos instrucciones donde se elija entre una u otra entrada del multiplexor.
2. Identificar qué unidades funcionales del *datapath* de MIPS intervienen en un `lw`, `sw`, `add`, `addi` y `beq`.
3. Sabiendo que en una computadora existen buses para datos, direcciones y control. Y que en el diagrama del *datapath* los cables del bus de control están resaltados en azul. Marcar en rojo los buses de direcciones y dejar en negro los buses de datos en el diagrama.
¿Encuentran alguna conexión que pueda interpretarse como de datos o direcciones según cambie la instrucción a ejecutar?
4. Considere la siguiente instrucción `and $t0, $t1, $t2`. ¿Qué valores toman las señales de control? ¿Qué unidades funcionales realizan una tarea útil? ¿Qué unidades producen una salida pero esa salida no se usa en la instrucción?
5. Si quisiéramos agregar la instrucción `sll` (*shif left logical*) al *datapath*. ¿Qué modificaciones tendríamos que hacer? ¿Qué unidades habría que agregar? En general para las operaciones de *shift* se usa un circuito llamado *barrel shifter*. Un ejemplo de la instrucción sería `sll $t0, $t1, 5` y significa desplazar a la izquierda 5 bits de `$t1` y guardar el resultado en `$t0`.
6. Marcar el camino crítico para las instrucciones `lw`, `sw`, `add` y `beq` en el diagrama del *datapath* sacado del libro de Patterson (el que está en el blog). El camino crítico es el camino más largo que recorre una instrucción de inicio a fin. Usar los tiempos de propagación del ejercicio 8.
7. ¿Qué agregarían al *datapath* para implementar instrucciones de comparación como `slt` (*set on less than*)? Ejemplo: `slt $t0, $t1, $t2` significa si `$t1` es menor a `$t2` guardar un uno en `$t0`, de lo contrario guardar un cero.
8. Asumiendo que los bloques del *datapath* tienen las siguientes latencias:
|Instr Mem|Add|Mux|ALU|Reg File|Data Mem|Sign extend|Shift left 2|
|---|---|---|---|---|---|---|---|
|200ps|70ps|20ps|90ps|90ps|250ps|15ps|10ps|

  ¿Cuál es la duración mínima del ciclo de reloj de esta CPU? ¿Qué instrucción se ejecuta más rápido, un `add` o un `lw`? ¿Cuál es la frecuencia máxima de esta CPU y cuántas MIPS (millones de instrucciones por segundo) puede ejecutar?
9. Considere la instrucción `1010 1100 0110 0010 0000 0000 0001 0100`. Asumiendo que la memoria de datos está completamente en ceros y que los registros tienen los siguientes valores.
|`$0`|`$1`|`$2`|`$3`|`$4`|`$5`|`$6`|`$8`|`$12`|`$31`|
|---|---|---|---|---|---|---|---|---|---|
|0|-1|2|-3|-4|10|6|8|2|-16|

 - ¿Cuáles son la salidas del *sign extend* y del *shift left 2*?
 - ¿Qué valores toman las entradas de ALU control?
 - ¿Cuál es el nuevo valor del PC después de ejecutar la instrucción? Resaltar el camino por el cual se determina este valor.
 - Para cada multiplexor indicar el valor de su salida durante esta instrucción.
 - ¿Qué valores toman las entradas de la ALU y de las dos unidades sumadoras?
 - ¿Qué valores toman las entradas del archivo de registros?


10. ¿Qué modificaciones habría que hacer en el *datapath* para agregar la instrucción `jal` (*jump and link*)?. Usar la versión simulada en Logisim que incorpora la lógica para `j` (*jump*).
