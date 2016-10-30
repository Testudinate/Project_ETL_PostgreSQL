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
                                if fd3=='000_Unique_organisations_for_all_cities':
                                    text3 = os.path.join(top,fd3)
                                    #print(text3)
                                    for top,dir,files in os.walk(text3):
                                        for fl1 in files:
                                            print(fl1,top)
                                            cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                                            VALUES (now(),'NONE','01_insert_04_uni_org_city_2nd.py',' '''+ top +"','"+fl1+"')")
connect.commit()
connect.close()

