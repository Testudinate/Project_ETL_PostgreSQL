--select prd_db_dm."03_load_objects_with_squares_1st"(21);

-- select count(*) from prd_db_stg."06_flat_city";
-- select count(*) from prd_db_dm."06_flat_city" 
delete from prd_db_dm."06_flat_city" ;

select prd_db_dm."06_load_flat_city"(21);

-- Function: prd_db_dm."03_load_objects_with_squares_1st"(integer)

-- DROP FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(integer);

CREATE OR REPLACE FUNCTION prd_db_dm."06_load_flat_city"(in_city integer)
RETURNS integer AS $$
DECLARE v_flag integer;
        v_city integer;
BEGIN

select in_city into v_city;

if v_city>=1 then 

insert into prd_db_dm."06_flat_city" (
 city ,
  id_sq ,
  "0-100" ,
  "100-200" ,
  "200-300" ,
  "300-400" ,
  "400-500" ,
  "500-600" ,
  "700-800" ,
  "800-900" ,
  "900-1000" ,
  "1000-1100" ,
  "1100-1200" ,
  "1200-1300" ,
  "1300-1400" ,
  "1400-1500" ,
  "1500-1600" ,
  "1600-1700" ,
  "1700-1800" ,
  "1800-1900" ,
  "1900-2000" ,
  "2000-2100" ,
  "2100-2200" ,
  "2200-2300" ,
  "2300-2400" ,
  "2400-2500" ,
  "2500-2600" ,
  "2600-2700" ,
  "2700-2800" ,
  "2800-2900" ,
  "2900-3000" ,
  "3000-3100" ,
  "3100-3200"
) 
select 
  city ,
  id_sq ,
  "0-100" ,
  "100-200" ,
  "200-300" ,
  "300-400" ,
  "400-500" ,
  "500-600" ,
  "700-800" ,
  "800-900" ,
  "900-1000" ,
  "1000-1100" ,
  "1100-1200" ,
  "1200-1300" ,
  "1300-1400" ,
  "1400-1500" ,
  "1500-1600" ,
  "1600-1700" ,
  "1700-1800" ,
  "1800-1900" ,
  "1900-2000" ,
  "2000-2100" ,
  "2100-2200" ,
  "2200-2300" ,
  "2300-2400" ,
  "2400-2500" ,
  "2500-2600" ,
  "2600-2700" ,
  "2700-2800" ,
  "2800-2900" ,
  "2900-3000" ,
  "3000-3100" ,
  "3100-3200" 
from prd_db_stg."06_flat_city"
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
ALTER FUNCTION prd_db_dm."06_load_flat_city"(integer)
OWNER TO admin_etl;
