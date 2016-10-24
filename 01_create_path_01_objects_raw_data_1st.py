# -*- coding: utf-8 -*-
import os

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='01_Objects_raw_data':
            text = os.path.join(top,fd)
            for root,dir,files in os.walk(text):
                for fd2 in dir:
                    if fd2=='1st':
                        text2 = os.path.join(root,fd2)
                        #print(text2)
                        for root,dir,files in os.walk(text2):
                            for fl1 in files:
                                print(fl1,root)
                            for dr in dir:
                                text3 = os.path.join(top,dr)
                                for root,dir,files in os.walk(text3):
                                    for fl in files:
                                        print (fl,root)
