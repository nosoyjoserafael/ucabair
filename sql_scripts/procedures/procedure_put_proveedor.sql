CREATE OR REPLACE PROCEDURE put_proveedor(    
    p_prove_cod INTEGER,
    p_tmat_cod INTEGER,
    p_tmat_cantidad INTEGER,
    p_tmat_costo INTEGER
) AS $$
BEGIN     
    update public."pro_mat" set promat_cantidad = p_tmat_cantidad, promat_costo = p_tmat_costo
    where  fk_proveedor = p_prove_cod and fk_tmat = p_tmat_cod;
END;
$$ LANGUAGE plpgsql;