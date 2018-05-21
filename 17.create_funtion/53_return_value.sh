#!/bin/bash
# using the echo to return a value
function dbl {               #1.注意这里要加空格
	read -p "Enter a value: " value2 
	echo $[ $value2 * 2 ]
}
result=$(dbl)                #2.这样可以接收echo的返回值
echo "The new value is $result"