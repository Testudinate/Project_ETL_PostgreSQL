
CREATE OR REPLACE FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(in_city integer)
  RETURNS integer AS
$BODY$
DECLARE v_flag integer;
        v_city integer;
BEGIN

select in_city into v_city;

if v_city>=1 then 

delete from prd_db_dm."03_objects_with_squares_1st" 
where city = in_city and day_id = now()::date;

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
  y4 ,
  day_id 
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
  a.y4 , 
  now()
from prd_db_stg."03_objects_with_squares_1st" a
where a.city = v_city;

delete from prd_db_stg."03_objects_with_squares_1st";

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
ALTER FUNCTION prd_db_dm."03_load_objects_with_squares_1st"(integer)
  OWNER TO admin_etl;
