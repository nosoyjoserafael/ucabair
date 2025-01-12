CREATE OR REPLACE PROCEDURE post_personal(    
    p_Per_nombre VARCHAR,
    p_Per_ci INTEGER,
    p_Per_Per_apellido VARCHAR,
    p_Per_Per_experiencia NUMERIC,
    p_fk_lugar INTEGER,
    p_Per_dir TEXT,
    p_Per_fecha_ini DATE
) AS $$
BEGIN
    INSERT INTO public."Personal"
    (
        "Per_nombre",
        "Per_ci",
        "Per_Per_apellido",
        "Per_Per_experiencia",
        "fk_lugar",
        "Per_dir",
        "Per_fecha_ini"
    )
    VALUES (
        p_Per_nombre,
        p_Per_ci,
        p_Per_Per_apellido,
        p_Per_Per_experiencia,
        p_fk_lugar,
        p_Per_dir,
        p_Per_fecha_ini
    );

END;
$$ LANGUAGE plpgsql;