#!/bin/bash
declare -a array
echo "Enter 5 elements:"
for i in {0..4}
do
    read -p "Enter element $((i + 1)): " array[$i]
done
echo "The elements you entered are: ${array[@]}"
