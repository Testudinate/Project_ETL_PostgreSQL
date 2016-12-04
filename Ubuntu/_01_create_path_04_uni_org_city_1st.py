# -*- coding: utf-8 -*-
#!/usr/bin python3.5

import os
import psycopg2

connect = psycopg2.connect(database='pj', user='admin_etl', host='localhost', password='Bc6f5201_etl')
cursor = connect.cursor()

for top, dir, files in os.walk('/home/admin_ftp/input_data/processing'):
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
                                if fd3=='000_Unique_organisations_for_all_cities':
                                    text3 = os.path.join(top,fd3)
                                    #print(text3)
                                    for top,dir,files in os.walk(text3):
                                        for fl1 in files:
                                            print(fl1,top)
                                            cursor.execute('''INSERT INTO "prd_db_dq"."01_dq_create_path" \
                                           (src_change_dtm, status, prc_name, upd_dtm,prc_id, full_path, file_name)\
                                            VALUES (now(),'NONE','01_insert_04_uni_org_city_1st.py',now(),11,' '''+ top +"','"+fl1+"')")
connect.commit()
connect.close()
