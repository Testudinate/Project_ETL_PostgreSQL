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
                                            if fd4=='Rubrika':                                           
                                                text7 = os.path.join(top,fd4)
                                                #print(text4)
                                                for top,dir,files in os.walk(text7):
                                                    for fl4 in files:
                                                        print(fl4,top)
