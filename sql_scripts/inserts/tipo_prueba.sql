CREATE SEQUENCE tpPru_cod_seq START WITH 1 INCREMENT BY 1;

insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Materiales', '', 10);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Estructurales', '', 3);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Fatiga', '', 6);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Motores', '', 7);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Sistemas de control', '', 5);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Evacuación', '', 10);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Resistencia a impactos', '', 15);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Condiciones climáticas extremas', '', 20);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Despegue y aterrizaje', '', 5);
insert into public."tipo_prueba" ("tprueba_cod", "tprueba_nombre","tprueba_descripcion", "tprueba_duracion_estim") values (nextval('tpPru_cod_seq'), 'Sistemas eléctricos y electrónicos', '', 8);