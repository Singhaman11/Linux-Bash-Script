#!/bin/bash
echo Enter basic salary
read Basic
TA=$(echo $Basic \* 0.3 | bc)
HRA=$(echo $Basic \* 0.07 | bc)
Gross=$(echo $Basic + $TA + $HRA | bc)
echo TA = $TA
echo HRA = $HRA
echo Gross = $Gross

