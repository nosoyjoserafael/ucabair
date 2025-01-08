CREATE SEQUENCE av_cod_seq START WITH 1 INCREMENT BY 1;

insert into public."avion" ("avion_cod", "fk_modelo") values (nextval('av_cod_seq'), 1);
insert into public."avion" ("avion_cod", "fk_modelo") values (nextval('av_cod_seq'), 2);
insert into public."avion" ("avion_cod", "fk_modelo") values (nextval('av_cod_seq'), 3);
insert into public."avion" ("avion_cod", "fk_modelo") values (nextval('av_cod_seq'), 9);