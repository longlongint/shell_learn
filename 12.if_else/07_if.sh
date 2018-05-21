#!/bin/bash
# 这个脚本在 if 行采用了 pwd 命令。如果命令成功结束， echo 语句就会显示该文本字符串
if pwd
then
	echo "It worked"
fi
if IamNotaCommand       #由于这是个错误的命令，所以它会产生一个非零的退出状态码
then
	echo "It "
	echo "worked"       #这里可以放多条明令
else
	echo "It not worked!"
fi
