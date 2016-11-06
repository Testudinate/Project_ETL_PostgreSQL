-- Table: "PRD_DB_STG"."01_objects_raw_data_2nd"

-- DROP TABLE "PRD_DB_STG"."01_objects_raw_data_2nd";

CREATE TABLE "PRD_DB_STG"."01_objects_raw_data_2nd"
(
  num text,
  name text,
  type_name text,
  country text,
  region text,
  community text,
  district text,
  postcode text,
  address text,
  division text,
  rubric text,
  phones text,
  faxs text,
  email text,
  web text,
  vk text,
  twitter text,
  facebook text,
  instagram text,
  "X" text,
  "Y" text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."01_objects_raw_data_2nd"
  OWNER TO postgres;
