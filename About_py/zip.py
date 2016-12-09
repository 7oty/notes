#!/usr/bin/env python
# -*- coding:utf-8 -*-
import zipfile
import threading

def extractFile(zFile, password):
    try:
        zFile.extractatall(pwd=password)
        print("Found password:", password)
        return password
    except:
        pass

def main():
    zFile = zipfile.ZipFile('unzip.zip')
    passFile = open("dictionary.txt")
    for line in passFile.readylines():
        password = line.strip('\n')
        t = threading,Thread(target=extractFile, args=(zFile, password))
        t.start()

