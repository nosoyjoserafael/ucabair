CREATE OR REPLACE PROCEDURE post_equipo(    
    p_personal_cods INTEGER[],
    p_nombre_trabajo VARCHAR, 
    p_tiempo_estim DATE,
    p_fk_construccion NUMERIC
) AS $$
DECLARE
    v_equi_cod INTEGER;
BEGIN

    INSERT INTO public."Equipo" (fk_construccion)
        VALUES (p_fk_construccion)
    RETURNING "Equi_cod" into v_equi_cod;

    INSERT INTO public.trabajo_equipo (te_nombre_trabajo, te_tiempo_estim, fk_equipo)
    VALUES (p_nombre_trabajo, p_tiempo_estim, v_equi_cod);

    FOR i IN 1..array_length(p_personal_cods, 1)
    LOOP
        INSERT INTO public.equi_per (fk_personal,fk_equipo)
        VALUES (p_personal_cods[i], v_equi_cod);
    END LOOP;

END;
$$ LANGUAGE plpgsql;