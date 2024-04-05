#Write a shell script to swap two variables using a function.

#!/bin/bash
Swap()
{
	echo "Enter two nos."
	read A
	read B
	echo Before swapping: A=$A  B=$B
	C=$A
	A=$B
	B=$C
	echo After swapping: A=$A  B=$B
}
Swap
