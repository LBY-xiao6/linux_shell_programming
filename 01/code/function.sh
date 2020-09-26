#!/bin/bash

# 特点:
# 1，可以返回数据但没有返回值类型，因为所有的数据都是字符串
# 2，可以接收参数但没有参数列表，因为所有的数据都是字符串
max()
{
	#传进来的参数分别是$1、$2、$3……
	echo $1
	echo $2

	return 88;
}

a=100
b=200

# 函数调用: 跟执行命令是一样的
max $a $b
echo $?
