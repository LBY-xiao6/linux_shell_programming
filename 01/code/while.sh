#!/bin/bash

# 将1-100的素数打印出来

# 0为逻辑真，非0为逻辑假

# 判断一个数是否为素数
# 是返回0(真)，否则返回1(假)
prime()
{
	n=2
	while [ $n -lt $1 ]
	do
		m=`expr $1 % $n`
		if [ $m -eq 0 ]
		then
			return 1
		fi

		n=$(($n+1))
	done

	return 0
}

i=1
while [ $i -le 100 ]
do
	prime $i
	if [ $? -eq 0 ]
	then
		echo "$i"
	fi
	
	i=$(($i+1))
done
