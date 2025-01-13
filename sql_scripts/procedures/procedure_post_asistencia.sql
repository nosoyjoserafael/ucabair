CREATE OR REPLACE PROCEDURE post_asistencia(
    p_user_nombre VARCHAR,
    p_fecha_asistida DATE,
    p_hora_entrada TIME WITHOUT TIME ZONE,
    p_hora_salida TIME WITHOUT TIME ZONE
) AS $$
DECLARE
    v_asignacion INTEGER;
BEGIN
    IF p_user_nombre IS NOT NULL AND p_user_nombre not in (Select user_nombre from usuario) THEN
        RAISE EXCEPTION 'Error, el nombre de usuario no existe';
    ELSIF p_fecha_asistida IS NULL THEN
        RAISE EXCEPTION 'Error, debe ingresar la fecha de asistencia';
    END IF;

    IF p_user_nombre IS NOT NULL THEN
        SELECT asig_cod INTO v_asignacion
        FROM asignacion
        WHERE fk_personal = (
            SELECT fk_personal 
            FROM usuario 
            WHERE user_nombre = p_user_nombre
        );

        INSERT INTO asistencia(asis_fecha_asistida, asis_hora_entrada, asis_hora_salida, fk_asignacion)
        VALUES(p_fecha_asistida, p_hora_entrada, p_hora_salida, v_asignacion);        
    ELSE
        RAISE EXCEPTION 'Error, debe ingresar el nombre del usuario';
    END IF;    
END;
$$ LANGUAGE plpgsql;