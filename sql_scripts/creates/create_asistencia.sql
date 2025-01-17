-- Crear la secuencia para asignacion_cod
CREATE SEQUENCE asistencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Crear la tabla asistencia
CREATE TABLE asistencia (
    asis_cod INTEGER NOT NULL DEFAULT nextval('asistencia_seq'),
    asis_fecha_asistida DATE, 
    asis_hora_entrada TIME WITHOUT TIME ZONE,
    asis_hora_salida TIME WITHOUT TIME ZONE,
    fk_asignacion INTEGER,
    PRIMARY KEY (asis_cod),
    CONSTRAINT fk_asignacion FOREIGN KEY (fk_asignacion) REFERENCES asignacion(asig_cod)    
);