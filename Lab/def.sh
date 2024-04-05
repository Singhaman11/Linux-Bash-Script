echo "Enter 2 nos."
read A
read B
if [ $A -gt $B ] 
then
	echo "A is greater than B"
elif [ $B -gt $A ] 
then
	echo "B is greater then A"
else
	echo "A is equal to B"
fi

