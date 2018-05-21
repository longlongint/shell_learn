	#!/bin/bash
	# display user information from the system.
	echo "User info for userid: $USER"
	echo UID: $UID                      #1.环境变量名称之前加上美元符"$"来使用这些环境变量
	echo HOME: "$HOME"                  #2.加上双引号也没有问题
	echo "The cost of the item is \$15" #3.想显示"$"符号需要在前面加上反斜杠
	# testing variables
	days=10                             #4.shell脚本会自动决定变量值的数据类型
	guest="Katie"                       #5.变量名区分大小写
	echo "$guest checked in $days days ago"
	days=5                              #6.赋值时不用$，但是引用必须用$符号
	guest="Jessica"
	echo "$guest checked in $days days ago"
	                                    #7.在shell脚本结束时变量会被删除掉
	#有两种方法可以将命令输出赋给变量：
	#1. 反引号字符（ ` ）  ：注意不是单引号（'）
	#2. $() 格式                                   
	one=`date`                          #8.shell命令的输出赋给变量方法1
	two=$(date)                         #9.赋值等号和命令替换字符之间没有空格
	echo "The date and time are: " $one #
	#下面这个例子很常见，它在脚本中通过命令替换获得当前日期并用它来生成唯一文件名。
	# copy the /usr/bin directory listing to a log file
	today=$(date +%y%m%d)               #today存储日期
	ls /usr/bin -al > log.$today        #ls的输出重定向到log.180515文件中，如果输出文件已经存在了，重定向操作符会用新的文件数据覆盖已有文件(默认的 umask 设置)
