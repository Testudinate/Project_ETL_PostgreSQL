-- Table: "PRD_DB_STG"."04_rubrica_city_1st"

-- DROP TABLE "PRD_DB_STG"."04_rubrica_city_1st";

CREATE TABLE "PRD_DB_STG"."04_rubrica_city_1st"
(
  city character varying[],
  id integer[],
  cnt integer[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_rubrica_city_1st"
  OWNER TO postgres;
