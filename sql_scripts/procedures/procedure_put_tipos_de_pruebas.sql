CREATE OR REPLACE PROCEDURE put_tipos_de_pruebas(
    p_tprueba_cod INT,
    p_tprueba_nombre VARCHAR, 
    p_tprueba_descripcion TEXT,
    p_tprueba_duracion_estim NUMERIC
) AS $$
BEGIN
    UPDATE tipo_prueba
    SET tprueba_nombre = p_tprueba_nombre,
        tprueba_descripcion = p_tprueba_descripcion,
        tprueba_duracion_estim = p_tprueba_duracion_estim
    WHERE tprueba_cod = p_tprueba_cod;
END;

$$ LANGUAGE plpgsql;