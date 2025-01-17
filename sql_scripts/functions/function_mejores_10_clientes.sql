CREATE OR REPLACE FUNCTION mejores_10_clientes(p_anio INTEGER)
RETURNS TABLE(
    cliente_id INTEGER,
    nombre_cliente VARCHAR,
    cantidad_compras BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        c.cli_cod,
        tlp."Per_nombre",
        COUNT(v.ven_cod) AS cantidad_compras
    FROM
        venta v
    JOIN
        pedido p ON p.pedi_cod = v.fk_pedido
    JOIN
        cliente c ON c.cli_cod = p.fk_cliente
    JOIN
        todas_las_personas tlp ON c.fk_natural = tlp."Per_cod" OR c.fk_juridica = tlp."Per_cod"
    WHERE
        EXTRACT(YEAR FROM v.ven_fecha) = p_anio
    GROUP BY
        c.cli_cod, tlp."Per_nombre"
    ORDER BY
        cantidad_compras DESC
    LIMIT 10;
END;
$$ LANGUAGE plpgsql;