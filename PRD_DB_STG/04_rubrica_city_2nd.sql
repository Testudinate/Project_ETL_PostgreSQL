-- Table: "PRD_DB_STG"."04_rubrica_city_2nd"

-- DROP TABLE "PRD_DB_STG"."04_rubrica_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_rubrica_city_2nd"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_rubrica_city_2nd"
  OWNER TO postgres;
