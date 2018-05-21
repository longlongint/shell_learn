#!/bin/bash
# using the until command
var1=100
until echo $var1  #shell会执行指定的多个测试命令，只有在最后一个命令成立时停止
[ $var1 -eq 0 ]   #退出状态码不为0，才执行循环中列出的命令
do                # -eq ：检查是否相等
	echo Inside the loop: $var1
	var1=$[ $var1 - 25 ]
done