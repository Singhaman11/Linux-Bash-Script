#!/bin/bash
echo Enter 2 values
read A
read B
A=`expr $A + $B`
B=`expr $A - $B`
A=`expr $A - $B`
echo A after swap = $A
echo B after swap = $B

