-- Table: "PRD_DB_STG"."04_tip_city_2nd"

-- DROP TABLE "PRD_DB_STG"."04_tip_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_tip_city_2nd"
(
  city character varying[],
  id integer[],
  cnt integer[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_tip_city_2nd"
  OWNER TO postgres;
