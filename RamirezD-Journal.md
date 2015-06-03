#(27-05-15) Primera Clase
¡Hola mundo!, aquí estoy comenzando el curso de **Métodos Computacionales**.

Herramientas del curso:
+ git,
+ GitHub,
+ bash,
+ C,
+ Python,

y los métodos a estudiar son:
1. interpolación
2. análisis de Fourier,
3. diferenciación e integración numérica,
4. ecuaciones diferenciales ordinarias,
5. ecuaciones diferenciales parciales,
6. y métodos de Monte Carlo

#(28-05-15) Primera Lectura
Resumen realizado de las lecturas **Pro Git** pgs 27-34 y **Pro Bash Programming** pgs 1-28.

#(29-05-15) Segunda Clase

#(02-06-15) Tercera Clase
####Expresiones regulares.
- *^* Representa el inicio de una línea.
- *$* Representa el final de una línea.
- *.* Representa cualquier caracter.
- *\n* Representa un 'enter' o paso a nueva línea.
- *[0-10], [a-z]* Al encerrar en paréntesis cuadrados hago referencia a un intervalo. Agregar *^* vuelve el rango exclusivo: *[^0-3]* busca los dígitos que no sean 0,1,2,3.

#####Ejemplo:
Busco la info de los parámetros orbitales de los satélites de Júpiter de [esta](http://nssdc.gsfc.nasa.gov/planetary/factsheet/joviansatfact.html) página. El objetivo es cambiar el archivo al formato .csv.

Para cambiar todo lo que se encuentre dentro de paréntesis se utiliza la expresión regular: ```\(.*\)```.

Para borrar los espacios al principio de cada línea (antes de los nombres de los satélites se utiliza la expresión regular: ```^ *```.

Para cambiar los espacios por comas, delimitador de archivos .csv, se utiliza la expresión regular: ``` *``` (hay un espacio antes del asterisco).

Para eliminar los cambios de línea (enters) se utiliza la expresión regular: ```\n\n```.

Ahora manualmente eliminamos los subtítulos que posee el archivo.

Borramos comas indeseadas al final de cada línea.

####GNUPlot.
Es una herramienta para realizar gráficas.
Para que las gráficas realizadas se muestren desde la terminal se escribe ```set term dumb```.

Para que las gráficas realizadas se muestren en una ventana *pop-out* es con el comando ```aqua``` (falta por investigar esto bien para Ubuntu.

Para tomar los datos a graficar de un archivo externse se debe primero ir a la carpeta donde se encuentre el archivo y luego escribir ```set data file separator ","```.

```
plot "joviansatellites.csv" using 2:3 with lines
```

Es posible definir funciones:
```
quad (x) = x**2
cube (x) = x**3
```

Para aplicar una función a <u>todos</u> los datos de una columna en vez de poner la la variable se pone $

###Hands-on 2
#####Expresiones regulares

#(03-06-15) Cuarta Clase
Miremos