-- Table: "PRD_DB_STG"."04_uni_org_city_1st"

-- DROP TABLE "PRD_DB_STG"."04_uni_org_city_1st";

CREATE TABLE "PRD_DB_STG"."04_uni_org_city_1st"
(
  id_sq bigint[],
  city character varying[],
  sq_cnt integer[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."04_uni_org_city_1st"
  OWNER TO postgres;
