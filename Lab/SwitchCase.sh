read A
case $A in
	#case 1
	1) echo "Value is 1";;

	2) echo "Value is 2";;
	
	"ABC") echo "String is ABC";;
	
	"PQR") echo "String is PQR";;
	
	*) echo "Default";;
esac

