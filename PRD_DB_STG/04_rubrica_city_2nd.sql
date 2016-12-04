-- Table: prd_db_stg."04_rubrica_city_2nd"

-- DROP TABLE prd_db_stg."04_rubrica_city_2nd";

CREATE TABLE prd_db_stg."04_rubrica_city_2nd"
(
  city integer,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prd_db_stg."04_rubrica_city_2nd"
  OWNER TO admin_etl;
