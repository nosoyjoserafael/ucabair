CREATE SEQUENCE asignacion_seq INCREMENT BY 1 START WITH 1;
ALTER TABLE asignacion ALTER COLUMN asig_cod SET DEFAULT nextval('asignacion_seq');