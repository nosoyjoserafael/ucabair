CREATE OR REPLACE PROCEDURE post_tipo_prueba(    
    p_tprueba_nombre VARCHAR,
    p_tprueba_descripcion TEXT,
    p_tprueba_duracion_estim NUMERIC
) AS $$
BEGIN
    INSERT INTO public.tipo_prueba (
        tprueba_nombre,
        tprueba_descripcion,
        tprueba_duracion_estim
    )
    VALUES (
        p_tprueba_nombre,
        p_tprueba_descripcion,
        p_tprueba_duracion_estim
    );
END;
$$ LANGUAGE plpgsql;