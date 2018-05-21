#!/bin/bash
# Processing options & parameters with getopts
#
echo
while getopts :ab:cd opt              #指明要查找哪些命令行选项，以及每次迭代中存储它们的变量名(opt)
do
case "$opt" in
	a) echo "Found the -a option" ;;  #注意这里没有单破折号，已经移除了
	b) echo "Found the -b option, with value $OPTARG" ;;
	c) echo "Found the -c option" ;;
	d) echo "Found the -d option" ;;
	*) echo "Unknown option: $opt" ;;
esac
done
#
shift $[ $OPTIND - 1 ]
#
echo
count=1
for param in "$@"
do
	echo "Parameter $count: $param"
	count=$[ $count + 1 ]
done
#./32_getopt.sh -b "test1 test2" -a   ：现在可以正常解析空格了
#./32_getopt.sh -abtest1              ：将选项字母和参数值放在一起使用，而不用加空格
#./32_getopt.sh -acde                 ：将命令行上找到的所有未定义的选项统一输出成问号