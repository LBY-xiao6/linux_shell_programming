#!/bin/bash

# 从外部输出1、2、3这些数字，程序翻译为英文单词

read -p "请输入一个数字:" n

case $n in
	1)
		echo "one"
		;;
	2)
		echo "two"
		;;
	3)
		echo "three"
		;;
	4|5)
		echo "four or five"
		;;
	"quit")
		echo "退出"
		exit
		;;
	*)
		echo "不认识！"
esac

#if [ $n -eq 1 ]
#then
#	echo "one"
#elif [ $n -eq 2 ]
#then
#	echo "two"
#elif [ $n -eq 3 ]
#then
#	echo "three"
#else
#	echo "不认识！"
#fi
