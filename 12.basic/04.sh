#!/bin/bash
var1=100
var2=45
var3=$(echo "scale=4; $var1 / $var2" | bc)#将 scale 变量设置成了四位小数，并在 expression 部分指定了特定的运算
echo The answer for this is $var3