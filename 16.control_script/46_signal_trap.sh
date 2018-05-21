#!/bin/bash
# Testing signal trapping
#                                  #抓捕终止进程信号
trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
trap "echo ' OK,as your wish , I STOP    '" EXIT
#                                  #捕获退出信号
echo This is a test script
#
count=1
while [ $count -le 10 ]
do
	echo "Loop #$count"
	sleep 1
	count=$[ $count + 1 ]
done