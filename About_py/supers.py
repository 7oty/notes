#!/usr/bin/env python
# -*- coding:utf-8 -*-

'''
在python类的继承中，子类重写了父类方法，但是在子类中又想调用父类方法时，使用spuer()就可以啦
note：super()其实和父类没有实质性的关联
exmaple:
    class Base(object):
        def __init__(self):
            print "enter Base"
            print "leave Base"
    class A(Base):
        def __init__(self):
            print "enter A"
            super(A, self).__init__()
            print "leave A"

    class B(Base):
        def __init__(self):
            print "enter B"
            super(B,self)b.__init__()
            print "leave B"

    class C(A, B):
        def __init__(self):
            print "enter C"
            super(C, self).__init__()
            print "leave C"
        Base
       |    |
       |    |
       A    B
       ......
         |
         C

一个类的MRO列表就是合并所有父类的MRO列表，遵循三条原则：
1，子类永远在父类前面
2，如有多个父类，会根据它们在列表中的顺序被查寻
3，如果对下一个类存在两个合法的选择，选择第一个父类

'''

class Animal(object):
    def __init__(self, name):
        self.name = name

    def greet(self):
        print "hello, I am %s"%self.name

class Dog(Animal):
    def greet(self):
        super(Dog, self).greet()
        #python3 中则是这样super().greet()

        print"wang wang...."

if __name__ == '__main__':
    dog = Dog('dog')
    dog.greet()
