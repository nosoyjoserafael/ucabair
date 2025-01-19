CREATE OR REPLACE FUNCTION ala_mas_usada()
RETURNS TABLE(
    tipo_pieza_ala_id INTEGER,
    nombre_ala VARCHAR,
    n_modelos_con_ala bigint
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        tp.tp_cod,
        tp.tp_nombre,
        COUNT(mtp."fk_TPieza") AS n_modelos_con_ala
    FROM
        public.tipo_pieza tp
    JOIN
        public."Mod_Tpie" mtp ON tp.tp_cod = mtp."fk_TPieza"
    WHERE tp.tp_nombre LIKE '%Ala%'
    GROUP BY
        tp.tp_cod,
        tp.tp_nombre
    ORDER BY
        3 DESC
    LIMIT 1;
END;
$$ LANGUAGE plpgsql;