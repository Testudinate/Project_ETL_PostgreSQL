alter table prd_db_dm."03_objects_with_squares_2nd" add day_id date;

select prd_db_dm."03_load_objects_with_squares_2nd"(21);

-- Function: prd_db_dm."03_load_objects_with_squares_2nd"(integer)

-- DROP FUNCTION prd_db_dm."03_load_objects_with_squares_2nd"(integer);

CREATE OR REPLACE FUNCTION prd_db_dm."03_load_objects_with_squares_2nd"(in_city integer)
  RETURNS integer AS
$BODY$
DECLARE v_flag integer;
        v_city integer;
BEGIN

select in_city into v_city;

if v_city>=1 then 

delete from prd_db_dm."03_objects_with_squares_2nd" 
where city = in_city and day_id = now()::date;

insert into prd_db_dm."03_objects_with_squares_2nd" (
  city ,
  num ,
  name ,
  type_name ,
  country,
  region ,
  community ,
  district ,
  postcode ,
  address ,
  division ,
  rubric ,
  phones ,
  faxs ,
  email ,
  web ,
  vk ,
  twitter ,
  facebook ,
  instagram ,
  "X" ,
  "Y" ,
  id_sq ,
  y1 ,
  y2 ,
  y3 ,
  y4 , 
  day_id  
) 
select 
  city ,
  num ,
  name ,
  type_name ,
  country,
  region ,
  community ,
  district ,
  postcode ,
  address ,
  division ,
  rubric ,
  phones ,
  faxs ,
  email ,
  web ,
  vk ,
  twitter ,
  facebook ,
  instagram ,
  "X" ,
  "Y" ,
  id_sq ,
  y1 ,
  y2 ,
  y3 ,
  y4 ,
  now()
from prd_db_stg."03_objects_with_squares_2nd" 
where city = v_city;

delete from prd_db_stg."03_objects_with_squares_2nd";

v_flag := 1;
return v_flag;
else 
v_flag := -1;
return v_flag;

end if;
commit;

exception when others then
begin
v_flag:=0;
return v_flag;
end;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION prd_db_dm."03_load_objects_with_squares_2nd"(integer)
  OWNER TO admin_etl;
