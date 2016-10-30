# -*- coding: utf-8 -*-
import os
import psycopg2

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')
cursor = connect.cursor()

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='05_Objects_radiuses':
            text = os.path.join(top,fd)
            for top,dir,files in os.walk(text):
                for fd2 in dir:
                    if fd2=='2nd':
                        text2 = os.path.join(top,fd2)
                        #print(text2)
                        for top,dir,files in os.walk(text2):
                            for fd3 in dir:
                                text3 = os.path.join(top,fd3)
                                for top,dir,files in os.walk(text3):
                                    for fd4 in dir:
                                        if fd4 =='Rubrika':
                                            text4 = os.path.join(top,fd4)
                                            for top,dir,files in os.walk(text4):
                                                for fl1 in files:
                                                    cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                                                    VALUES (now(),'NONE','01_insert_05_object_radiuses_2nd.py',' '''+ top +"','"+fl1+"')")
connect.commit()
connect.close()
