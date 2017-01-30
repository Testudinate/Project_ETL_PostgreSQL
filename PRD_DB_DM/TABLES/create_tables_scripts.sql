--CREATE TABLE PRD_DB_DM
drop table prd_db_dm."03_objects_with_squares_1st";
create table prd_db_dm."03_objects_with_squares_1st" as select * from prd_db_stg."03_objects_with_squares_1st";
delete from prd_db_dm."03_objects_with_squares_1st";

drop table prd_db_dm."03_objects_with_squares_2nd"; 
create table prd_db_dm."03_objects_with_squares_2nd" as select * from prd_db_stg."03_objects_with_squares_2nd";
delete from prd_db_dm."03_objects_with_squares_2nd";

drop table prd_db_dm."04_podrazdel_city_1st";
create table prd_db_dm."04_podrazdel_city_1st" as select * from prd_db_stg."04_podrazdel_city_1st";
delete from prd_db_dm."04_podrazdel_city_1st";

drop table prd_db_dm."04_razdel_city_1st";
create table prd_db_dm."04_razdel_city_1st" as select * from prd_db_stg."04_razdel_city_1st";
delete from prd_db_dm."04_razdel_city_1st";

drop table prd_db_dm."04_rezdel_city_2nd" 
create table prd_db_dm."04_rezdel_city_2nd" as select * from prd_db_stg."04_rezdel_city_2nd";
delete from prd_db_dm."04_rezdel_city_2nd";

drop table prd_db_dm."04_rubrica_city_1st";
create table prd_db_dm."04_rubrica_city_1st" as select * from prd_db_stg."04_rubrica_city_1st";
delete from prd_db_dm."04_rubrica_city_1st";

drop table prd_db_dm."04_rubrica_city_2nd";
create table prd_db_dm."04_rubrica_city_2nd" as select * from prd_db_stg."04_rubrica_city_2nd";
delete from prd_db_dm."04_rubrica_city_2nd";

drop table prd_db_dm."04_tip_city_2nd";
create table prd_db_dm."04_tip_city_2nd" as select * from prd_db_stg."04_tip_city_2nd";
delete from prd_db_dm."04_tip_city_2nd";

drop table prd_db_dm."04_uni_org_city_1st";
create table prd_db_dm."04_uni_org_city_1st" as select * from prd_db_stg."04_uni_org_city_1st";
delete from prd_db_dm."04_uni_org_city_1st";

drop table prd_db_dm."04_uni_org_city_2nd"; 
create table prd_db_dm."04_uni_org_city_2nd" as select * from prd_db_stg."04_uni_org_city_2nd";
delete from prd_db_dm."04_uni_org_city_2nd";

drop table prd_db_dm."06_flat_city";
create table prd_db_dm."06_flat_city" as select * from prd_db_stg."06_flat_city";
delete from prd_db_dm."06_flat_city";

drop table prd_db_dm."07_stops_city"; 
create table prd_db_dm."07_stops_city" as select * from prd_db_stg."07_stops_city";
delete from prd_db_dm."07_stops_city";

drop table prd_db_dm."08_routers_city";
create table prd_db_dm."08_routers_city" as select * from prd_db_stg."08_routers_city";
delete from prd_db_dm."08_routers_city";

