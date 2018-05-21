#!/bin/bash
# process new user accounts
input="users.csv"
while IFS=',' read -r userid name
do
	echo "adding $userid,$name"
	useradd -c "$name"-m $userid  #-c:指定备注
done < "$input"