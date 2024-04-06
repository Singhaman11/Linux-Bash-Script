echo Enter the filename
read filename
if [[ -f $filename ]]
then
	echo "$filename exists"
	sort $filename | uniq > temp.txt
	mv temp.txt $filename
	echo "Duplicate lines have been removed from $filename"
else
	echo "$filename does not exists"
fi
