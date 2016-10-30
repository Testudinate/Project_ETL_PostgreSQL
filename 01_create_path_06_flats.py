# -*- coding: utf-8 -*-
import os
import psycopg2

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')
cursor = connect.cursor()

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='06_Flats':
            text = os.path.join(top,fd)
            #print(text)
            for top,dir,files in os.walk(text):
                for fl1 in files:
                    print(fl1,top)
                    cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                    VALUES (now(),'NONE','01_insert_06_flats.py',' '''+ top +"','"+fl1+"')")
connect.commit()
connect.close()
