CREATE OR REPLACE FUNCTION get_rechazados()
RETURNS TABLE(
    codigo INTEGER,
    nombre TEXT,
    conteo BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        a.avion_cod AS codigo,
        'Avion -' || m.mod_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_avion ea ON e.estat_cod = ea.fk_estatus
    JOIN
        avion a ON ea.fk_avion = a.avion_cod
    JOIN
        modelo m ON m.mod_cod = a.fk_modelo
    WHERE
        e.estat_cod = 6
    GROUP BY
        a.avion_cod, m.mod_nombre
    UNION ALL
    SELECT
        mat.mat_cod AS codigo,
        'Material -' || tm.tipo_mat_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_mat em ON e.estat_cod = em.fk_estatus
    JOIN
        material mat ON em.fk_mat = mat.mat_cod
    JOIN
        tipo_material tm ON mat."fk_TMaterial" = tm.tipo_mat_cod
    WHERE
        e.estat_cod = 6
    GROUP BY
        mat.mat_cod, tm.tipo_mat_nombre
    UNION ALL
    SELECT
        p.pie_cod AS codigo,
        'Pieza -' || tp.tp_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_pie ep ON e.estat_cod = ep.fk_estatus
    JOIN
        pieza p ON p.pie_cod = ep.fk_pie
    JOIN
        tipo_pieza tp ON p.fk_tpieza = tp.tp_cod
    WHERE
        e.estat_cod = 6
    GROUP BY
        p.pie_cod, tp.tp_nombre
    UNION ALL
    SELECT
        pru.pru_cod AS codigo,
        'Prueba -' || tpru.tprueba_nombre AS nombre,
        COUNT(*) AS conteo
    FROM 
        estatus e 
    JOIN
        est_pru epru ON e.estat_cod = epru.fk_est
    JOIN
        prueba pru ON epru.fk_pru = pru.pru_cod
    JOIN
        tipo_prueba tpru ON pru."fk_tipoPrueba" = tpru.tprueba_cod
    WHERE
        e.estat_cod = 6
    GROUP BY
        pru.pru_cod, tpru.tprueba_nombre;
END;
$$ LANGUAGE plpgsql;