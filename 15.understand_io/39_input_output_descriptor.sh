#!/bin/bash
# testing input/output file descriptor
exec 3<> testfile       #1.用exec命令将文件描述符 3 分配给文件 testfile 以进行文件读写
read line <&3           #2.用 read 命令读取文件中的第一行
echo "Read: $line"      #3.需要注意：写入文件中的数据会覆盖已有的数据
echo "This is a test line" >&3