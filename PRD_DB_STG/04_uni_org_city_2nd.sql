-- Table: "PRD_DB_STG"."04_uni_org_city_2nd"

-- DROP TABLE "PRD_DB_STG"."04_uni_org_city_2nd";

CREATE TABLE "PRD_DB_STG"."04_uni_org_city_2nd"
(
  id_sq bigint[],
  city character varying[],
  sq_cnt integer[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_uni_org_city_2nd"
  OWNER TO postgres;
