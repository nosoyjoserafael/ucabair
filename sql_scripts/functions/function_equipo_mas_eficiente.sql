CREATE OR REPLACE FUNCTION equipo_mas_eficiente()
RETURNS TABLE(
    equipo_cod INTEGER,
    n_tareas_realizadas BIGINT,
    n_tareas_realizadas_eficientemente BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        e."Equi_cod",
        COUNT(te.te_cod) AS n_tareas_realizadas,
        COUNT(CASE WHEN te.te_tiempo_real <= te.te_tiempo_estim THEN 1 END) AS n_tareas_realizadas_eficientemente
    FROM 
        "Equipo" e
    JOIN 
        trabajo_equipo te ON e."Equi_cod" = te.fk_equipo
    GROUP BY 
        e."Equi_cod"
    ORDER BY 
        n_tareas_realizadas_eficientemente DESC
    LIMIT 1;
END;
$$ LANGUAGE plpgsql;