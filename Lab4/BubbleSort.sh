#Write a shell script to sort the elements in an array using Bubble sort.

#!bin/bash
declare -a arr
arr=(45 24 90 67 17)
for (( i=0; i<=4; i++ ))
do
	for (( j=0; j<=$((4-i)); j++ ))
	do
		if [[ ${arr[$j]} -gt ${arr[$((j+1))]} ]]
		then
			t=${arr[$j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$t
		fi
	done
done
echo Sorted array in ascending order: ${arr[@]}
