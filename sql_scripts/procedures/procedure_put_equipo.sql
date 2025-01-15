CREATE OR REPLACE PROCEDURE put_equipo(
    p_equi_cod INTEGER,
    p_te_cod INTEGER,
    p_te_nombre_trabajo VARCHAR DEFAULT NULL,
    p_te_tiempo_estim DATE DEFAULT NULL,
    p_te_tiempo_real DATE DEFAULT NULL
) AS $$
BEGIN

    IF p_te_nombre_trabajo IS NOT NULL THEN
        UPDATE public.trabajo_equipo
        SET te_nombre_trabajo = p_te_nombre_trabajo
        WHERE p_equi_cod = fk_equipo AND te_cod = p_te_cod;
    END IF;
    IF p_te_tiempo_estim IS NOT NULL THEN
        UPDATE public.trabajo_equipo
        SET te_tiempo_estim = p_te_tiempo_estim
        WHERE p_equi_cod = fk_equipo AND te_cod = p_te_cod;
    END IF;
    IF p_te_tiempo_real IS NOT NULL THEN
        UPDATE public.trabajo_equipo
        SET te_tiempo_real = p_te_tiempo_real
        WHERE p_equi_cod = fk_equipo AND te_cod = p_te_cod;
    END IF;
END;
$$ LANGUAGE plpgsql;