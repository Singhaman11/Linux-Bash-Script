#!/bin/bash
echo Enter 2 nos.
read A
read B
Add=`expr $A + $B`
Subtract=`expr $A - $B`
Multiply=`expr $A \* $B`
Division=`expr $A / $B`
Modulus=`expr $A % $B`
echo Add = $Add
echo Subtract = $Subtract
echo Multiply = $Multiply
echo Division = $Division
echo Modulus = $Modulus

