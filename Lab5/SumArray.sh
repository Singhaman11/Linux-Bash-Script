#Write a shell script to find the sum of all elements in an array using function.

Array()
{
	declare -a arr
	echo Enter 5 elements in the array
	Sum=0
	for (( i = 0; i < 5; i++ ))
	do
		read -p "Enter element $((i+1)): " arr[$i]
		Sum=$((Sum + arr[$i]))
	done
	echo Sum of array elements = $Sum
}
Array
