CREATE SEQUENCE pieza_seq;
ALTER TABLE pieza ALTER COLUMN pie_cod SET DEFAULT nextval('pieza_seq');