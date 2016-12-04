#-*- coding: utf-8 -*-
#!/usr/bin python3.5

import psycopg2
import csv
import codecs

connect = psycopg2.connect(database='pj', user='admin_etl', host='localhost', password='Bc6f5201_etl')

cursor = connect.cursor()

cursor.execute('''SELECT count(1) FROM "prd_db_dq"."01_dq_create_path"
               where prc_id = 7 and status='NONE' ''')

k=0
for row in cursor.fetchall():
    if row[0] > 0:
        cursor.execute('''SELECT full_path, file_name,row_id FROM "prd_db_dq"."01_dq_create_path"
               where prc_id = 7 and status='NONE' ''')
        for rowi in cursor.fetchall():
            load_file = str(rowi[0]+"/"+rowi[1])
            load_file = load_file.replace(' /','/')
            s_00 = '''update "prd_db_dq"."01_dq_create_path" set status ='''
            s_01 = "'"+str('PROCESSING') + "' where row_id="+ str(rowi[2])
            sql_code_0 = s_00 + s_01
            cursor.execute(sql_code_0)
            connect.commit()
            with codecs.open(load_file, 'r',encoding='utf-8',errors='ignore') as f:
                csv_data = csv.reader(f,delimiter='|') # читаем данные из файла и задаем разделитель ';'
                k=k+1
                for row2 in csv_data:
                    #print(row2[1])
                    #print((row2))
                    #str(row2[0])
                    s = "VALUES("+str(row2[0])+","+str(row2[1])+","+str(row2[2])+",'"+str(rowi[1])+"')"
                    s0 =  'INSERT INTO "prd_db_stg"."04_rezdel_city_2nd" (city ,id ,cnt, file_name) '
                    sql_code_1 = s0 + s         
                    #print(sql_code_1)
                    cursor.execute(sql_code_1)
            connect.commit()
            #print('finish')
            s_20 = '''update "prd_db_dq"."01_dq_create_path" set status='''
            s_21 = "'"+str('DONE')+"' where row_id="+ str(rowi[2])
            sql_code_2 = s_20+s_21
            cursor.execute(sql_code_2)
            connect.commit()
            
connect.close()
        
        
