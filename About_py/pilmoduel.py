#!/usr/bin/env python
# -*- coding:utf-8 -*-
'''
    python pillow moudle
    core class:PIL importance class is image
    从文件中加载图像使用open()函数
    from PIL import Image
    img = Image.open("yourapp_path/*.png")
    img.format 图像的来源
    img.size 返回的是一个二元元组,包含宽和高度单位为px
    img.mode 定义图像bands的数量和名称,及其像素类型和深度
    常见的modes有"L"即灰度图像, "RGB"和"CMYK" 版图像
    img.show()显示图片
    glob模块是一种智能化的文件匹配技术,在批图像处理中经常用到
    注意的是pillow不会直接解码或加载图像栅格数据,当打开一个文件时只会读取
    文件头信息老确定格式,颜色模式,大小等等,文件的剩余部分不会主动处理
    exmaple:
        #加载文件并转换png格式
        from PIL import Image
        import os
        import sys
        for infile in sys.argv[1:]:
            f, e = os.path.splitext(infile)
            outfile = f + ".png"
            if infile != outfile:
                try:
                    Image.open(infile).save(outfile)
                except IOError:
                    print("cannot convert", infile)
    **notes save()方法的第二个参数可以指定文件格式
'''
#create thumbnail
import glob
from PIL import Image
size = (128, 128)
for infile in glob.glob("../images/*.png"):
    f, ext = os.path.splitext(imfile)
    img = Image.open(infile)
    img.thumbnail(size, Image.ANTALTAS)
    img.save(f + '.thumbnail', "JPEG")

