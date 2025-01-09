CREATE SEQUENCE tipo_pieza_seq;
ALTER TABLE tipo_pieza ALTER COLUMN tp_cod SET DEFAULT nextval('tipo_pieza_seq');