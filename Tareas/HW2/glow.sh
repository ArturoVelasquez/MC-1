#!/bin/bash
((t = 0))
while true
do
	r=$(echo "(c($t*0.3))^2" | bc -l)
	t=$(($t+1))
	bash circle.sh $r
	sleep 1
	clear
done
