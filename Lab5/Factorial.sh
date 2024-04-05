: <<COMMENT
Write a shell script to find the factorial of a number using
    i) function with loop
    ii) recursive function.
COMMENT

#Function with loop.
Factorial()
{
	echo "Enter a no."
	read N
	factorial=1
	while [ $N -gt 0 ] 
	do
		factorial=$((factorial * N))
		N=`expr $N - 1`
	done
	echo Factorial = $factorial 
}
Factorial

#Recursive function to find the factorial.
echo "Enter a no."
read N1
factorial=1
RecursiveFunction()
{
	if [ $1 -gt 0 ]
	then
		factorial=$((factorial * $1))
		RecursiveFunction $(($1 - 1))
	else
		return 1
	fi
}
RecursiveFunction $N1
echo Factorial = $factorial
