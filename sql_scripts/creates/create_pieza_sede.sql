-- Crear la secuencia para pieza_sede_seq
CREATE SEQUENCE pieza_sede_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Crear la tabla pieza_sede
CREATE TABLE pieza_sede (
    pie_sed_cod INTEGER NOT NULL DEFAULT nextval('pieza_sede_seq'),
    pie_sede_fecha_ini DATE,
    pie_sede_fecha_fin DATE,
    fk_pieza INTEGER, 
    fk_sede INTEGER,
    PRIMARY KEY (pie_sed_cod),
    CONSTRAINT fk_pieza FOREIGN KEY (fk_pieza) REFERENCES pieza(pie_cod),
    CONSTRAINT fk_sede FOREIGN KEY (fk_sede) REFERENCES sede(sed_cod)
);