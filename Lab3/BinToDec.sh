#!/bin/bash
echo "Enter a binary no."
read bi
count=0
dec=0
while [[ $bi -gt 0 ]];
do
	if [[ $((bi % 10)) -eq 1 ]];
	then
		dec=$((dec + 2 ** count))
	fi
	bi=$((bi / 10))
	count=$((count + 1))
done
echo Dec no. = $dec
echo Count = $count
