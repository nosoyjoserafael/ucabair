CREATE SEQUENCE modelo_seq;
ALTER TABLE modelo ALTER COLUMN mod_cod SET DEFAULT nextval('modelo_seq');