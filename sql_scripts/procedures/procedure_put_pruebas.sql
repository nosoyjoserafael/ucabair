CREATE OR REPLACE PROCEDURE put_prueba(
    p_pru_cod INT,
    p_pru_duracion_real NUMERIC    
) AS $$
BEGIN
    UPDATE prueba
    SET pru_duracion_real = p_pru_duracion_real
    WHERE pru_cod = p_pru_cod;
END;

$$ LANGUAGE plpgsql;