#!/bin/bash

files=`ls`

n=0
for f in $files
do
	n=$(($n+1))
done

echo "文件总数:$n"
