--select prd_db_dm."03_load_objects_with_squares_1st"(21);

-- Function: prd_db_dm."03_load_objects_with_squares_1st"(integer)

-- DROP FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(integer);

CREATE OR REPLACE FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(in_city integer)
RETURNS integer AS $$
DECLARE v_flag integer;
        v_city integer;
BEGIN

select in_city into v_city;

if v_city>=1 then 

insert into prd_db_dm."03_objects_with_squares_1st" (
  city,
  https ,
  name ,
  country ,
  region ,
  community , 
  postcode ,
  address ,
  division ,
  subdivision ,
  rubric ,
  phones ,
  faxs ,
  email ,
  web ,
  vk ,
  twitter ,
  facebook ,
  ok ,
  worktime ,
  payment_method ,
  "X" ,
  "Y" ,
  id_sq ,
  y1 ,
  y2 ,
  y3 ,
  y4 
) 
select 
  a.city,
  a.https ,
  a.name ,
  a.country ,
  a.region ,
  a.community , 
  a.postcode ,
  a.address ,
  a.division ,
  a.subdivision ,
  a.rubric ,
  a.phones ,
  a.faxs ,
  a.email ,
  a.web ,
  a.vk ,
  a.twitter ,
  a.facebook ,
  a.ok ,
  a.worktime ,
  a.payment_method ,
  a."X" ,
  a."Y" ,
  a.id_sq ,
  a.y1 ,
  a.y2 ,
  a.y3 ,
  a.y4  
from prd_db_stg."03_objects_with_squares_1st" a
where a.city = v_city;

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
ALTER FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(integer)
  OWNER TO admin_etl;
