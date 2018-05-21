#!/bin/bash
# read file and create INSERT statements for MySQL
outfile='members.sql'
IFS=','
while read lname fname address city state zip
do            #输出追加重定向(>>)到文件outfile,输入追加重定向(<<)将cat命令的输入重定向到脚本中存储的数据
cat >> $outfile << EOF    #EOF符号标记了追加到文件中的数据的起止
INSERT INTO members (lname,fname,address,city,state,zip) VALUES
('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < ${1}   # ${1}相当于"$1",代表第一个命令行参数,指明了待读取数据的文件