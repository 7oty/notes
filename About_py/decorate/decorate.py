#!/usr/bin/env python3
# -*- coding:utf-8 -*-
def debug(func):
    def wapper():
        print("[debug]:enter{}()".format(func.__name__))
        return func()
    return wapper

@debug
def say_hello():
   print("hello!")

if __name__ == '__main__':
    s = say_hello
    s()
