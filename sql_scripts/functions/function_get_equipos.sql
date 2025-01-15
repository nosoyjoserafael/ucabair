CREATE OR REPLACE FUNCTION get_equipos()
RETURNS TABLE(
    equi_cod INTEGER,
    nombre_trabajo VARCHAR,
    tiempo_estim DATE,
    tiempo_real DATE
) AS $$
BEGIN
    RETURN QUERY
    SELECT eq."Equi_cod", te.te_nombre_trabajo, te.te_tiempo_estim, te.te_tiempo_real
    from "Equipo" eq JOIN trabajo_equipo te ON eq."Equi_cod" = te.fk_equipo;
END;
$$ LANGUAGE plpgsql;