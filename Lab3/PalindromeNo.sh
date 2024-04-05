#!/bin/bash
echo "Enter a no."
read n
n1=$n
rev=0
while [[ $n -gt 0 ]];
do
        rev=$((rev * 10 + n % 10))
        n=$((n / 10))
done
if [[ $rev -eq $n1 ]];
then
	echo Palindrome no.
else
	echo Not a Palindrome no.
fi
