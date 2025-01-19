CREATE SEQUENCE avion_seq;
ALTER TABLE avion ALTER COLUMN avion_cod SET DEFAULT nextval('avion_seq');