# -*- coding: utf-8 -*-
import os

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='04_Summed_count':
            text = os.path.join(top,fd)
            for top,dir,files in os.walk(text):
                for fd2 in dir:
                    if fd2=='1st':
                        text2 = os.path.join(top,fd2)
                        #print(text2)
                        for top,dir,files in os.walk(text2):
                            for fd3 in dir:
                                if fd3!='000_Unique_organisations_for_all_cities':
                                    text4 = os.path.join(top,fd3)
                                    #print(text4)
                                    for top,dir,files in os.walk(text4):
                                        for fd4 in dir:
                                            #print(fd4)
                                            if fd4=='Podrazdel':
                                                text5 = os.path.join(top,fd4)
                                                #print(text5)
                                                for top,dir,files in os.walk(text4):
                                                    for fl2 in files:
                                                        print(fl2,top)
