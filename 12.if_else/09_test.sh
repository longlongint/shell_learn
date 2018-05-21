#!/bin/bash
# Test 命令测试变量 my_variable 中包含有内容
my_variable=""
#
if test $my_variable
then
	echo "The $my_variable expression returns a True"
#
else
	echo "The $my_variable expression returns a False"
fi