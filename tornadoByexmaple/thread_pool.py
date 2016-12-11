#!/usr/bin/env python
# -*- coding:utf-8 -*-
from tornado import gen
from concrrent.futures import ThreadPoolExecutor

thread_pool = ThreadPoolExecutor(2)

def sleeps(count):
    import time
    for i in range(count):
        time.sleep(i)

@gen.coroutine
def call_block():
    print "start"
    yield thread_pool.submit(sleeps, 10)
    print "end"
