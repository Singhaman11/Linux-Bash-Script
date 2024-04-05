#!/bin/bash
echo Enter marks of 3 subjects
read M1
read M2
read M3
echo Enter marks given out of
read OFM
Total=`expr $M1 + $M2 + $M3`
Avg=$(echo "scale=2; $Total / 3.0" | bc)
Percentage=$(echo "scale=2; ($Total / ($OFM * 3.0)) * 100.0" | bc)
echo Avg = $Avg
echo Percentage = $Percentage%

