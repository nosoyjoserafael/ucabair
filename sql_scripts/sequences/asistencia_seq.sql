CREATE SEQUENCE asistencia_seq INCREMENT BY 1 START WITH 1;
ALTER TABLE asistencia ALTER COLUMN asis_cod SET DEFAULT nextval('asistencia_seq');