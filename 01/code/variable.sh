#!/bin/bash

# 在脚本中，所有变量的类型默认都是字符串
a=100
a=$a+1
echo "$a"

read a
echo "$a"
