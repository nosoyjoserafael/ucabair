CREATE SEQUENCE cons_cod_seq START WITH 1 INCREMENT BY 1;

insert into public."construccion" ("cons_cod","cons_fecha_ini","fk_avion") values (nextval('cons_cod_seq'),'2024-08-06',1);
insert into public."construccion" ("cons_cod","cons_fecha_ini","fk_avion") values (nextval('cons_cod_seq'),'2024-05-07',2);
insert into public."construccion" ("cons_cod","cons_fecha_ini","fk_avion") values (nextval('cons_cod_seq'),'2024-03-03',3);
insert into public."construccion" ("cons_cod","cons_fecha_ini","fk_avion") values (nextval('cons_cod_seq'),'2024-09-04',4);