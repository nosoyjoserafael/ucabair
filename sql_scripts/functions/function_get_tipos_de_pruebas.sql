CREATE OR REPLACE FUNCTION get_tipos_de_pruebas()
RETURNS TABLE(
    tprueba_cod INT,
    tprueba_nombre VARCHAR,
    tprueba_descripcion TEXT,
    tprueba_duracion_estim NUMERIC	
) As $$
BEGIN
    RETURN QUERY
    SELECT tp.tprueba_cod, tp.tprueba_nombre, tp.tprueba_descripcion,
			tp.tprueba_duracion_estim
    FROM tipo_prueba tp	
	order by 1;
END;
$$ LANGUAGE plpgsql;