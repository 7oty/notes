#!/bin/bash

var1=12
str='this is a string $var1'
str2="this is a string $var1"

echo $str
echo $str2
echo ${#str}#获取长度
echo ${str2:1:4}#提取子字符串
