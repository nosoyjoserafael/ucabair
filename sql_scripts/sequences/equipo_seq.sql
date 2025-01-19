create sequence equipo_seq;
ALTER TABLE "Equipo" ALTER COLUMN "Equi_cod" SET DEFAULT nextval('equipo_seq');