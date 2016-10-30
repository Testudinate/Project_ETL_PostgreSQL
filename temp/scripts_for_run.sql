----------------------------------------------------------------------------------------------------------------
INSERT INTO "PRD_DB_DQ"."01_dq_create_path"(
            src_change_dtm, status, prc_name, full_path, file_name)
    VALUES (now(), 'DONE', 'GET', 'test', 'test');
----------------------------------------------------------------------------------------------------------------
Data quolity
--delete from "PRD_DB_DQ"."01_dq_create_path"

SELECT * FROM "PRD_DB_DQ"."01_dq_create_path" --where row_id =1;

select count(*) from "PRD_DB_STG"."01_objects_raw_data_1st"
--select * from "PRD_DB_STG"."01_objects_raw_data_1st"

select count(*) from "PRD_DB_STG"."01_objects_raw_data_2nd"

--drop table "PRD_DB_STG"."01_objects_raw_data_1st"
--delete from "PRD_DB_DQ"."01_dq_create_path"
----------------------------------------------------------------------------------------------------------------
INSERT INTO "PRD_DB_STG"."01_objects_raw_data_1st" (https ,name ,country ,region ,community ,postcode ,address ,
division ,subdivision ,rubric ,phones ,
faxs,email ,web ,vk ,twitter ,facebook ,ok ,worktime ,payment_method ,"X" , "Y")
VALUES('https://maps.yandex.ru/org/1161488524','Бокситогорск моторс','Россия',
'Ленинградская область','Бокситогорск','','улица Воронина','Автомобили','Автосервис, услуги','Автосервис,
автотехцентр','+7(952)230-94-32','','','','','','','','пн-пт 11:00–19:00','','33.839043','59.476776')
----------------------------------------------------------------------------------------------------------------
--select now()::timestamptz;
--test1---------------------------------------------------------------------------------------------------------
--insert into "PRD_DB_DQ"."01_dq_create_path" (src_change_dtm, status, prc_name, full_path, file_name)
--select now(), 'DONE', 'GET', 'test', 'test'
----------------------------------------------------------------------------------------------------------------
--select * from "PRD_DB_DQ"."01_dq_create_path" limit 1
----------------------------------------------------------------------------------------------------------------
delete from "PRD_DB_DQ"."01_dq_create_path"
where status = 'NONE'
----------------------------------------------------------------------------------------------------------------
