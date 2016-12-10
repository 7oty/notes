#!/usr/bin/env python
# -*- coding:utf-8 -*-

def iterator():
    print "one"
    yield 1
    print "tow"
    yield 2
    print "three"
    yield 3

for i in iterator():
    print i
