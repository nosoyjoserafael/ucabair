CREATE OR REPLACE PROCEDURE delete_tipo_prueba(    
    p_tprueba_cod INTEGER
) AS $$
BEGIN
    DELETE FROM public.tipo_prueba
    WHERE tprueba_cod = p_tprueba_cod;
END;
$$ LANGUAGE plpgsql;