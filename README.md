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
5. Mismo programa que el ejercicio tres, pero imprimiendo la suma y el promedio de los números ingresados.
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

`AGREGAR EJERCICIOS`

## MIPS: código máquina

[Apunte en el blog](https://la35.net/orga/mips-maquina.html).

`AGREGAR EJERCICIOS`

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
