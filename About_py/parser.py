#!/usr/bin/env python
# -*- coding:utf-8 -*-
import argparse

parser = argparse.ArgumentParser(description="process some integers")
parser.add_argument('integers', metavar='N', type=int, nargs='+', help="an integer for the accoumuleter")
argparser = parser.parse_args()

print argparser
