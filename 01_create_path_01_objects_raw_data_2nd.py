# -*- coding: utf-8 -*-
import os
import psycopg2

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')
cursor = connect.cursor()

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='01_Objects_raw_data':
            text = os.path.join(top,fd)
            for root,dir,files in os.walk(text):
                for fd2 in dir:
                    if fd2=='2nd':
                        text2 = os.path.join(root,fd2)
                        #print(text2)
                        for root,dir,files in os.walk(text2):
                            for fl1 in files:
                                print(fl1,root)
                                cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                                VALUES (now(),'NONE','01_insert_01_object_raw_data_2nd.py',' '''+ root +"','"+fl1+"')")
                            for dr in dir:
                                text3 = os.path.join(top,dr)
                                for root,dir,files in os.walk(text3):
                                    for fl in files:
                                        print (fl,root)
                                        cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                                        VALUES (now(),'NONE','01_insert_01_object_raw_data_2nd.py',' '''+root+"',"+fl+"')")
                                        
connect.commit()
connect.close()
