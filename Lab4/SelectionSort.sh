# Write a shell script to sort the elements in an array using Selection sort
#!/bin/bash
declare -a arr
arr=('45' '24' '90' '67' '17')
for (( i=0; i<=4; i++ ))
do
	p=$i
	for (( j=$((i+1)); j<=4; j++ ))
	do
		if [[ ${arr[$i]} -gt ${arr[$j]} ]]
		then
			p=$j
		fi
	done
	if [[ $p -ne $i ]]
	then
		t=${arr[$i]}
		arr[$i]=${arr[$p]}
	        arr[$p]=$t
	fi
done
echo Sorted array in ascending order:  ${arr[@]}
