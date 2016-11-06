-- Table: "PRD_DB_STG"."04_podrazdel_city_1st"

-- DROP TABLE "PRD_DB_STG"."04_podrazdel_city_1st";

CREATE TABLE "PRD_DB_STG"."04_podrazdel_city_1st"
(
  city text,
  id integer,
  cnt integer,
  file_name text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_podrazdel_city_1st"
  OWNER TO postgres;
