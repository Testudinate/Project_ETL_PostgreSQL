-- Table: prd_db_stg."04_rubrica_city_1st"

-- DROP TABLE prd_db_stg."04_rubrica_city_1st";

CREATE TABLE prd_db_stg."04_rubrica_city_1st"
(
  city integer,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prd_db_stg."04_rubrica_city_1st"
  OWNER TO admin_etl;
