CREATE OR REPLACE FUNCTION get_persona(
    p_per_cod INTEGER
)
RETURNS TABLE(
    nombre VARCHAR,
    cedula INTEGER,
    cons_fecha_ini TIMESTAMP WITHOUT TIME ZONE,
    lugar_de_residencia INTEGER,
    direccion VARCHAR,
    tlf_cod_area NUMERIC,
    tlf_numero BIGINT,
    cor_alias VARCHAR,
    cor_dominio VARCHAR
) AS $$
BEGIN

        RETURN QUERY
        SELECT p."Per_nombre", p."Per_ci", 
                p."Per_fecha_ini", p.fk_lugar, 
                p."Per_dir", t.tlf_cod_area, 
                t.tlf_numero, c.cor_alias, c.cor_dominio
        FROM "Persona" p 
        LEFT JOIN correo c ON p."Per_cod" = c.fk_persona
        LEFT JOIN telefono t ON p."Per_cod" = t.fk_persona 
            OR t.fk_natural = p."Per_cod" 
            OR t.fk_juridica = p."Per_cod"
            OR t.fk_personal = p."Per_cod"
        WHERE p."Per_cod" = p_per_cod;

END;
$$ LANGUAGE plpgsql;