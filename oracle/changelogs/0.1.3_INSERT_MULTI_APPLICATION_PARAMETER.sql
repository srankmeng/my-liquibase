--liquibase formatted sql
--changeset one:0.1.3 endDelimiter:;
INSERT ALL
   INTO TMP_1.APPLICATION_PARAMETER (CATEGORY, NAME, VALUE, VERSION) VALUES ('WEB', 'test4', 'val', 1)
   INTO TMP_1.APPLICATION_PARAMETER (CATEGORY, NAME, VALUE, VERSION) VALUES ('WEB', 'test5', 'val', 1)
   select * from dual
--rollback DELETE FROM TMP_1.APPLICATION_PARAMETER WHERE NAME IN ('test4', 'test5');