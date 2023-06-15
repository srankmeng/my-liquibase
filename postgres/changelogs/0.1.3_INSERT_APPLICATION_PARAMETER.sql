--liquibase formatted sql
--changeset srank:0.1.3 endDelimiter:; splitStatements:true stripComments:false runOnChange:false
INSERT INTO public.application_parameter
(category, "name", value, "version")
VALUES('WEB', 'test3', 'val', 1);
--rollback DELETE FROM public.application_parameter WHERE category='WEB' AND "name"='test3';


--liquibase formatted sql
--changeset srank:0.1.4 endDelimiter:; splitStatements:true stripComments:false runOnChange:false
INSERT INTO public.application_parameter
(category, "name", value, "version")
VALUES('WEB', 'test4', 'val', 1);
--rollback DELETE FROM public.application_parameter WHERE category='WEB' AND "name"='test4';