CREATE OR REPLACE PROCEDURE post_proveedor(    
    p_prove_nombre VARCHAR,
    p_tmats_cods NUMERIC[],
    p_tmats_cantidades NUMERIC[]
) AS $$
DECLARE
    v_prove_cod INTEGER;   
BEGIN

    INSERT INTO public."proveedor" (prove_cod, prove_nombre, prove_ci, fk_lugar)
        VALUES (nextval('proveedor_prove_cod_seq'), p_prove_nombre, floor(random() * (30000000 - 10000000 + 1) + 10000000), floor(random() * (1506 - 361 + 1) + 361))
    RETURNING prove_cod into v_prove_cod;

    FOR i IN 1..array_length(p_tmats_cods, 1)
    LOOP    
        INSERT INTO public."pro_mat" (fk_proveedor, fk_tmat, promat_cantidad, promat_costo)
          VALUES (v_prove_cod, p_tmats_cods[i], p_tmats_cantidades[i], floor(random() * (1000 - 100 + 1) + 100));
    END LOOP;

END;
$$ LANGUAGE plpgsql;