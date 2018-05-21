#!/bin/bash
# extracting options and parameters
echo
while [ -n "$1" ]
do
	case "$1" in
		-a) echo "Found the -a option" ;;
		-b) echo "Found the -b option";;
		-c) echo "Found the -c option" ;;
		--) shift
			break ;;
		*) echo "$1 is not an option";;
	esac
	shift   #每处理一个就移出一个参数
done
#
count=1
for param in $@
do
	echo "Parameter #$count: $param"
	count=$[ $count + 1 ]
done