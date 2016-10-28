-- Table: "PRD_DB_STG"."01_objects_raw_data_2nd"

-- DROP TABLE "PRD_DB_STG"."01_objects_raw_data_2nd";

CREATE TABLE "PRD_DB_STG"."01_objects_raw_data_2nd"
(
  num character varying[],
  name character varying[],
  type_name character varying[],
  country character varying[],
  region character varying[],
  community character varying[],
  district character varying[],
  postcode character varying[],
  address character varying[],
  division character varying[],
  rubric character varying[],
  phones character varying[],
  faxs character varying[],
  email character varying[],
  web character varying[],
  vk character varying[],
  twitter character varying[],
  facebook character varying[],
  instagram character varying[],
  "X" character varying[],
  "Y" character varying[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."01_objects_raw_data_2nd"
  OWNER TO postgres;
