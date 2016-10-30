# -*- coding: utf-8 -*-
import os
import psycopg2

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')
cursor = connect.cursor()

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='04_Summed_count':
            text = os.path.join(top,fd)
            for top,dir,files in os.walk(text):
                for fd2 in dir:
                    if fd2=='2nd':
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
                                            if fd4=='Razdel':                                           
                                                fd5 = 'Razdel'
                                                text5 = os.path.join(top,fd5)
                                                #print(text5)
                                                for top,dir,files in os.walk(text5):
                                                    for fl2 in files:
                                                        print(fl2,top)
                                                        cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                                                        VALUES (now(),'NONE','01_insert_04_razdel_2nd.py',' '''+ top +"','"+fl2+"')")
connect.commit()
connect.close()                           

