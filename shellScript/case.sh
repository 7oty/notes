#!/bin/bash

echo "input a number between 1 to 4"
echo 'your number is:\c'
read aNum
case $aNum in
    1) echo "you select 1"
        ;;
    2)echo "you select 2"
        ;;
    3) echo "you select 3"
        ;;
    4) echo "you select 4"
        ;;
    *) echo "you do not select a number between 1 to 4"
        ;;
esac
