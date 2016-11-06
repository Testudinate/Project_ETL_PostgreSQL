-- Table: "PRD_DB_STG"."03_objects_with_squares_1st"

-- DROP TABLE "PRD_DB_STG"."03_objects_with_squares_1st";

CREATE TABLE "PRD_DB_STG"."03_objects_with_squares_1st"
(
  https text,
  name text,
  country text,
  region text,
  community text,
  postcode text,
  address text,
  division text,
  subdivision text,
  rubric text,
  phones text,
  faxs text,
  email text,
  web text,
  vk text,
  twitter text,
  facebook text,
  ok text,
  worktime text,
  payment_method text,
  "X" text,
  "Y" text,
  id_sq bigint,
  y1 text,
  y2 text,
  y3 text,
  y4 text
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_STG"."03_objects_with_squares_1st"
  OWNER TO postgres;
