-- Crear la secuencia para te_cod
CREATE SEQUENCE te_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Crear la tabla trabajo_equipo
CREATE TABLE trabajo_equipo (
    te_cod INTEGER NOT NULL DEFAULT nextval('te_seq'),
    te_tiempo_estim DATE NOT NULL,
    te_nombre_trabajo VARCHAR(50) NOT NULL,
    te_tiempo_real DATE,
    fk_equipo INTEGER,
    PRIMARY KEY (te_cod),
    CONSTRAINT fk_equipo FOREIGN KEY (fk_equipo) REFERENCES "Equipo"("Equi_cod")
);