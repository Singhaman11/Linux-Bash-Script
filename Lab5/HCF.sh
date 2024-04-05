#Write a shell script to find the HCF/GCD of two numbers using a recursive function.

echo Enter 2 nos.
read X
read Y
HCF=1
RecursiveHCF()
{
	if [[ $1 -gt $2 ]]
	then
		Divisor=$2
		Dividend=$1
	else
		Divisor=$1
		Dividend=$2
	fi
	if [[ $((Dividend % Divisor)) -eq 0 ]]
	then
		echo "HCF of $X & $Y = $Divisor"
	else
		R=$((Dividend % Divisor))
		RecursiveHCF $R $Divisor
	fi
}
RecursiveHCF $X $Y
