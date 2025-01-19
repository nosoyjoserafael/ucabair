CREATE OR REPLACE FUNCTION promedio_produccion_sede()
RETURNS TABLE(
    sede_nombre VARCHAR,
    mes_produccion TEXT,
    promedio_produccion BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        s.sed_nombre,
        TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM') AS mes_inicio,
        COUNT(ps.pie_sed_cod) / COUNT(DISTINCT TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM')) AS promedio_produccion
    FROM 
        pieza_sede ps 
    JOIN
        sede s ON ps.fk_sede = s.sed_cod
    JOIN 
        pieza p ON ps.fk_pieza = p.pie_cod
    JOIN
        tipo_pieza tp ON p.fk_tpieza = tp.tp_cod
    WHERE
        ps.pie_sede_fecha_fin IS NOT NULL
        AND TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM') = TO_CHAR(ps.pie_sede_fecha_fin, 'YYYY-MM')
    GROUP BY
        s.sed_nombre, TO_CHAR(ps.pie_sede_fecha_ini, 'YYYY-MM')
    ORDER BY
        s.sed_nombre, mes_inicio ASC
    ;
END;
$$ LANGUAGE plpgsql;