#!/bin/bash
# using an alternative file descriptor
exec 3>test13out                 #可以用 exec 命令来给输出分配文件描述符
#exec 3>>test13out               #也可以使用 exec 命令来将输出追加到现有文件中
echo "This should display on the monitor"
echo "and this should be stored in the file" >&3
echo "Then this should be back on the monitor"