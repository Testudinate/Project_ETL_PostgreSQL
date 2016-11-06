-- Table: "PRD_DB_STG"."05_object_radiuses_rubrica_2nd"

-- DROP TABLE "PRD_DB_STG"."05_object_radiuses_rubrica_2nd";

CREATE TABLE "PRD_DB_STG"."05_object_radiuses_rubrica_2nd"
(
  id_sq bigint,
  city text,
  "0-100" integer,
  "100-200" integer,
  "200-300" integer,
  "300-400" integer,
  "400-500" integer,
  "500-600" integer,
  "700-800" integer,
  "800-900" integer,
  "900-1000" integer,
  "1000-1100" integer,
  "1100-1200" integer,
  "1200-1300" integer,
  "1300-1400" integer,
  "1400-1500" integer,
  "1500-1600" integer,
  "1600-1700" integer,
  "1700-1800" integer,
  "1800-1900" integer,
  "1900-2000" integer,
  "2000-2100" integer,
  "2100-2200" integer,
  "2200-2300" integer,
  "2300-2400" integer,
  "2400-2500" integer,
  "2500-2600" integer,
  "2600-2700" integer,
  "2700-2800" integer,
  "2800-2900" integer,
  "2900-3000" integer
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."05_object_radiuses_rubrica_2nd"
  OWNER TO postgres;
