CREATE OR REPLACE FUNCTION get_aviones_construccion()
RETURNS TABLE(
    cod_construccion NUMERIC,
    cod_avion_construccion INTEGER,
    cons_fecha_ini DATE,
    modelo_avion_construccion VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT c.cons_cod, c.fk_avion, c.cons_fecha_ini, mod.mod_nombre
    FROM construccion c 
    JOIN avion a ON c.fk_avion = a.avion_cod
    JOIN modelo mod ON a.fk_modelo = mod.mod_cod
    WHERE a.avion_fecha_fabfinalizado IS NULL;
END;
$$ LANGUAGE plpgsql;