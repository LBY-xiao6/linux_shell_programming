#!/bin/bash

users=`who | awk '{print $1}'`

while true
do
	read -p "请输入用户名:" name

	if [ $name == "quit" ]
	then
		exit
	fi

	n=0
	for u in $users
	do
		if [ $name == $u ]
		then
			echo "$name已经登录"
			n=1
			break
		fi
	done

	if [ $n -eq 0 ]
	then
		echo "$name未登录"
	fi
	
done
