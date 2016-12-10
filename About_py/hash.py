#!/usr/bin/env python
# -*- coding:utf-8 -*-
'''
new()构造函数，他接受算法的字符串称为第一个参数
for exmaple:
    import hashlib
    has = hashlib.new("ripermd1160")
    has.update("Nobody inspects the spammish")
    print(has.hexdigest())
    print(has.block_size)#以字节为单位的哈希算法的内部的大小
    print(has.digest_size)#以字节为单位的哈希结果的大小
    hexdigest()类似digest()但长度要翻倍，且只包含16进制数
'''
import hashlib

has = hashlib.md5()
has.update("Nobody inspects")
has.update("the spammish repetition")

result = has.digest()

print(result)
