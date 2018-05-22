#!/bin/bash
# testing the C-style for loop
for (( i=1; i <= 10; i++ ))  #1.变量赋值可以有空格
do                           #2.条件中的变量不以美元符开头
echo "The next number is $i" #3.迭代过程的算式未用 expr 命令格式
done
##############################
# multiple variables
for (( a=1, b=10; a <= 10; a++, b-- ))
do
echo "$a - $b"
done
##############################