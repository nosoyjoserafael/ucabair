CREATE OR REPLACE PROCEDURE post_telefono(
    p_tlf_cod_area NUMERIC,
    p_tlf_numero BIGINT,    
    p_per_cod INTEGER DEFAULT NULL,
    p_cod_proveedor INTEGER DEFAULT NULL
) AS $$
DECLARE
    v_tipo_persona VARCHAR;
BEGIN

    IF p_per_cod IS NOT NULL THEN
        SELECT tipo from todas_las_personas where
        "Per_cod" = p_per_cod INTO v_tipo_persona;

        IF v_tipo_persona = 'natural' THEN
            INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_natural)
            VALUES (p_tlf_cod_area, p_tlf_numero, p_per_cod);
        ELSIF v_tipo_persona = 'juridica' THEN
            INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_juridica)
            VALUES (p_tlf_cod_area, p_tlf_numero, p_per_cod);
        ELSE
            INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_personal)
            VALUES (p_tlf_cod_area, p_tlf_numero, p_per_cod);
        END IF;
    ELSE
        INSERT INTO telefono(tlf_cod_area, tlf_numero, fk_proveedor)
        VALUES (p_tlf_cod_area, p_tlf_numero, p_cod_proveedor);
    END IF;

END;
$$ LANGUAGE plpgsql;