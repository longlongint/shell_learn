#!/bin/bash
# demonstrating the shift command
echo
count=1
while [ -n "$1" ]
do
echo "Parameter #$count = $1"
count=$[ $count + 1 ]
shift  2                   #向左移动参数，但是$0不变，加上参数表示一次移动两个
done