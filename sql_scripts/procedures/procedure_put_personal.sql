CREATE OR REPLACE PROCEDURE put_personal(
    p_per_cod INT,
    p_Per_nombre VARCHAR,
    p_Per_ci INTEGER,
    p_Per_Per_apellido VARCHAR,
    p_Per_Per_experiencia NUMERIC,
    p_fk_lugar INTEGER,
    p_Per_dir TEXT,
    p_Per_fecha_ini DATE
) AS $$
BEGIN
    UPDATE public."Personal"
    SET Per_nombre = p_Per_nombre,
        Per_ci = p_Per_ci,
        Per_apellido = p_Per_apellido,
        Per_experiencia = p_Per_experiencia,
        fk_lugar = p_fk_lugar,
        Per_dir = p_Per_dir,
        Per_fecha_ini = p_Per_fecha_ini
    WHERE Per_cod = p_per_cod;
END;
$$ LANGUAGE plpgsql;