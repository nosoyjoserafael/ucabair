CREATE OR REPLACE FUNCTION get_tipo_material()
RETURNS TABLE(
    tipo_mat_cod INT,
    tipo_mat_nombre VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT tm.tipo_mat_cod, tm.tipo_mat_nombre
    FROM tipo_material tm	
	order by 1;
END;
$$ LANGUAGE plpgsql;