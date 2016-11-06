import psycopg2
import csv
#import codecs

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')

cursor = connect.cursor()

cursor.execute('''SELECT count(1) FROM "PRD_DB_DQ"."01_dq_create_path"
               where prc_id = 12 and status='NONE' ''')

k=0
for row in cursor.fetchall():
    if row[0] > 0:
        cursor.execute('''SELECT full_path, file_name,row_id FROM "PRD_DB_DQ"."01_dq_create_path"
               where prc_id = 12 and status='NONE' ''')
        for rowi in cursor.fetchall():
            load_file = str(rowi[0]+"\\"+rowi[1])
            load_file = load_file.replace(' C:\\','C:\\')
            s_00 = '''update "PRD_DB_DQ"."01_dq_create_path" set status ='''
            s_01 = "'"+str('PROCESSING') + "' where row_id="+ str(rowi[2])
            sql_code_0 = s_00 + s_01
            cursor.execute(sql_code_0)
            connect.commit()
            with open(load_file, 'r',encoding="utf8") as f:
                csv_data = csv.reader(f,delimiter='|') # читаем данные из файла и задаем разделитель ';'
                #next(csv_data) # игнорируем 1 строку, содержащую описание столбцов в файле
                #print(csv_data)
                k=k+1
                for row2 in csv_data:
                    #print(row2[1])
                    #print((row2))
                    #str(row2[0])
                    s = "VALUES('"+str('test')+"',"+str(row2[0])+",'"+str(row2[1])+"',"+str(row2[2])+")"
                    s0 =  'INSERT INTO "PRD_DB_STG"."04_uni_org_city_2nd" (city , id_sq,type_name, sq_cnt) '
                    sql_code_1 = s0 + s         
                    #print(sql_code_1)
                    cursor.execute(sql_code_1)
            connect.commit()
            #print('finish')
            s_20 = '''update "PRD_DB_DQ"."01_dq_create_path" set status='''
            s_21 = "'"+str('DONE')+"' where row_id="+ str(rowi[2])
            sql_code_2 = s_20+s_21
            cursor.execute(sql_code_2)
            connect.commit()
            
connect.close()
        
        
