-- Crear la secuencia para te_cod
CREATE SEQUENCE asignacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Crear la tabla trabajo_equipo
CREATE TABLE trabajo_equipo (
    asig_cod INTEGER NOT NULL DEFAULT nextval('asignacion_seq'),
    fk_horario INTEGER, 
    fk_personal INTEGER,
    PRIMARY KEY (asig_cod),
    CONSTRAINT fk_horario FOREIGN KEY (fk_horario) REFERENCES horario(hora_cod),
    CONSTRAINT fk_personal FOREIGN KEY (fk_personal) REFERENCES "Personal"("Per_cod")
);