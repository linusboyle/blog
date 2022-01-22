#!/usr/bin/env python3
# encoding: utf-8
# author: Zhilei Han <hzl21@mails.tsinghua.edu.cn>
# Last Modified: 2022-01-22 13:45:08

import re
import sys

def convert(x):
    m=x.groups()[0]
    return bytes.fromhex(m).decode('utf-16-be')

f = open('blog/rss', 'r')
content = f.read()
f.close()
converted = re.sub(r"<#([0-9a-fA-F]{4,4})>", convert, content)
converted = re.sub(r"<lambda>", 'λ', converted)
f = open('blog/rss', 'w')
f.write(converted)
