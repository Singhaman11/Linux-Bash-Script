read A
while [ $A -lt 10 ] 
do
	echo $A
	A=`expr $A + 1`
done

echo " "

until [ $A -gt 10 ] 
do
	echo $A
	A=`expr $A + 1`
done

