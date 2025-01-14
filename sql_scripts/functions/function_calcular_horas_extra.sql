CREATE OR REPLACE FUNCTION calcular_horas_extra(
    p_per_cod INTEGER,
    p_fecha_desde DATE,
    p_fecha_hasta DATE
)
RETURNS TABLE(
    per_cod INTEGER,
    horas_extra INTEGER
) AS $$
DECLARE
    v_hora_entrada TIME WITHOUT TIME ZONE;
    v_hora_salida TIME WITHOUT TIME ZONE;
    v_hora_entrada_horario TIME WITHOUT TIME ZONE;
    v_hora_salida_horario TIME WITHOUT TIME ZONE;
    v_horas_extra INTERVAL := '0 hours';
    v_total_horas_extra INTEGER := 0;
BEGIN
    -- Verificar si el usuario existe
    IF p_per_cod IS NOT NULL AND p_per_cod NOT IN (SELECT "Per_cod" FROM "Personal") THEN
        RAISE EXCEPTION 'Error, el codigo de personal no existe';
    END IF;

    -- Obtener las horas de entrada y salida del horario regular del empleado
    SELECT hor.hora_entrada, hor.hora_salida
    INTO v_hora_entrada_horario, v_hora_salida_horario
    FROM horario hor
    JOIN asignacion asig ON hor.hora_cod = asig.fk_horario
    JOIN "Personal" per ON per."Per_cod" = asig.fk_personal
    WHERE per."Per_cod" = p_per_cod;

    -- Calcular las horas extra para todas las asistencias del usuario
    FOR v_hora_entrada, v_hora_salida IN
        SELECT asis.asis_hora_entrada, asis.asis_hora_salida
        FROM asistencia asis
        JOIN asignacion asig ON asis.fk_asignacion = asig.asig_cod
        JOIN "Personal" per ON asig.fk_personal = per."Per_cod"
        WHERE per."Per_cod" = p_per_cod
        AND asis.asis_fecha_asistida BETWEEN p_fecha_desde AND p_fecha_hasta
    LOOP
        IF v_hora_salida > v_hora_salida_horario THEN
            v_horas_extra := v_hora_salida - v_hora_salida_horario;
            v_total_horas_extra := v_total_horas_extra + FLOOR(EXTRACT(EPOCH FROM v_horas_extra) / 3600);
        END IF;
        IF v_hora_entrada < v_hora_entrada_horario THEN
            v_horas_extra := v_hora_entrada_horario - v_hora_entrada;
            v_total_horas_extra := v_total_horas_extra + FLOOR(EXTRACT(EPOCH FROM v_horas_extra) / 3600);
        END IF;
    END LOOP;

    RETURN QUERY
    SELECT p_per_cod, v_total_horas_extra;
END;
$$ LANGUAGE plpgsql;