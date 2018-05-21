#!/bin/bash
# trying to access script parameters inside a function
function badfunc1 {
	temp=$[ $value + 5 ] #注意，在函数内部能直接使用外部定义的全局变量
	local v=$[ $1 * $2 ] #可以使用local定义局部变量
	echo $[ $1 * $2 ]
}
temp=4                   #注意，默认情况下,你在脚本中定义的任何变量都是全局变量
if [ $# -eq 2 ]
then        
	value=$(badfunc1)    #应该写成 $(badfunc1 $1 $2)
	echo "The result is $value"
else
	echo "Usage: badtest1 a b"
fi