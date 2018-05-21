#!/bin/bash
# finding files in the PATH
IFS=:
for folder in $PATH  #1.遍历每一个PATH目录中的路径
do
	echo "$folder:" 
	echo "$IFS"      
	for file in $folder/* #为什么IFS是":"，但是这里还是能分开
	do
		echo "$IFS" 
		if [ -x $file ]
		then
			echo " $file"
		fi
	done
done