CREATE SEQUENCE titulo_seq;
ALTER TABLE titulo ALTER COLUMN titu_cod SET DEFAULT nextval('titulo_seq');