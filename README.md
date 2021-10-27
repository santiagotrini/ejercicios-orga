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

## MIPS: Control

[Apunte en el blog](https://la35.net/orga/mips-control.html).

1. Mirando las señales de control para `beq`, `j`, `lw`, `sw` y las instrucciones de tipo R. ¿Existe la posibilidad de combinar dos o más señales? ¿Puede reemplazarse alguna señal por la inversa de otra?
2. Agregar a la unidad de control vista la instrucción `addi`. ¿Qué valores usarían para las dos señales de ALU Op?
3. Qué diferencia encuentran en la palabra de control (las señales de control consideradas como un único número) entre estas dos instrucciones: `add $1, $2, $3` y `add $7, $8, $9`.
4. ¿Por qué es necesario tener una señal `RegWrite` para indicar que hay que escribir en el archivo de registros pero no hace falta una señal similar para el _Program Counter_?
5. Las 4 líneas que salen de ALU Control y entran como señales de control a la ALU, dentro de la ALU, ¿qué es lo que controlan? Observar lo que pasa en el circuito simulado en Logisim.
6. Si solo quisiéramos implementar instrucciones de tipo R en la CPU de MIPS. ¿Qué señales de control eliminarían y por qué?
7. Imaginar que solo tenemos que implementar `sw`, `lw` y `addi` en la CPU de MIPS. ¿Cómo harían para implementar el control de este _datapath_ sin agregar una sola compuerta para la unidad de control?
8. Completando el ejercicio 10 de la guía anterior (_datapath_). ¿Qué cambios harían en la unidad de control para que `jal` funcione correctamente?
9. Si eliminamos la señal `MemToReg`, ¿qué instrucciones no podrían ejecutarse correctamente?
10. La línea azul rotulada como `Zero` que sale de la ALU más que un dato es una señal de control que usa la instrucción `beq` para decidir si dos registros son iguales. Investigar y describir brevemente la solución que usa la arquitectura x86 para que se remonta al microprocesador Intel 8080. Es decir, ¿cuál es la lógica en x86 que se usa para instrucciones como _branchs_ que afectan a las instrucciones que siguen?

## MIPS: pipeline

[Apunte en el blog](https://la35.net/orga/mips-pipeline.html).

1. Realizar una tabla de doble entrada indicando en las columnas las cinco fases del _pipeline_ de MIPS y en las filas las siguientes instrucciones: `lw`, `sw`, `beq`, `j`, `addi` e instrucciones de tipo R. Marcar con una cruz las etapas en las que cada instrucción hace algo útil.
2. Indicar el o los tipos de riesgos que aparecen en el siguiente código. Explicar en cada caso por qué se genera un riesgo.
```
  addi    $t1, $zero, 10
loop:
  beq     $zero, $t1, exit
  addi    $t1, $t1, -1
  addi    $v0, $zero, 1
  addi    $a0, $zero, 42
  syscall
  j       loop
exit:
  addi    $v0, $zero, 10
```
3. Considerar el siguiente código.
```
or $1, $2, $3
or $2, $1, $4
or $1, $1, $2
```
Indicar los riesgos de datos. Si no hay _forwarding_ en este _pipeline_, ¿cómo podemos asegurar que las instrucciones den los resultados correctos? Dibujar un diagrama del _pipeline_ para estas tres instrucciones teniendo en cuenta la solución propuesta para eliminar los riesgos.
4. Indicar los contenidos de los registros del _pipeline_ y cuántos bits ocupa cada uno. Considerar las instrucciones `lw`, `sw`, `addi`, `beq` y las de tipo R. Ojo que en el artículo del blog puede haber alguna simplificación que no es del todo correcta.
5. ¿Por qué en un riesgo de datos entre dos instrucciones de tipo R no se necesita una "burbuja" pero entre un `lw` y una instrucción de tipo R sí?
6. Teniendo en cuenta el siguiente código:
```
lw   $t1, 0($t0)
lw   $t2, 4($t0)
add  $t3, $t1, $t2
sw   $t3, 12($t0)
lw   $t4, 8($t0)
add  $t5, $t1, $t4
sw   $t5, 16($t0)
```
Encontrar los riesgos en el código y reordenar para evitar burbujas en el _pipeline_. Considerar qué riesgos pueden salvarse mediante _forwarding_.
7. Si insertamos burbujas al _pipeline_ cada vez que en la fase IF traemos un _branch_ para esperar a saber cuál es la próxima instrucción. ¿Cuántos ciclos de reloj desperdiciamos?
8. Siguiendo con la pregunta anterior. ¿Qué podemos hacer para minimizar el costo de parar el _pipeline_ en cada _branch_?
9. Para los siguientes fragmentos de código indicar si: se ejecuta normalmente, se ejecuta correctamente usando solo _forwarding_ o tiene que insertar burbujas incluso pudiendo hacer uso de _forwarding_.
```
lw  $t0, 0($t0)
add $t1, $t0, $t0
```
```
add  $t1, $t0, $t0
addi $t2, $t0, 5
addi $t4, $t1, 5
```
```
addi $t1, $t0, 1
addi $t2, $t0, 2
addi $t3, $t0, 2
addi $t3, $t0, 4
addi $t5, $t0, 5
```
10. Modificar el circuito del Logisim del _datapath_ de ciclo único con unidad de control para que ejecute las instrucciones usando _pipelining_. Es decir, agregar los registros que separan las etapas. Ignorar completamente los riesgos de datos y de control.
