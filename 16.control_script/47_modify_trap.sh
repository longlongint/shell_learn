#!/bin/bash
# Modifying a set trap
#
trap "echo ' Sorry... Ctrl-C is trapped.'" SIGINT
              #捕获"终止进程"信号
count=1
while [ $count -le 5 ]
do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
#
trap "echo ' I modified the trap!'" SIGINT
               #到这里处理信号的方式已经变了
count=1
while [ $count -le 5 ]
do
	echo "Second Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done
trap -- SIGINT #删除设置好的捕获,单破折号也能起作用
echo "Ctrl-C can use le"
count=1
while [ $count -le 5 ]
	echo "Second Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done