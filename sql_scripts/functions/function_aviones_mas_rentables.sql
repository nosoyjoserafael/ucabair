CREATE OR REPLACE FUNCTION aviones_mas_rentables() 
RETURNS TABLE(
    avion_cod INT,
    modelo_nombre VARCHAR,
    cons_fecha_ini DATE,
    cons_fecha_fin DATE,
    tiempo_real_dias DOUBLE PRECISION,
    tiempo_estimado_dias INT,
    diferencia_dias DOUBLE PRECISION
) AS $$
BEGIN
   RETURN QUERY
    SELECT 
        a.avion_cod,
        m.mod_nombre,
        c.cons_fecha_ini,
        c.cons_fecha_fin,
        EXTRACT(DAY FROM AGE(c.cons_fecha_fin, c.cons_fecha_ini)) AS tiempo_real,
        c.cons_tiempo_estimado,
        c.cons_tiempo_estimado - EXTRACT(DAY FROM AGE(c.cons_fecha_fin, c.cons_fecha_ini)) AS diferencia
    FROM 
        avion a
    JOIN 
        construccion c ON a.avion_cod = c.fk_avion
    JOIN 
        modelo m ON m.mod_cod = a.fk_modelo
    WHERE 
        c.cons_fecha_fin IS NOT NULL AND c.cons_tiempo_estimado IS NOT NULL
    ORDER BY 
        diferencia DESC;
END;
$$ LANGUAGE plpgsql;