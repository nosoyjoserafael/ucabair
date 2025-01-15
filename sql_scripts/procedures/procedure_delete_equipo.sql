CREATE OR REPLACE PROCEDURE delete_equipo(    
    p_equi_cod INTEGER
) AS $$
BEGIN         
    DELETE FROM public.trabajo_equipo WHERE fk_equipo = p_equi_cod;
    DELETE FROM public.equi_per WHERE fk_equipo = p_equi_cod;
    DELETE FROM public."Equipo" WHERE "Equi_cod" = p_equi_cod;
END;
$$ LANGUAGE plpgsql;