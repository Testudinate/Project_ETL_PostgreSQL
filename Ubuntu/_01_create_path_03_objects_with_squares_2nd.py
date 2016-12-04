# -*- coding: utf-8 -*-
#!/usr/bin python3.5

import os
import psycopg2

connect = psycopg2.connect(database='pj', user='admin_etl', host='localhost', password='Bc6f5201_etl')
cursor = connect.cursor()


for top, dir, files in os.walk('/home/admin_ftp/input_data/processing'):
    for fd in dir:
        if fd =='03_Objects_with_squares':
            text = os.path.join(top,fd)
            for root,dir,files in os.walk(text):
                for fd2 in dir:
                    if fd2=='2nd':
                        text2 = os.path.join(root,fd2)
                        #print(text2)
                        for root,dir,files in os.walk(text2):
                            for fl1 in files:
                                print(fl1,root)
                                cursor.execute('''INSERT INTO "prd_db_dq"."01_dq_create_path"
                                (src_change_dtm, status, prc_name, upd_dtm,prc_id, full_path, file_name)
                                VALUES (now(),'NONE','01_insert_03_objects_with_squares_2nd.py',now(),4,' '''+ root +"','"+fl1+"')")
                            for dr in dir:
                                text3 = os.path.join(top,dr)
                                for root,dir,files in os.walk(text3):
                                    for fl in files:
                                        print (fl,root)
                                        cursor.execute('''INSERT INTO "prd_db_dq"."01_dq_create_path"
                                        (src_change_dtm, status, prc_name, upd_dtm,prc_id, full_path, file_name)
                                        VALUES (now(),'NONE','01_insert_03_objects_with_squares_2nd.py',now(),4,' '''+ root +"','"+fl1+"')")
connect.commit()
connect.close()

