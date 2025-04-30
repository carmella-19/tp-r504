#!/bin/bash
maliste="message_queue"
SEUIL_ALERT=30000
delay=2
x=0

while :
do
	
	ls=$(redis-cli --raw LLEN maliste)
	echo "iter $x, taille=$ls"
	if [ $ls -gt 0 ]
	then
		echo "$x;$thres;$value" >>issue.csv
		ls=$(redis-cli --raw LLEN maliste)
		if ! [ "value" = "" ]

		then
			if [ $value -gt $thres ]
			then 

				sleep $delay
			fi

		fi
		x=$(( $x+1 ))

	else 

		echo "liste vide, terminaison"
	exit 0
	fi

done

