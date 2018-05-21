#!/bin/bash
# array variable to function test
function testit {
	local newarray
	newarray=(`echo "$@"`)             #重建数组变量，注意了这个点不是单引号
	echo "value2 is ${newarray[2]}  "  #这里就又可以操作数组一样操作变量了
	echo "The new array value is: ${newarray[*]}"
}
myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testit ${myarray[*]}

#####################################下面这种写法不行
function testit {
	echo "The parameters are: $@"
	thisarray=$1
	echo "The received array is ${thisarray[*]}"
}
myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
testit ${myarray[*]}