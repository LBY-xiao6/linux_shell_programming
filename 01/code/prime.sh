#!/bin/bash

# 确保本脚本必须有一个外部参数
if [ $# -ne 1 ]
then
	echo "参数错误！再见！"
fi

prime()
{
	i=2
	while [ $i -lt $1 ]
	do
		m=`expr $1 % $i`
		if [ $m -eq 0 ]
		then
			return 1
		fi
		i=$(($i+1))
	done

	return 0
}


prime $1
if [ $? -eq 0 ]
then
	echo "是素数"
else
	echo "不是素数"
fi
