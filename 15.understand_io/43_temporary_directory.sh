#!/bin/bash
# using a temporary directory
tempdir=$(mktemp -d dir.XXXXXX)   #创建临时文件夹
cd $tempdir
tempfile1=$(mktemp temp.XXXXXX)   
tempfile2=$(mktemp temp.XXXXXX)
exec 7> $tempfile1                #重定向文件描述符到文件
exec 8> $tempfile2
echo "Sending data to directory $tempdir"
echo "This is a test line of data for $tempfile1" >&7
echo "This is a test line of data for $tempfile2" >&8