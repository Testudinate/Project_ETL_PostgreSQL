select * from "PRD_DB_DQ"."01_dq_create_path" where prc_id= 3 and status='PROCESSING' 

select count(*) from "PRD_DB_DQ"."01_dq_create_path" where prc_id= 10 and status='DONE' --row_id = 26

--delete from "PRD_DB_DQ"."01_dq_create_path"

select count(*) from "PRD_DB_STG"."04_podrazdel_city_1st" --where id = 36761

select file_name, count(*) from "PRD_DB_STG"."04_podrazdel_city_1st"
group by file_name 
having count(*)>1


select file_name, count(*) from "PRD_DB_STG"."04_razdel_city_1st"
group by file_name 
having count(*)>1

select file_name, count(*) from "PRD_DB_STG"."04_rezdel_city_2nd"
group by file_name 
having count(*)>1


select * from "PRD_DB_STG"."04_uni_org_city_1st"
group by file_name 
having count(*)>1


delete from "PRD_DB_STG"."04_podrazdel_city_1st"

update "PRD_DB_DQ"."01_dq_create_path"
set status = 'NONE'
where row_id = 4278





select count(*) from "PRD_DB_STG"."03_objects_with_squares_1st"

select count(*) from "PRD_DB_STG"."03_objects_with_squares_2nd"

SELECT * --full_path, file_name,row_id 
FROM "PRD_DB_DQ"."01_dq_create_path"
               where prc_id = 3 and status='NONE' limit 1


-- Table: "PRD_DB_STG"."04_podrazdel_city_1st"

-- DROP TABLE "PRD_DB_STG"."04_podrazdel_city_1st";

CREATE TABLE "PRD_DB_STG"."04_podrazdel_city_1st"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_podrazdel_city_1st"
  OWNER TO postgres;


  -- DROP TABLE "PRD_DB_STG"."04_razdel_city_1st";

CREATE TABLE "PRD_DB_STG"."04_razdel_city_1st"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_razdel_city_1st"
  OWNER TO postgres;


  DROP TABLE "PRD_DB_STG"."04_rezdel_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_rezdel_city_2nd"
(
  city text,
  id integer,
  cnt integer,
  file_name text
  
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_rezdel_city_2nd"
  OWNER TO postgres;


  DROP TABLE "PRD_DB_STG"."04_rubrica_city_1st";

CREATE TABLE "PRD_DB_STG"."04_rubrica_city_1st"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_rubrica_city_1st"
  OWNER TO postgres;


DROP TABLE "PRD_DB_STG"."04_rubrica_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_rubrica_city_2nd"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_rubrica_city_2nd"
  OWNER TO postgres;


DROP TABLE "PRD_DB_STG"."04_tip_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_tip_city_2nd"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_tip_city_2nd"
  OWNER TO postgres;


DROP TABLE "PRD_DB_STG"."04_uni_org_city_1st";

CREATE TABLE "PRD_DB_STG"."04_uni_org_city_1st"
(
  id_sq bigint,
  city text,
  sq_cnt integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_uni_org_city_1st"
  OWNER TO postgres;


   DROP TABLE "PRD_DB_STG"."04_uni_org_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_uni_org_city_2nd"
(
  id_sq bigint,
  city text,
  type_name text,
  sq_cnt integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_uni_org_city_2nd"
  OWNER TO postgres;


  DROP TABLE "PRD_DB_STG"."05_object_radiuses_rubrica_1st";

CREATE TABLE "PRD_DB_STG"."05_object_radiuses_rubrica_1st"
(
  id_sq bigint,
  city text,
  "0-100" integer,
  "100-200" integer,
  "200-300" integer,
  "300-400" integer,
  "400-500" integer,
  "500-600" integer,
  "700-800" integer,
  "800-900" integer,
  "900-1000" integer,
  "1000-1100" integer,
  "1100-1200" integer,
  "1200-1300" integer,
  "1300-1400" integer,
  "1400-1500" integer,
  "1500-1600" integer,
  "1600-1700" integer,
  "1700-1800" integer,
  "1800-1900" integer,
  "1900-2000" integer,
  "2000-2100" integer,
  "2100-2200" integer,
  "2200-2300" integer,
  "2300-2400" integer,
  "2400-2500" integer,
  "2500-2600" integer,
  "2600-2700" integer,
  "2700-2800" integer,
  "2800-2900" integer,
  "2900-3000" integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."05_object_radiuses_rubrica_1st"
  OWNER TO postgres;


  INSERT INTO "PRD_DB_STG"."05_object_radiuses_rubrica_1st" (city ,id_sq ,"0-100",100-200,200-300,300-400,400-500,500-600,700-800,800-900,
  900-1000,1000-1100,1100-1200,1200-1300,1300-1400,1400-1500,1500-1600,1600-1700,1700-1800,1800-1900,1900-2000,2000-2100,
  2100-2200,2200-2300,2300-2400,2400-2500,2500-2600,2600-2700,2700-2800,2800-2900,2900-3000)
  VALUES('test',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
