#!/usr/bin/env python
# -*- coding:utf-8 -*-
from tornado import gen
from tornado.httpclient import AsyncHTTPClient

@gen.coroutine
def coroutine_visit():
    http_client = AsyncHTTPClient()
    list_response = yield [
            http_client.fetch("www.baidu.com"),
            http_client.fetch("www.sina.com"),
            http_client.fetch("www.google.com.hk")
            ]
    for response in list_response:
        print response.body
