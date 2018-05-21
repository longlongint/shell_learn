#!/bin/bash
# Extract command line options & values with getopt
#
set -- $(getopt -q ab:cd "$@")
#
echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) param="$2"
			echo "Found the -b option, with parameter value $param"
			shift ;;
		-c) echo "Found the -c option" ;;
		--) shift
			break ;;
		*) echo "$1 is not an option";;
	esac
	shift
done
#
count=1
for param in "$@"
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done
#需要注意的是：getopt 命令并不擅长处理带空格和引号的参数值,如下面这种情况	
#$ ./32_getopt.sh -a -b test1 -cd "test2 test3" test4