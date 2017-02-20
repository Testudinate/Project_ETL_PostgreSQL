

CREATE TABLE prd_db_stg."09_money_squares"
(
  square_id integer,
  many numeric
)
WITH (
  OIDS=FALSE
);
ALTER TABLE prd_db_stg."09_money_squares"
  OWNER TO admin_etl;

-- Index: prd_db_stg."09_09_money_squares_square_id_idx"

-- DROP INDEX prd_db_stg."09_money_squares_square_id_idx";

CREATE UNIQUE INDEX "09_money_squares_square_id_idx"
  ON prd_db_stg."09_money_squares"
  USING btree
(square_id);
