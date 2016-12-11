CREATE INDEX "01_dq_create_path_prc_id"
   ON prd_db_dq."01_dq_create_path" USING btree (prc_id ASC NULLS LAST);
