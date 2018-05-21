#!/bin/bash
# using pattern matching
# 使用模式匹配
if [[ $USER == r* ]]
then
echo "Hello $USER"
else
echo "Sorry, I do not know you"
fi
