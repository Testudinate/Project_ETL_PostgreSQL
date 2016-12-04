# -*- coding: utf-8 -*-
#!/usr/bin python3.5

import os
import psycopg2

connect = psycopg2.connect(database='pj', user='admin_etl', host='localhost', password='Bc6f5201_etl')
cursor = connect.cursor()

for top, dir, files in os.walk('/home/admin_ftp/input_data/processing'):
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
                                                    cursor.execute('''INSERT INTO "prd_db_dq"."01_dq_create_path" \
                                                    (src_change_dtm, status, prc_name, upd_dtm,prc_id, full_path, file_name)\
                                                    VALUES (now(),'NONE','01_insert_05_object_radiuses_2nd.py',now(),14,' '''+ top +"','"+fl1+"')")
connect.commit()
connect.close()
