CREATE OR REPLACE FUNCTION calcular_horas_extra(
    p_user_nombre VARCHAR
)
RETURNS TABLE(
    per_cod INTEGER,
    per_nombre_usuario VARCHAR,
    horas_extra INTEGER
) AS $$
DECLARE
    v_per_cod INTEGER;
    v_hora_entrada TIME WITHOUT TIME ZONE;
    v_hora_salida TIME WITHOUT TIME ZONE;
    v_hora_entrada_horario TIME WITHOUT TIME ZONE;
    v_hora_salida_horario TIME WITHOUT TIME ZONE;
    v_horas_extra INTERVAL := '0 hours';
    v_total_horas_extra INTEGER := 0;
BEGIN
    -- Verificar si el usuario existe
    IF p_user_nombre IS NOT NULL AND p_user_nombre NOT IN (SELECT user_nombre FROM usuario) THEN
        RAISE EXCEPTION 'Error, el nombre de usuario no existe';
    END IF;

    -- Obtener las horas de entrada y salida del horario regular del empleado
    SELECT hor.hora_entrada, hor.hora_salida, usr.fk_personal
    INTO v_hora_entrada_horario, v_hora_salida_horario, v_per_cod
    FROM horario hor
    JOIN asignacion asig ON hor.hora_cod = asig.fk_horario
    JOIN usuario usr ON usr.fk_personal = asig.fk_personal
    WHERE usr.user_nombre = p_user_nombre;

    -- Calcular las horas extra para todas las asistencias del usuario
    FOR v_hora_entrada, v_hora_salida IN
        SELECT asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis
        JOIN asignacion asig ON asis.fk_asignacion = asig.asig_cod
        JOIN usuario usr ON asig.fk_personal = usr.fk_personal
        WHERE usr.user_nombre = p_user_nombre
    LOOP
        IF v_hora_salida > v_hora_salida_horario THEN
            v_horas_extra := v_hora_salida - v_hora_salida_horario;
            v_total_horas_extra := v_total_horas_extra + FLOOR(EXTRACT(EPOCH FROM v_horas_extra) / 3600);
        END IF;
    END LOOP;

    RETURN QUERY
    SELECT v_per_cod, p_user_nombre, v_total_horas_extra;
END;
$$ LANGUAGE plpgsql;