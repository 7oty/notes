#!/bin/bash

#if `ps -ef | grep docker`;
#then
#    echo hello;
#fi

a=10
b=30
if [$a == $b]
then
    echo "a = b"
elif [$a -gt $b]
then
    echo "a > b"
elif [$a -lt $b]
then
    echo "a < b"
else
    echo "undefined"
fi
