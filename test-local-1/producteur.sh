#!/bin/bash

n=1000
delay=3
while :
do
	nb=$(redis-cli --raw LLEN maliste)

	echo "Envoi d'un burst de 1000 valeurs, taille=$nb"
	for ((i=0; i<$n; i++))
	do
		value=$RANDOM
		redis-cli LPUSH maliste "$value" > /dev/null
	done
	sleep 3
done
