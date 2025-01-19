CREATE OR REPLACE FUNCTION get_pruebas()
RETURNS TABLE(
    pru_cod INT,
    tprueba_nombre VARCHAR,
    tprueba_descripcion TEXT,
    tprueba_duracion_estim NUMERIC,
	pru_duracion_real NUMERIC
) AS $$
BEGIN
    RETURN QUERY
    SELECT p.pru_cod, tp.tprueba_nombre, tp.tprueba_descripcion,
			tp.tprueba_duracion_estim, p.pru_duracion_real
    FROM prueba p, tipo_prueba tp
	where p."fk_tipoPrueba" = tp.tprueba_cod
	order by 1;
END;
$$ LANGUAGE plpgsql;