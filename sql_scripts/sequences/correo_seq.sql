CREATE SEQUENCE correo_seq INCREMENT BY 1 START WITH 1;
ALTER TABLE correo ALTER COLUMN cor_cod SET DEFAULT nextval('correo_seq');