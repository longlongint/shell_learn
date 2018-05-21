#!/bin/bash
# An example of using the expr command
var1=100
var2=50
var3=45
var3=$(expr $var2 / $var1)       #expr 命令允许在命令行上处理数学表达式
echo The result is $var3

var4=$[$var1 * ($var2 - $var3)]  #注意bash shell数学运算符只支持整数运算
var3=$[$var1 / $var2]            #z shell（zsh）提供了完整的浮点数算术操作
echo The final result is $var4