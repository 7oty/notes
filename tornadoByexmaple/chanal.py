#!/usr/bin/env python
# -*- coding:utf-8 -*-
'''
携程函数@gen.coroutine声明是个携程函数
调用携程函数的三种方式
1，使用yield关键字
2，使用IOLoop的run_sync()
3，使用IOLoop的spawn_callback()
'''
from tornado import gen
from tornado.httpclient import AsyncHTTPClient

@gen.coroutine
def coroutine_visit():
    http_client = AsyncHTTPClient()
    response = yield http_client.fetch("www.baidu.com")
    print response.body

@gen.coroutine
def outer_coroutine():
    print "start"
    yield coroutine_visit()
    print "end"


'''
form tornado.ioloop import IOLoop

def func():
    print "start"
    IOLoop.current().run_sync(lambda:coroutine_visit)
    #IOLoop.current().spawn_callback(coroutine_visit)
    print "end"
'''
