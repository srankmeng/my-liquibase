--liquibase formatted sql
--changeset srank:0.1.0 endDelimiter:; splitStatements:true stripComments:false runOnChange:false

CREATE TABLE APPLICATION_PARAMETER (
CATEGORY VARCHAR(512) NOT NULL,
NAME VARCHAR(128) NOT NULL,
VALUE VARCHAR(512) NULL,
VERSION INT NOT NULL,
PRIMARY KEY (CATEGORY, NAME));

--rollback DROP TABLE public.application_parameter;
