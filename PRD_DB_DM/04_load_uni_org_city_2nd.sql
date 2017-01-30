--select prd_db_dm."03_load_objects_with_squares_1st"(21);

-- select count(*) from prd_db_dm."04_uni_org_city_2nd"

select prd_db_dm."04_load_uni_org_city_2nd"(21);

-- Function: prd_db_dm."03_load_objects_with_squares_1st"(integer)

-- DROP FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(integer);

CREATE OR REPLACE FUNCTION prd_db_dm."04_load_uni_org_city_2nd"(in_city integer)
RETURNS integer AS $$
DECLARE v_flag integer;
        v_city integer;
BEGIN

select in_city into v_city;

if v_city>=1 then 

insert into prd_db_dm."04_uni_org_city_2nd" (
  city ,
  id_sq ,
  type_name ,
  sq_cnt 
) 
select 
  city ,
  id_sq ,
  type_name ,
  sq_cnt 
from prd_db_stg."04_uni_org_city_2nd"
where city = v_city;

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
$$ LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION prd_db_dm."04_load_uni_org_city_2nd"(integer)
OWNER TO admin_etl;
