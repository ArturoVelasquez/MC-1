#!/bin/bash
curl -s https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv | awk -F"," '{print $10","$8","$9","$2}' | sed '1,32d' > hyg.csv

info=$(curl -s https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv | grep $1 | sed "s/$1	//g")

anho1=$((2015-$1))
anho2=$((2016-$1))

echo '############################################'
figlet StarDate
echo '############################################'
figlet $1
echo $info
echo '############################################
LOOK AT THE FOLLOWING STARS:
RA/°	DEC/°	HIP No.'
awk -F"," '{if ('$anho1' <= $1 && '$anho2' > $1) {print substr($2,1,4)"\t"substr($3,1,5)"\t"$4}}' hyg.csv | head -5
