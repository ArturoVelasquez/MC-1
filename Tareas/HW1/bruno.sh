#!/bin/bash
#Descarga el archivo y elimina la línea names
curl -s https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv | awk 'NR>1' > kepler.csv

#Cuenta e imprime la cantidad de planetas en el catálogo
numplanetas=$(wc -l < kepler.csv)
echo 'Cantidad de planetas en el catálogo: '$numplanetas

#Exporta a un archivo la informaicón de nombre y masa de planetas con masa menor a una centésima de la de Júpiter
awk -F"," '{if ($2 < 0.01 && $2 >= 0) {print $1","$2}}' kepler.csv > menorJupiter.csv

#Cuenta e imprime la cantidad de planetas con masa menor a una centésima de la de Júpiter
numplanetasjupiter=$(wc -l < menorJupiter.csv)
echo 'Cantidad de planetas con masa menor a una centésima de la de Júpiter: '$numplanetasjupiter

#Imprime la info de los planetas mencionados
cat menorJupiter.csv

awk -F"," '{if ($6 > 0) {print $1","$6}}' kepler.csv | sort -t\, -k 2,2n | head -1
sort -o hola.csv hola.csv
