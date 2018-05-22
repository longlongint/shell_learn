#!/bin/bash
# changing the IFS value
# 通过改变IFS的值处理 /etc/passwd文件
IFS.OLD=$IFS
IFS=$'\n'      #先按行处理文件数据
for entry in $(cat /etc/passwd)
do
	echo "Values in $entry –"
	IFS=:      #再把每一行用空格分开
	for value in $entry
	do
		echo " $value"
	done
done