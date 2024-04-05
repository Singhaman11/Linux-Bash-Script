#Write a shell script to calculate x^y (x raised to the power of y) using a function and return the answer.

Exponent()
{
	echo Enter a no.
	read X
	echo Enter the power of the no.
	read Y
	expo=$(( X**Yi ))
	echo "$X^$Y = $expo"
}
Exponent
