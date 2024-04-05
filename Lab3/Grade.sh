#!/bin/bash
echo Enter the mark
read m
echo "Qualification  |  Grade  |  Score on 100"
echo "----------------------------------------"
echo " Outstanding   |    O    |    90 to 100"
echo " Excellent     |    E    |    80 to 89"
echo " Very good     |    A    |    70 to 79"
echo " Good          |    B    |    60 to 69"
echo " Fair          |    C    |    50 to 59"
echo " Below average |    D    |    40 to 49"
echo " Failed        |    F    |    Below 40"
if [ $m -ge 90 ] && [ $m -le 100 ];
then
	echo Grade: O
elif [ $m -ge 80 ] && [ $m -lt 90 ];
then
	echo Grade: E
elif [ $m -ge 70 ] && [ $m -lt 80 ];
then
        echo Grade: A
elif [ $m -ge 60 ] && [ $m -lt 70 ];
then
        echo Grade: B
elif [ $m -ge 50 ] && [ $m -lt 60 ];
then
        echo Grade: C
elif [ $m -ge 40 ] && [ $m -lt 50 ];
then
        echo Grade: D  
else
	echo Grade: F
fi
