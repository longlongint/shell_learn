	#!/bin/bash
	# This script displays the date and who's logged on
	echo -n The time and date are:                 #注意-n选项不换行
	date
	echo "Let's see who's logged into the system:" #所有的引号都可以正常输出了
	who                                            #可以将 echo 语句添加到shell脚本中任何需要显示额外信息的地方
