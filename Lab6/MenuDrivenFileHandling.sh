#Write a menu-driven file-handling shell program. Let it offer the user the choice of creating, copying, removing and renaming files. Once the user has made a choice, have the program ask the user for the necessary information and execute the corresponding code.

while true;
do
    	echo Enter 1 to create a file.
    	echo Enter 2 to copy a file.
    	echo Enter 3 to remove a file.
    	echo Enter 4 to rename a file.
	echo Enter 5 to EXIT.
	read choice
	case $choice in
		1)
			echo Enter the name of the file to be created.
			read filename
			touch $filename
			echo "$filename created successfully"
			;;
		2)
			echo Enter the name of the file to copy.
			read filename
			echo Enter the destination where the file is going to be copied.
			read destination
			cp $filename $destination
			echo "$filename has been copied to $destination"
			;;
		3)
			echo Enter the name of the file to remove.
			read filename
			rm $filename
			echo "$filename has been removed"
			;;
		4)
			echo Enter the name of the file to rename.
			read filename
			echo Enter the new name
			read newname
			mv $filename $newname
			echo "$filename has been renamed to $newname"
			;;
		5)
			echo Exiting...
			break
			;;
		*)
			echo Invalid choice. Please try again.
			;;
	esac
done

