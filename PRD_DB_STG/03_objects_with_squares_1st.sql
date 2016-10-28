-- Table: "PRD_DB_STG"."03_objects_with_squares_1st"

-- DROP TABLE "PRD_DB_STG"."03_objects_with_squares_1st";

CREATE TABLE "PRD_DB_STG"."03_objects_with_squares_1st"
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
  "Y" character varying[],
  id_sq bigint,
  y1 character varying[],
  y2 character varying[],
  y3 character varying[],
  y4 character varying[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."03_objects_with_squares_1st"
  OWNER TO postgres;
