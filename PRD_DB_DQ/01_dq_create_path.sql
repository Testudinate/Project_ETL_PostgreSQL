-- Table: "PRD_DB_DQ"."01_dq_create_path"

-- DROP TABLE "PRD_DB_DQ"."01_dq_create_path";

CREATE TABLE "PRD_DB_DQ"."01_dq_create_path"
( row_id bigint,
  src_change_dtm timestamp without time zone,
  status text,
  prc_name text,
  full_path text,
  file_name text,
  upd_dtm timestamp without time zone,
  prc_id smallint
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_DQ"."01_dq_create_path"
  OWNER TO postgres;
