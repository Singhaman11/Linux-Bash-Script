Hello()
{
	echo "Hello world! $1 $2"
	return 10
}

Hello ABC XYZ
ret=$?
echo $ret

