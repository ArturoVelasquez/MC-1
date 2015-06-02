#!/bin/bash

info=$(curl -s https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv | grep $1 | sed "s/$1	//g")

echo '############################################'
figlet StarDate
echo '############################################'
figlet $1
echo $info
echo '############################################
LOOK AT THE FOLLOWING STARS:
RA/°	DEC/°	HIP No.'
