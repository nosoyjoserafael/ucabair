CREATE SEQUENCE maquinaria_seq;
ALTER TABLE maquinaria ALTER COLUMN maq_cod SET DEFAULT nextval('maquinaria_seq');