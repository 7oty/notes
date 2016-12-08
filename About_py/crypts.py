#!/usr/bin/env python
# -*- coding:utf-8 -*-

import crypt

def testPsswd(cryptPasswd):
    salt = cryptPasswd[0:2]
    dicfile = open('dictionary.txt', 'r')
    for word in dicfile.readlines():
        word = word.strip('\n')
        cryptWord = crypt.crypt(word, salt)
        if cryptPasswd == cryptWord:
            print("Found passed:",word)
            return
    print("password not found!")
    return

def main():
    passfile = open("password.txt", 'r')
    for line in passfile.readlines():
        user = line.split(':')[0]
        cryptPass = line.split(':')[1].strip('')
        print("Cracking password for :", user)
        testPsswd(cryptPass)

if __name__ == '__main__':
    main()
