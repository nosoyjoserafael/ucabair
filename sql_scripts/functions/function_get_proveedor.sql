CREATE OR REPLACE FUNCTION get_proveedor(
    p_proveedor_cod INTEGER
)
RETURNS TABLE(
    nombre VARCHAR,
    cedula INTEGER,
    lugar_de_residencia INTEGER,
    tlf_cod_area NUMERIC,
    tlf_numero BIGINT,
    cor_alias VARCHAR,
    cor_dominio VARCHAR
) AS $$
BEGIN

        RETURN QUERY
        SELECT p.prove_nombre, p.prove_ci, 
                p.fk_lugar, 
                t.tlf_cod_area, 
                t.tlf_numero, c.cor_alias, c.cor_dominio
        FROM proveedor p 
        LEFT JOIN correo c ON p.prove_cod = c.fk_proveedor
        LEFT JOIN telefono t ON p.prove_cod = t.fk_proveedor 
        WHERE p.prove_cod = p_proveedor_cod;

END;
$$ LANGUAGE plpgsql;