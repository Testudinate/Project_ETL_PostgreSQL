-- Table: prd_db_stg."09_many_squeres"

-- DROP TABLE prd_db_stg."09_many_squeres";

CREATE TABLE prd_db_stg."09_many_squeres"
(
  square_id integer,
  many numeric
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prd_db_stg."09_many_squeres"
  OWNER TO admin_etl;

-- Index: prd_db_stg."09_many_squeres_square_id_idx"

-- DROP INDEX prd_db_stg."09_many_squeres_square_id_idx";

CREATE UNIQUE INDEX "09_many_squeres_square_id_idx"
  ON prd_db_stg."09_many_squeres"
  USING btree
  (square_id);

