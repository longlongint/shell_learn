#!/bin/bash
# testing the exit status of a function
func1() {
	echo "trying to display a non-existent file"
	ls -l badfile
}
echo "testing the function: "
func1                         #shell会把函数看成一个小型的脚本，默认退出状态吗是最后一条命令的推出状态码
echo "The exit status is: $?"