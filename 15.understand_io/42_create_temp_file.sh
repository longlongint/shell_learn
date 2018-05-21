#!/bin/bash
# creating and using a temp file
tempfile=$(mktemp test19.XXXXXX)      #生产一个临时文件
exec 3>$tempfile                      #输出重定向到该文件
echo "This script writes to temp file $tempfile"
echo "This is the first line" >&3     
echo "This is the second line." >&3
echo "This is the last line." >&3 
exec 3>&-                             #关闭文件描述符
echo "Done creating temp file. The contents are:"
cat $tempfile
rm -i $tempfile 2> /dev/null          #删除文件，并把删除的提示信息输出到/dev/null，即不显示