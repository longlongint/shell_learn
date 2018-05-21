#!/bin/bash
# breaking out of an outer loop
for (( a = 1; a < 4; a++ ))
do
	echo "Outer loop: $a"
	for (( b = 1; b < 100; b++ ))
	do
		if [ $b -gt 4 ]
		then
			break 2      #1.注意，加上参数这里可以跳出两层循环
		fi
		echo " Inner loop: $b"
	done
done