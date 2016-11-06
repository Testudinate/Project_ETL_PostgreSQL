import psycopg2
import csv
#import codecs

connect = psycopg2.connect(database='PJ', user='postgres', host='localhost', password='postgres')

cursor = connect.cursor()

cursor.execute('''SELECT count(1) FROM "PRD_DB_DQ"."01_dq_create_path"
               where prc_id = 14 and status='NONE' limit 1''')

k=0
for row in cursor.fetchall():
    if row[0] > 0:
        cursor.execute('''SELECT full_path, file_name,row_id FROM "PRD_DB_DQ"."01_dq_create_path"
               where prc_id = 14 and status='NONE' limit 1''')
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
                    s = "VALUES('"+ str('test')+"',"+str(row2[0])+","+str(row2[1])+","+str(row2[2])+","\
                                 +str(row2[3])+","+str(row2[4])+","+str(row2[5])+","+str(row2[6])+","\
                                 +str(row2[7])+","+str(row2[8])+","+str(row2[9])+","+str(row2[10])+","\
                                 +str(row2[11])+","+str(row2[12])+","+str(row2[13])+","+str(row2[14])+","\
                                 +str(row2[15])+","+str(row2[16])+","+str(row2[17])+","+str(row2[18])+","\
                                 +str(row2[19])+","+str(row2[20])+","+str(row2[21])+","\
                                 +str(row2[22])+","+str(row2[23])+","+str(row2[24])+","+str(row2[25])+","\
                                 +str(row2[26])+","+str(row2[27])+","+str(row2[28])+","+str(row2[29])+")"
                    s0 =  'INSERT INTO "PRD_DB_STG"."05_object_radiuses_rubrica_2nd" (city ,id_sq ,'\
                    '"0-100","100-200","200-300","300-400","400-500","500-600","700-800","800-900","900-1000","1000-1100","1100-1200","1200-1300","1300-1400",'\
                    '"1400-1500","1500-1600","1600-1700","1700-1800","1800-1900","1900-2000","2000-2100","2100-2200","2200-2300","2300-2400","2400-2500","2500-2600",'\
                    '"2600-2700","2700-2800","2800-2900","2900-3000")'
                    sql_code_1 = s0 + s
                    #print(sql_code_1)
                    cursor.execute(sql_code_1)
            connect.commit()
            s_20 = '''update "PRD_DB_DQ"."01_dq_create_path" set status='''
            s_21 = "'"+str('DONE')+"' where row_id="+ str(rowi[2])
            sql_code_2 = s_20+s_21
            cursor.execute(sql_code_2)
            connect.commit()
            
connect.close()
        
        
