-- Table: "PRD_DB_STG"."01_objects_raw_data_1st"

-- DROP TABLE "PRD_DB_STG"."01_objects_raw_data_1st";

CREATE TABLE "PRD_DB_STG"."01_objects_raw_data_1st"
(
  https character varying[],
  name character varying[],
  country character varying[],
  region character varying[],
  community character varying[],
  postcode character varying[],
  address character varying[],
  division character varying[],
  subdivision character varying[],
  rubric character varying[],
  phones character varying[],
  faxs character varying[],
  email character varying[],
  web character varying[],
  vk character varying[],
  twitter character varying[],
  facebook character varying[],
  ok character varying[],
  worktime character varying[],
  payment_method character varying[],
  "X" character varying[],
  "Y" character varying[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."01_objects_raw_data_1st"
  OWNER TO postgres;
