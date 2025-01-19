CREATE OR REPLACE PROCEDURE delete_asistencia(    
    p_asis_cod INTEGER
) AS $$
BEGIN         
    DELETE FROM public.asistencia WHERE asis_cod = p_asis_cod;
END;
$$ LANGUAGE plpgsql;