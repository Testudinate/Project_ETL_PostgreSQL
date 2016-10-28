# -*- coding: utf-8 -*-

import os

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='08_Routes':
            text = os.path.join(top,fd)
            #print(text)
            for root,dir,files in os.walk(text):
                for fl1 in files:
                    print(fl1,root)

