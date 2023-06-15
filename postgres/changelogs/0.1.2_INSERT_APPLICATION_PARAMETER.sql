--liquibase formatted sql
--changeset srank:0.1.2 endDelimiter:; splitStatements:true stripComments:false runOnChange:false

INSERT INTO public.application_parameter
(category, "name", value, "version")
VALUES('WEB', 'test2', 'val', 1);

--rollback DELETE FROM public.application_parameter WHERE category='WEB' AND "name"='test2';