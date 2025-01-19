CREATE OR REPLACE PROCEDURE delete_proveedor(    
    p_prove_cod INTEGER
) AS $$
BEGIN     
    DELETE FROM public.pro_mat WHERE fk_proveedor = p_prove_cod;
    DELETE FROM public.proveedor WHERE prove_cod = p_prove_cod;
END;
$$ LANGUAGE plpgsql;