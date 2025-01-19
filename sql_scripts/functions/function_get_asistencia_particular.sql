CREATE OR REPLACE FUNCTION get_asistencia_particular(
    p_per_cod INTEGER DEFAULT NULL,
    p_user_nombre VARCHAR DEFAULT NULL
)
RETURNS TABLE(
    asis_fecha_asistida DATE,
    asis_hora_entrada TIME WITHOUT TIME ZONE,
    asis_hora_salida TIME WITHOUT TIME ZONE
) AS $$
BEGIN

    IF p_per_cod IS NOT NULL AND p_per_cod not in (Select "Per_cod" from "Personal") THEN
        RAISE EXCEPTION 'Error, el codigo de personal no existe';
    ELSIF p_user_nombre IS NOT NULL AND p_user_nombre not in (Select user_nombre from usuario) THEN
        RAISE EXCEPTION 'Error, el nombre de usuario no existe';
    END IF;

    IF p_per_cod IS NOT NULL THEN
        RETURN QUERY 
        SELECT asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis, asignacion asig        
        WHERE asis.fk_asignacion = asig.asig_cod and asig.fk_personal = p_per_cod;
    ELSIF p_user_nombre IS NOT NULL THEN
        RETURN QUERY 
        SELECT asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis, asignacion asig
        WHERE asis.fk_asignacion = asig.asig_cod and 
        asig.fk_personal = (
            SELECT fk_personal 
            FROM usuario 
            WHERE user_nombre = p_user_nombre);
    ELSIF p_per_cod IS NOT NULL AND p_user_nombre IS NOT NULL THEN
        RETURN QUERY 
        SELECT asis.asis_fecha_asistida, asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis, asignacion asig        
        WHERE asis.fk_asignacion = asig.asig_cod and asig.fk_personal = p_per_cod;
    ELSE
        RAISE EXCEPTION 'Error, debe ingresar ya sea el codigo del usuario o el nombre del usuario';
    END IF;    
END;
$$ LANGUAGE plpgsql;