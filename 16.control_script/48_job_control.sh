#!/bin/bash
# Test job control
#
echo "Script Process ID: $$"   #显示Linux系统分配给该脚本的PID
#
count=1
while [ $count -le 10 ]
do
	echo "Loop #$count"
	sleep 10
	count=$[ $count + 1 ]
done
#
echo "End of script..."