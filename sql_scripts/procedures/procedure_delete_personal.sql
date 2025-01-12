CREATE OR REPLACE PROCEDURE delete_personal(    
    p_per_cod INTEGER
) AS $$
BEGIN     
    DELETE FROM public.asistencia WHERE fk_personal = p_per_cod;
    DELETE FROM public.beneficiario WHERE fk_personal = p_per_cod;    
    DELETE FROM public.cons_per WHERE fk_personal = p_per_cod;
    DELETE FROM public.equi_per WHERE fk_personal = p_per_cod;
    DELETE FROM public.per_car WHERE fk_personal = p_per_cod;
    DELETE FROM public.per_pru WHERE fk_personal = p_per_cod;
    DELETE FROM public.red_social WHERE fk_personal = p_per_cod;
    DELETE FROM public.telefono WHERE fk_personal = p_per_cod;
    DELETE FROM public.titulo WHERE fk_personal = p_per_cod;
    DELETE FROM public.usuario WHERE fk_personal = p_per_cod;
    DELETE FROM public."Personal" WHERE "Per_cod" = p_per_cod;
END;
$$ LANGUAGE plpgsql;