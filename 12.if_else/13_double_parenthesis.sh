#!/bin/bash
# using double parenthesis
#
val1=10
#
if (( $val1 ** 2 > 90 ))
then
(( val2 = $val1 ** 2 ))
echo "The square of $val1 is $val2"
fi
# 双花括号还支持下面这些符号：
#	val++	后增
#	val--	后减
#	++val   先增
#	--val   先减
#	!       逻辑求反
#	~		位求反
#	**		幂运算
#	<<		左位移
#	>>		右位移
#	&		位布尔和
#	|		位布尔或
#	&&		逻辑和
#	||		逻辑或