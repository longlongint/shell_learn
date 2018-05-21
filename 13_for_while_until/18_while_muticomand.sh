#!/bin/bash
# testing a multicommand while loop
var1=10
while echo $var1  #检查 var1 是否大于等于 0
[ $var1 -ge 0 ]   #只有最后一个测试命令的退出状态码会被用来决定什么时候结束循环
do                #每次迭代中所有的测试命令都会被执行，区别于C语言的 || 
echo "This is inside the loop"
var1=$[ $var1 - 1 ]
done