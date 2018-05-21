#!/bin/bash
# redirecting input file descriptors
exec 6<&0          #1.先用文件描述符 6 用来保存 STDIN 的位置
exec 0< testfile   #2.将 STDIN 重定向到一个文件
count=1
while read line    #3.read命令的所有输入都来自重定向后的 STDIN
do
	echo "Line #$count: $line"
	count=$[ $count + 1 ]
done
exec 0<&6          #4.将 STDIN 恢复到原先的位置
read -p "Are you done now? " answer
case $answer in
	Y|y) echo "Goodbye";;
	N|n) echo "Sorry, this is the end.";;
esac