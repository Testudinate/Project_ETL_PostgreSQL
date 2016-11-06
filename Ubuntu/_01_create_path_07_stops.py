# -*- coding: utf-8 -*-
import os
import psycopg2

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')
cursor = connect.cursor()

for top, dir, files in os.walk('C:\Load\PROCESSING'):
    for fd in dir:
        if fd =='07_Stops':
            text = os.path.join(top,fd)
            #print(text)
            for top,dir,files in os.walk(text):
                for fl1 in files:
                    print(fl1,top)
                    cursor.execute('''INSERT INTO "PRD_DB_DQ"."01_dq_create_path" \
                    (src_change_dtm, status, prc_name, upd_dtm,prc_id, full_path, file_name)\
                    VALUES (now(),'NONE','01_insert_07_stops.py',now(),16,' '''+ top +"','"+fl1+"')")
connect.commit()
connect.close()

