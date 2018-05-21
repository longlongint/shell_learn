#!/bin/bash
# another example of how not to use the for command
for test in I don\'t know if "this'll" work #不添加反斜杠会被视作一个字符串
do                                          #如果一个词语中有空格，需要用双引号圈起来
echo "word:$test"
done

#!/bin/bash
# reading values from a file
file="states"
for state in $(cat $file)
do
echo "Visit beautiful $state"
done