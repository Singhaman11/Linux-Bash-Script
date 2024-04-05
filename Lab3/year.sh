echo "Enter the year"
read y
if [ $(( y % 4 )) -eq 0 ]
then
	echo "Leap year"
else
	echo "Not a Leap year"
fi
