#!/bin/bash
# using the return command in a function
function dbl {
	read -p "Enter a value: " value
	echo "doubling the value"
	return $[ $value * 2 ]          #使用return改变退出状态码
}                                   #1.退出状态码必须是0~255
dbl                                 #2.必须函数一结束就取返回值，插入别的语句会使状态码改变
echo "The new value is $?"