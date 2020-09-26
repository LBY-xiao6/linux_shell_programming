#!/bin/bash

a="aaa bbb ccc xxx xyz vincent mike 888 666"

# for循环实质就是一个个列举$a中单词的过程
# 循环次数取决于列表中单词的个数
for m in $a
do
	echo "$m"
done
