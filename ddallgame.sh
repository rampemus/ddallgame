#!/bin/bash
./generatelevel.sh > levelone.txt

levelonelength=$(wc -l ./levelone.txt | tr -dc '0-9')

T="$(date +%s)"

nvim +$((levelonelength/2)) levelone.txt

T="$(($(date +%s)-T))"

levelonelengthafter=$(wc -l ./levelone.txt | tr -dc '0-9')
amountofundeleted=$(grep '[a-z]' levelone.txt | wc -l | tr -dc '0-9')

if [ $((levelonelength - levelonelengthafter)) -eq 4 ] && [ $((amountofundeleted)) -eq 0 ];
then
	echo You deleted the rows in ${T} seconds
else
	echo You forgot to delete $amountofundeleted letters
fi

