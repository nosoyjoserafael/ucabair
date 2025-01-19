CREATE SEQUENCE horario_seq;
ALTER TABLE horario ALTER COLUMN hora_cod SET DEFAULT nextval('horario_seq');