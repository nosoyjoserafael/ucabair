CREATE OR REPLACE PROCEDURE post_prueba(    
    p_fk_tipoPrueba INTEGER,
    p_pru_duracion_real NUMERIC DEFAULT NULL
) AS $$
BEGIN
    INSERT INTO prueba ("fk_tipoPrueba", pru_duracion_real)
    VALUES (p_fk_tipoPrueba, p_pru_duracion_real);
END;
$$ LANGUAGE plpgsql;