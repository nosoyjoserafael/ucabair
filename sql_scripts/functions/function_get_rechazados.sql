CREATE OR REPLACE FUNCTION get_rechazados()
RETURNS TABLE(
    n_productos_rechazados BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        count(*)
    FROM 
        estatus e 
        JOIN
            est_avion ea ON e.estat_cod = ea.fk_estatus
        JOIN
            est_mat em ON e.estat_cod = em.fk_estatus
        JOIN
            est_pie ep ON e.estat_cod = ep.fk_estatus
        JOIN
            est_pru epru ON e.estat_cod = epru.fk_est
        WHERE
            e.estat_cod = 6;
END;
$$ LANGUAGE plpgsql;