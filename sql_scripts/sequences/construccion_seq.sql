create sequence cons_cod_seq;
ALTER TABLE construccion ALTER COLUMN cons_cod SET DEFAULT nextval('cons_cod_seq');