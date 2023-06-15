--liquibase formatted sql
--changeset two:0.1.1 endDelimiter:;
INSERT INTO TMP_2.GUEST
(FIRSTNAME, SURNAME, AGE)
VALUES('Jaturong', 'Duang', 20);
--rollback DELETE FROM TMP_2.GUEST WHERE FIRSTNAME='Jaturong';