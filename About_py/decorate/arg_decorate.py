#!/usr/bin/env python3
# -*- coding:utf-8 -*-

def debug(func):
    def wrapper(something):
        print("[debug]:enter{}()".format(func.__name__))
        return func(something)
    return wrapper

@debug
def say_hello(something):
    print("hello {}!".format(something))

if __name__ == '__main__':
    s = say_hello
    s("hello")
