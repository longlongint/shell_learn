#!/bin/bash
# mis-using string comparisons
#
val1=baseball
val2=hockey
#
if [ $val1 \> $val2 ]     #注意，必须加斜杠，否则会被当成重定向符
then
	echo "$val1 is greater than $val2"
else
	echo "$val1 is less than $val2"
fi

# testing string length
val1=testing
val2=''
#
if [ -n $val1 ]
then
echo "The string '$val1' is not empty"
else
echo "The string '$val1' is empty"
fi
#
if [ -z $val2 ]
then
echo "The string '$val2' is empty"
else
echo "The string '$val2' is not empty"
fi
#
if [ -z $val3 ]
then
echo "The string '$val3' is empty"
else
echo "The string '$val3' is not empty"
fi