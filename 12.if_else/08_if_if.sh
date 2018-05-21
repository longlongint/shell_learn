#!/bin/bash
# 甚至可以更进一步，让脚本检查拥有目录的不存在用户以及没有拥有目录的不存在用户。这
# 可以通过在嵌套 elif 中加入一个 else 语句来实现。
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
then
	echo "The user $testuser exists on this system."
#
elif ls -d /home/$testuser      #每块命令都会根据命令是否会返回退出状态码 0 来执行。记住，bash shell会依次执行 if 语句，
                                #只有第一个返回退出状态码 0 的语句中的 then 部分会被执行
then
	echo "The user $testuser does not exist on this system."
	echo "However, $testuser has a directory."
#
else
	echo "The user $testuser does not exist on this system."
	echo "And, $testuser does not have a directory."
fi