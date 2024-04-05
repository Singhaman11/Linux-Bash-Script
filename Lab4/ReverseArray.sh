# Write a shell script to display the elements of an array in reverse order.
#!/bin/bash
array=(2 5 7 0 1)
for (( i=4; i>=0; i-- ))
do
	echo "${array[$i]}"
done
