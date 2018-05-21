#!/bin/bash
# Check if either a directory or file exists
# 文件测试
location=$HOME
file_name="sentinel"
#
if [ -e $location ]
then #Directory does exist
	echo "OK on the $location directory."
	echo "Now checking on the file, $file_name."
#
if [ -e $location/$file_name ]   #检查sentinel文件是否存在于$HOME目录中
then #File does exist
	echo "OK on the filename"
	echo "Updating Current Date..."
date >> $location/$file_name
#
else #File does not exist
	echo "File does not exist"
	echo "Nothing to update"
fi
#
else #Directory does not exist
	echo "The $location directory does not exist."
	echo "Nothing to update"
fi