#!/bin/bash
# using recursion
function factorial {
	if [ $1 -eq 1 ]
	then
		echo 1       #为什么这里不会输出1：因为作为右值了吧
	else
	local temp=$[ $1 - 1 ]         
	local result=$(factorial $temp)
		echo $[ $result * $1 ]  
	fi
}
read -p "Enter value: " value
factorial $value   #最后一个值没有被接收所以会输出
result=$(factorial $value)
echo "The factorial of $value is: $result"