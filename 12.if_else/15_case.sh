#!/bin/bash
# using the case command
# 使用case命令
case $USER in
rich | barbara)
	echo "Welcome, $USER"
	echo "Please enjoy your visit";;
testing)
	echo "Special testing account";;
jessica)  #")"相当于C语言中的":"
	echo "Do not forget to log off when you're done";;
*)        #*通配符即匹配所有情况
echo "Sorry, you are not allowed here";;
esac      #case语句结束