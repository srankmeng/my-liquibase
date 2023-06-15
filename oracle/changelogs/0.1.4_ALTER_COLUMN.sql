--liquibase formatted sql
--changeset one:0.1.4 endDelimiter:;
ALTER TABLE TMP_2.GUEST 
ADD GENDER VARCHAR(10) NULL;
--rollback ALTER TABLE TMP_2.GUEST DROP COLUMN GENDER;
