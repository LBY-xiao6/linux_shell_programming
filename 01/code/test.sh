#!/bin/bash

#1，检测字符串
a="abc" #变量的定义和赋值，=两边必须没有空格
b="aBc"

# 如果解释器是sh，必须使用单个等号来判断
#test $a = $b
#echo $? #问号?是一个变量,代表最近一个命令的执行结果

# 如果解释器是bash，使用单个等号或者两个等号都可以
test $a == $b
echo $? #问号?是一个变量,代表最近一个命令的执行结果

s="abc"
if test -z $s;then
	echo "字符串s为空"
else
	echo "字符串s不为空:$s"
fi

s1="abc"
s2="aBc"

#if test $s1>$s2
if [ $s1 \> $s2 ]
then
	echo "$s1大于$s2"
else
	echo "$s1小于$s2"
fi

#2，检测文件
read -p "请输入一个文件名:" filename
#if test -e $filename
if [ -e $filename ]
then
	echo "文件存在"
else
	echo "文件不存在"
fi

#3，检测数值
n=304
m=200

#if test $n -lt $m
if [ $n -lt $m ] # 方括号[ ] 等价于test命令，注意两边必须有空格
then
	echo "$n小于$m"
else
	echo "$n大于或等于$m"
fi
