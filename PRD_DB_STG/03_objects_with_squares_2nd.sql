-- Table: "PRD_DB_STG"."03_objects_with_squares_2nd"

-- DROP TABLE "PRD_DB_STG"."03_objects_with_squares_2nd";

CREATE TABLE "PRD_DB_STG"."03_objects_with_squares_2nd"
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
ALTER TABLE "PRD_DB_STG"."03_objects_with_squares_2nd"
  OWNER TO postgres;
