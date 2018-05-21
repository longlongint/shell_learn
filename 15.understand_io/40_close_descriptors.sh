#!/bin/bash
# testing closing file descriptors
exec 3> test17file
echo "This is a test line of data" >&3
exec 3>&-                   #1.要关闭文件描述符，将它重定向到特殊符号 &-
echo "This won't work" >&3  #2.这里shell会生成错误消息
cat test17file              #3.打开了同一个输出文件，shell会用一个新文件来替换已有文件
exec 3> test17file         
echo "This'll be bad" >&3   #4.所以意味着这几句话会覆盖已有文件