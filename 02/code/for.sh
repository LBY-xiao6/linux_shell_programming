#!/bin/bash

a="aaa bbb 111 223 xx yy zz"

# a是字符串，即单词列表
# n是循环地逐个枚举每个单词
for n in $a
do
	echo "$n"
done
