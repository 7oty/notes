#!/bin/bash

for loop in 1 2 3 4 5 6
do
    echo "the value is :$loop"
done

for str in 'this is a string'
do
    echo $str
done

for FILE in $HOME/.bash*
do
    echo $FILE
done
