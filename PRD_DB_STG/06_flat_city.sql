-- Table: "PRD_DB_STG"."06_flat_city"

-- DROP TABLE "PRD_DB_STG"."06_flat_city";

CREATE TABLE "PRD_DB_STG"."06_flat_city"
(
  id_sq bigint[],
  city character varying[],
  "0-100" integer[],
  "100-200" integer[],
  "200-300" integer[],
  "300-400" integer[],
  "400-500" integer[],
  "500-600" integer[],
  "700-800" integer[],
  "800-900" integer[],
  "900-1000" integer[],
  "1000-1100" integer[],
  "1100-1200" integer[],
  "1200-1300" integer[],
  "1300-1400" integer[],
  "1400-1500" integer[],
  "1500-1600" integer[],
  "1600-1700" integer[],
  "1700-1800" integer[],
  "1800-1900" integer[],
  "1900-2000" integer[],
  "2000-2100" integer[],
  "2100-2200" integer[],
  "2200-2300" integer[],
  "2300-2400" integer[],
  "2400-2500" integer[],
  "2500-2600" integer[],
  "2600-2700" integer[],
  "2700-2800" integer[],
  "2800-2900" integer[],
  "2900-3000" integer[],
  "3000-3100" integer[],
  "3100-3200" integer[],
  "3200-3300" integer[],
  "3300-3400" integer[],
  "3400-3500" integer[],
  "3500-3600" integer[],
  "3600-3700" integer[],
  "3700-3800" integer[],
  "3800-3900" integer[],
  "3900-4000" integer[],
  "4000-4100" integer[],
  "4100-4200" integer[],
  "4200-4300" integer[],
  "4300-4400" integer[],
  "4400-4500" integer[],
  "4500-4600" integer[],
  "4600-4700" integer[],
  "4700-4800" integer[],
  "4800-4900" integer[],
  "4900-5000" integer[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."06_flat_city"
  OWNER TO postgres;
