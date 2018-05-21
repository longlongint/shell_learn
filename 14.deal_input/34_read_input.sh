#!/bin/bash
# testing the read -p option
#
#
echo -n "Enter your name: "             # -n 参数使不换行
read name
echo "Hello $name, welcome to my program. "
                                        # -t 指定等待的秒数	
read  -t 5 -p "Enter your name: "       # 不指定变量，数据会放入特殊环境变量REPLY中
echo Hello $REPLY, welcome to my program.

read -p "Please enter your age: " age   # -p 命令直接指定提示字符串
days=$[ $age * 365 ]
echo "That makes you over $days days old! "

read -n1 -p "Do you want to continue [Y/N]? " answer
case $answer in                         # -n 参数指定接收的输入个数
Y | y) echo
echo "fine, continue on…";;
N | n) echo
echo OK, goodbye
exit;;
esac
                                        # -s 参数避免在命令中输入的数据出现在显示器上
read -s -p "Enter your password: " pass #事实是会显示，只是跟背景色一样
echo "Is your password really $pass? "