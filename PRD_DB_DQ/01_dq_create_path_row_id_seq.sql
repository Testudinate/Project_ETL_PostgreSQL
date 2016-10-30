-- Sequence: "PRD_DB_DQ"."01_dq_create_path_row_id_seq"

-- DROP SEQUENCE "PRD_DB_DQ"."01_dq_create_path_row_id_seq";

CREATE SEQUENCE "PRD_DB_DQ"."01_dq_create_path_row_id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE "PRD_DB_DQ"."01_dq_create_path_row_id_seq"
  OWNER TO postgres;
