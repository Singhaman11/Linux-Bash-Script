#Write a shell script to enter a file name and check if it exists. If yes, check & display its read, write and execute permissions.

echo Enter the file name
read file
if [ -f "$file" ]
then
	echo File exists
	
	if [ -r $file ]
	then
		echo Read = yes
	else
		echo Read = no
	fi

	if [ -w $file ]
        then
                echo Write = yes
        else
                echo Write = no
        fi

	if [ -x $file ]
        then
                echo Execute = yes
        else
                echo Execute = no
        fi
else
	echo File does not exists.
fi
