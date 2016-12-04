-- Table: prd_db_stg."04_uni_org_city_2nd"

-- DROP TABLE prd_db_stg."04_uni_org_city_2nd";

CREATE TABLE prd_db_stg."04_uni_org_city_2nd"
(
  city integer,
  id_sq bigint,
  type_name text,
  sq_cnt integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prd_db_stg."04_uni_org_city_2nd"
  OWNER TO admin_etl;
