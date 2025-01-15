CREATE OR REPLACE PROCEDURE post_correo(
    p_cor_alias VARCHAR,
    p_cor_dominio VARCHAR,    
    p_cod_persona INTEGER DEFAULT NULL,
    p_cod_proveedor INTEGER DEFAULT NULL
) AS $$
BEGIN

    IF p_cod_persona IS NOT NULL THEN
        INSERT INTO correo(cor_alias, cor_dominio, fk_persona)
        VALUES (p_cor_alias, p_cor_dominio, p_cod_persona);
    ELSE
        INSERT INTO correo(cor_alias, cor_dominio, fk_proveedor)
        VALUES (p_cor_alias, p_cor_dominio, p_cod_proveedor);
    END IF;

END;
$$ LANGUAGE plpgsql;