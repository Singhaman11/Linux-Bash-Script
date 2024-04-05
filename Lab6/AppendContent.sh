#Write a shell script to enter a file name. If it exists, append some content into it. If it doesn't exist, create the file and add content.

echo Enter the file name
read file
echo Enter the content to append
read content

if [ -f $file ]
then
	echo File exists.
else
	echo New file created.
fi

echo $content >> $file

echo Content appended to file succefully.
