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

---
#(28-05-15) Primera Lectura
Resumen realizado de las lecturas **Pro Git** pgs 27-34 y **Pro Bash Programming** pgs 1-28.

---
#(29-05-15) Segunda Clase
Completamos introducción a Git. Taller realizado en el laboratorio.
Cómo hacer una tabla en Markdown:

|Hola|Escribo|Cosas|En
|---|---|-----|---|
|La|Tabla|  |  |
|  |   |  |  |
|  |   |  |  |

 Nota: algunos comandos de html sirven en markdown: <u>subrayado en html</u> - markdown propiamente no tiene un comando para subrayar.

---
#(02-06-15) Tercera Clase
###Expresiones regulares.
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

####Hands-On2 log
1. Construya una expresión regular que represente cuatro caracteres al inicio de una línea junto con un espacio a continuación.
```
^.{4}\ 
```
3. Descargue con `curl` el código fuente de la página [Pi - 10 Million Digits](http://pi.karmona.com), límpielo de todo caracter diferente a los dígitos de pi y divídalo en líneas con 20 dígitos cada una quedando ellas en un archivo con nombre `PIslices20.dat`.
```
#!/bin/bash
curl -s http://pi.karmona.com/ > PIslices20.dat #Descarga el código fuente de la página
sed -i '1d' PIslices20.dat #Elimina la primera línea
#Elimina texto referente a comandos HTML
sed -i 's/<CENTER><B>Pi\ -\ 10 Million\ Digits<\/B><BR><BR><BR>//g' PIslices20.dat
sed -i 's/<B>//g' PIslices20.dat
sed -i 's/<\/B>//g' PIslices20.dat
sed -i 's/<\/center><\/BODY><\/HTML>//g' PIslices20.dat
sed -i 's/<BR>//g' PIslices20.dat
#Inserta una línea nueva cada 20 caracteres (ignorando los puntos)
sed -E -i "s/.[^.]{20}/&\n/g" PIslices20.dat
```

###GNUPlot.
Es una herramienta para realizar gráficas.
Para que las gráficas realizadas se muestren desde la terminal se escribe ```set term dumb```.

Para que las gráficas realizadas se muestren en una ventana *pop-out* es con el comando ```aqua``` (falta por investigar esto bien para Ubuntu.

Para tomar los datos a graficar de un archivo externse se debe primero ir a la carpeta donde se encuentre el archivo y luego escribir ```set datafile separator ","```.

```
plot "joviansatellites.csv" using 2:3 with lines
```

Es posible definir funciones:
```
quad (x) = x**2
cube (x) = x**3
```

Para aplicar una función a <u>todos</u> los datos de una columna en vez de poner la la variable se pone $

####Hands-On2 log
1. Escriba un script de `bash` que reciba tres argumentos, el nombre de un archivo csv, el número de la columna para el eje horizontal y el número de la columna para el eje verticual y que haga con `gnuplot` una gráfica de dispersión con puntos visibles y unidos por líneas rectas. Haga pruebas con el archivo [joviansatellites.csv](https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/examples/joviansatellites.csv)]
```
#!/bin/bash
gnuplot<<EOF
set term dumb
set datafile separator ","
set xrange [1:350]
set yrange [0:780]
plot "joviansatellites.csv" using 2:3 with linesp
EOF
```

---
#(03-06-15) Cuarta Clase
`pqcopy` Copia en el portapapeles (al menos en Mac) - averiguar para ubuntu.

[Cómo hacer un fit en gnuplot](http://gnuplot.sourceforge.net/docs_4.2/node82.html)

Herramienta útil para copiar código html de páginas web -> w3m. `sudo apt-get install w3m`

---
#(05-06-15) Quinta Clase
```
touch esfericos.c
set view equal xyz #para que las gráficas de gnuplot en 3D se vean simétricas
```

Para cambiar la contraseña en compufísica (y linux en general) introducir el comando `passwd` en la consola.

####Hands-On3 log
1. Aprenda algo sobre [make](re-carpentry.org/v4/make/), y haga un resumen básico de su funcionalidad.

Make es una herramienta que ayuda a organizar dependencias de archivos cuando se quieren crear ejecutables. A veces el volumen de archivos a manejar es excesivamente grande y resulta ser una tarea muy largo y engorrosa realizar la compilación y creación de los ejectubales a mano. Para esto la herramienta **make** permite la creación de este tipo de archivos siguiendo algunos parámetros especificados por el usuario.

---
#(09-06-15) Sexta Clase

---
#(10-06-15) Séptima Clase

---
#(12-06-15) Octava Clase

---
#(16-06-15) Novena Clase

---
#(17-06-15) Décima Clase

---
#(19-06-15) Décima Primera Clase

---
#(23-06-15) Décima Segunda Clase

---
#(24-06-15) Décima Tercera Clase

---
#(26-06-15) Décima Cuarta Clase

---