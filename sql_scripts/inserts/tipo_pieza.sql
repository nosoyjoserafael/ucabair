CREATE SEQUENCE tpPieza_cod_seq START WITH 1 INCREMENT BY 1;

--Fuselaje
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Puerta', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Suelo', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Bano', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Aislamiento', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Techo', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Ventanilla', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Sistema de Fuselaje', '');

--Alas
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Ala', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Aleron', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Slat', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Spoiler', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Slot', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Tanque de combustible', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Flap', '');

--Cola
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Antena', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Actuador de control', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Estabilizador', '');

--Tren aterrizaje
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Tren Principal', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Rueda', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Amortiguador', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Luces de posicion', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Sistema de aterrizaje', '');

--Potencia
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Motor', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Sistema de Potencia', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Turbina', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Helice', '');

--Avionica
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Panel de instrumento', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'GPS', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Radio', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Autopiloto', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Radar', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), 'Sistema de cabina', '');
insert into public."tipo_pieza"("tp_cod", "tp_nombre","tp_descripcion") values (nextval('tpPieza_cod_seq'), '', '');

