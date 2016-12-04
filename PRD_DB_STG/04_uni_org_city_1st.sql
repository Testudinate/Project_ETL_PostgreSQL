-- Table: prd_db_stg."04_uni_org_city_1st"

-- DROP TABLE prd_db_stg."04_uni_org_city_1st";

CREATE TABLE prd_db_stg."04_uni_org_city_1st"
(
  city integer,
  id_sq bigint,
  sq_cnt integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prd_db_stg."04_uni_org_city_1st"
  OWNER TO admin_etl;
