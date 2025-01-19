CREATE SEQUENCE tipo_maquinaria_seq;
ALTER TABLE tipo_maquinaria ALTER COLUMN tipo_maq_cod SET DEFAULT nextval('tipo_maquinaria_seq');