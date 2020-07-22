#!/bin/bash
letters=$(echo {a..z} | tr -d ' ')
numbers=$(echo {1..9} | tr -d ' ')
for N in 1 2 .. 5
do
	x=$randomNumber
	while [ $((RANDOM % 9 + 1)) -le 8 ]
	do
		echo ""
	done

	randomLetter=${letters:$((RANDOM%26+1)):1}
	echo $randomLetter
done
while [ $((RANDOM % 9 + 1)) -le 8 ]
do
	echo ""
done
