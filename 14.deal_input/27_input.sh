#!/bin/bash
# using one command line parameter
#
factorial=1
for (( number = 1; number <= $1 ; number++ ))
do
	factorial=$[ $factorial * $number ]
done
echo The factorial of $1 is $factorial
if [ -n "$1" ]&&[ -n "$2" ]||[ $# -gt 1 ]  
then                                   #0.注意：这里必须加引号
	echo "$ # = $#"                    # $# 代表参数个数
    total=$[ $1 * $2 ]                 #1.一个参数乘以第二个参数
	echo The first parameter is $1.    #2.参数也可以是字符串，以空格分隔
	echo The second parameter is $2.   #3.如果参数不止9个，可以用花括号：${10}
	echo The total value is $total.
else
	echo "please input two number"
fi
echo "the last parameter is ${!#}"      #4.最后一个参数，注意{}里面不能用"$"
echo "$0 is run in the end"             #5.$0保存的是脚本的名字
#潜在问题：如果使用另一个命令来运行shell脚本，命令会和脚本名混在一起，出现在 $0 参数中。
echo "$(basename $0)is run in the end " #不过可以这样解决