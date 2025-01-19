CREATE OR REPLACE FUNCTION inventario_detallado_por_mes()
RETURNS TABLE(
    sede_inventario VARCHAR,
    mes_inventario TIMESTAMP WITHOUT TIME ZONE,
    material_nombre VARCHAR,
    material_cantidad_inventario INTEGER
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        s.sed_nombre, mat.mat_fecha_in, tmat.tipo_mat_nombre, mat.mat_cantidad
    FROM material mat
        JOIN tipo_material tmat ON mat."fk_TMaterial" = tmat.tipo_mat_cod
        JOIN sede s ON mat.fk_sede = s.sed_cod
    WHERE
        mat.mat_fecha_in IS NOT NULL
    GROUP BY
        s.sed_nombre, mat.mat_fecha_in, tmat.tipo_mat_nombre, mat.mat_cantidad
    ORDER BY
        1, 2 ASC
    ;
END;
$$ LANGUAGE plpgsql;