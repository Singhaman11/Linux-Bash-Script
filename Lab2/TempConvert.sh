#!/bin/bash
echo Enter temp. in C
read C
F=$(echo "$C * 1.8 + 32" | bc)
echo Temp. in F = $F
