CREATE SEQUENCE area_seq INCREMENT BY 1 START WITH 1;
ALTER TABLE area ALTER COLUMN ar_cod SET DEFAULT nextval('area_seq');