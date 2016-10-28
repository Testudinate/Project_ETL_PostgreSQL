-- Table: "PRD_DB_DQ"."01_dq_create_path"

-- DROP TABLE "PRD_DB_DQ"."01_dq_create_path";

CREATE TABLE "PRD_DB_DQ"."01_dq_create_path"
(
  src_change_dtm timestamp with time zone[],
  status character varying[],
  prc_name character varying[],
  full_path character varying[],
  file_name character varying[]
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PRD_DB_DQ"."01_dq_create_path"
  OWNER TO postgres;
