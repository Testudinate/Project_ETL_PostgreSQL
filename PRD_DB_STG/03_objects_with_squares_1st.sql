-- Table: prd_db_stg."03_objects_with_squares_1st"

-- DROP TABLE prd_db_stg."03_objects_with_squares_1st";

CREATE TABLE prd_db_stg."03_objects_with_squares_1st"
(
  city integer,
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
ALTER TABLE prd_db_stg."03_objects_with_squares_1st"
  OWNER TO admin_etl;
