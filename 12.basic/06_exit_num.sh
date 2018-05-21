#!/bin/bash
#shell中运行的每个命令都使用退出状态码（exit status）告诉shell它已经运行完毕
var1=10
var2=30
var3=$[$var1 + $var2]
exit $var3            #exit 命令的参数中使用变量
                      #如果值大于255，返回模256后得到的余数