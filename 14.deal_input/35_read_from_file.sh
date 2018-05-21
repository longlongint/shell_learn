#!/bin/bash
# reading data from a file

count=1
test="34_read_input.sh"
cat $test | while read line    #1.每次读取一行
do                             #2.
	echo "Line $count: $line"
	count=$[ $count + 1]
done
echo "Finished processing the file"