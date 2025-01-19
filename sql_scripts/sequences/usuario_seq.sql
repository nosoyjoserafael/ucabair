CREATE SEQUENCE usuario_seq;
ALTER TABLE usuario ALTER COLUMN user_cod SET DEFAULT nextval('usuario_seq');