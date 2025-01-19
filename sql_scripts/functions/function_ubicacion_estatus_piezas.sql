CREATE OR REPLACE FUNCTION ubicacion_estatus_piezas()
RETURNS TABLE(
    pieza_nombre VARCHAR,
    pieza_estado VARCHAR,
    pieza_ubicacion VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        tp.tp_nombre, e.estat_nombre, s.sed_nombre
    FROM pieza_sede ps 
        JOIN
            sede s ON ps.fk_sede = s.sed_cod
        JOIN 
            pieza p ON ps.fk_pieza = p.pie_cod
        JOIN
            est_pie ep ON p.pie_cod = ep.fk_pie
        JOIN
            estatus e ON ep.fk_estatus = e.estat_cod
        JOIN
            tipo_pieza tp ON p.fk_tpieza = tp.tp_cod
    ;
END;
$$ LANGUAGE plpgsql;