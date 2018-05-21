#!/bin/bash
# storing STDOUT, then coming back to it
exec 3>&1                                   #1.文件描述符3重定向到标准输出
exec 1>test14out                            #2.标准输出重定向到文件
echo "This should store in the output file"
echo "along with this line."
exec 1>&3                                   #3.利用该文件描述符3重定向回 STDOUT
echo "Now things should be back to normal"  #+.这句输出到屏幕