CREATE SEQUENCE beneficiario_seq INCREMENT BY 1 START WITH 1;
ALTER TABLE beneficiario ALTER COLUMN bene_cod SET DEFAULT nextval('beneficiario_seq');