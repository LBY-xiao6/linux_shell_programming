#!/bin/bash

# 处理数值的办法1
declare -i n=100
n=$n+1
echo "$n"

# 处理数值的办法2（最常用）
m=100
m=$(($m+1))
echo "$m"

# 处理数值的办法3
k=100
k=`expr $k + 1`
echo "$k"
